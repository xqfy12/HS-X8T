.class public final Landroid/net/http/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/AndroidHttpClient$CurlLogger;,
        Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J = 0x0L

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "AndroidHttpClient"

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

.field private static textContentTypes:[Ljava/lang/String;


# instance fields
.field private volatile curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/client/HttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const-wide/16 v0, 0x100

    sput-wide v0, Landroid/net/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "text/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application/json"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/http/AndroidHttpClient;->textContentTypes:[Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/net/http/AndroidHttpClient$1;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClient$1;-><init>()V

    sput-object v0, Landroid/net/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .parameter "ccm"
    .parameter "params"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 172
    new-instance v0, Landroid/net/http/AndroidHttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/http/AndroidHttpClient$2;-><init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    .line 200
    return-void
.end method

.method static synthetic access$000()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Landroid/net/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0, p1}, Landroid/net/http/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkSendMmsSecurityPermission(Lorg/apache/http/HttpRequest;)Z
    .locals 8
    .parameter "request"

    .prologue
    const/4 v4, 0x1

    .line 273
    instance-of v5, p1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 274
    check-cast v3, Lorg/apache/http/client/methods/HttpPost;

    .line 275
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 276
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_1

    .line 301
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    :goto_0
    return v4

    .line 279
    .restart local v0       #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 280
    .local v1, header:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 283
    const-string/jumbo v5, "wxgmms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string/jumbo v5, "wxgmms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v5, "wxgmms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callinguid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Content-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/vnd.wap.mms-message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    :try_start_0
    const-string/jumbo v5, "mobile_safe"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/safe/IMobileSafe$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;

    move-result-object v2

    .line 291
    .local v2, ims:Landroid/safe/IMobileSafe;
    if-eqz v2, :cond_0

    .line 292
    const-string v5, "android.permission.SEND_MMS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/safe/IMobileSafe;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 294
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 296
    .end local v2           #ims:Landroid/safe/IMobileSafe;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 7
    .parameter "data"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    array-length v3, p0

    int-to-long v3, v3

    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 359
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 368
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    return-object v1

    .line 361
    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 362
    .local v0, arr:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 363
    .local v2, zipper:Ljava/io/OutputStream;
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 364
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 365
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 366
    .restart local v1       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    const-string v3, "gzip"

    invoke-virtual {v1, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .locals 2
    .parameter "resolver"

    .prologue
    .line 376
    sget-wide v0, Landroid/net/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 5
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 232
    .local v2, responseStream:Ljava/io/InputStream;
    if-nez v2, :cond_0

    move-object v3, v2

    .line 239
    .end local v2           #responseStream:Ljava/io/InputStream;
    .local v3, responseStream:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 233
    .end local v3           #responseStream:Ljava/io/InputStream;
    .restart local v2       #responseStream:Ljava/io/InputStream;
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 234
    .local v1, header:Lorg/apache/http/Header;
    if-nez v1, :cond_1

    move-object v3, v2

    .end local v2           #responseStream:Ljava/io/InputStream;
    .restart local v3       #responseStream:Ljava/io/InputStream;
    goto :goto_0

    .line 235
    .end local v3           #responseStream:Ljava/io/InputStream;
    .restart local v2       #responseStream:Ljava/io/InputStream;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, contentEncoding:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v3, v2

    .end local v2           #responseStream:Ljava/io/InputStream;
    .restart local v3       #responseStream:Ljava/io/InputStream;
    goto :goto_0

    .line 237
    .end local v3           #responseStream:Ljava/io/InputStream;
    .restart local v2       #responseStream:Ljava/io/InputStream;
    :cond_2
    const-string v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v2           #responseStream:Ljava/io/InputStream;
    .restart local v3       #responseStream:Ljava/io/InputStream;
    move-object v2, v3

    .end local v3           #responseStream:Ljava/io/InputStream;
    .restart local v2       #responseStream:Ljava/io/InputStream;
    :cond_3
    move-object v3, v2

    .line 239
    .end local v2           #responseStream:Ljava/io/InputStream;
    .restart local v3       #responseStream:Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static isBinaryContent(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 12
    .parameter "request"

    .prologue
    const/4 v9, 0x1

    .line 524
    const-string v10, "content-encoding"

    invoke-interface {p0, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 525
    .local v4, headers:[Lorg/apache/http/Header;
    if-eqz v4, :cond_2

    .line 526
    move-object v0, v4

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v0, v5

    .line 527
    .local v3, header:Lorg/apache/http/Header;
    const-string v10, "gzip"

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 543
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v3           #header:Lorg/apache/http/Header;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_0
    :goto_1
    return v9

    .line 526
    .restart local v0       #arr$:[Lorg/apache/http/Header;
    .restart local v3       #header:Lorg/apache/http/Header;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 533
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v3           #header:Lorg/apache/http/Header;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_2
    const-string v10, "content-type"

    invoke-interface {p0, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 534
    if-eqz v4, :cond_0

    .line 535
    move-object v0, v4

    .restart local v0       #arr$:[Lorg/apache/http/Header;
    array-length v7, v0

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    move v6, v5

    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_0

    aget-object v3, v0, v6

    .line 536
    .restart local v3       #header:Lorg/apache/http/Header;
    sget-object v1, Landroid/net/http/AndroidHttpClient;->textContentTypes:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v8, :cond_4

    aget-object v2, v1, v5

    .line 537
    .local v2, contentType:Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 538
    const/4 v9, 0x0

    goto :goto_1

    .line 536
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 535
    .end local v2           #contentType:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_2
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 218
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 9
    .parameter "userAgent"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const v8, 0xea60

    .line 123
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 127
    .local v1, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 129
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    invoke-static {v1, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 138
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 141
    .local v3, sessionCache:Landroid/net/SSLSessionCache;
    :goto_0
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 142
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 143
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 145
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {v8, v3}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 149
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 154
    .local v0, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Landroid/net/http/AndroidHttpClient;

    invoke-direct {v4, v0, v1}, Landroid/net/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v4

    .line 138
    .end local v0           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3           #sessionCache:Landroid/net/SSLSessionCache;
    :cond_0
    new-instance v3, Landroid/net/SSLSessionCache;

    invoke-direct {v3, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 2
    .parameter "dateString"

    .prologue
    .line 561
    invoke-static {p0}, Lcom/android/internal/http/HttpDateTime;->parse(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 17
    .parameter "request"
    .parameter "logAuthToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v3, builder:Ljava/lang/StringBuilder;
    const-string v13, "curl "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v13, "-X "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .local v1, arr$:[Lorg/apache/http/Header;
    array-length v9, v1

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v7, v1, v8

    .line 468
    .local v7, header:Lorg/apache/http/Header;
    if-nez p1, :cond_1

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Authorization"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Cookie"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 467
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 473
    :cond_1
    const-string v13, "--header \""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v13, "\" "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 478
    .end local v7           #header:Lorg/apache/http/Header;
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    .line 483
    .local v12, uri:Ljava/net/URI;
    move-object/from16 v0, p0

    instance-of v13, v0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v13, :cond_3

    move-object/from16 v13, p0

    .line 484
    check-cast v13, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v10

    .line 485
    .local v10, original:Lorg/apache/http/HttpRequest;
    instance-of v13, v10, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v13, :cond_3

    .line 486
    check-cast v10, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v10           #original:Lorg/apache/http/HttpRequest;
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    .line 490
    :cond_3
    const-string v13, "\""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    const-string v13, "\""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    move-object/from16 v0, p0

    instance-of v13, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v13, :cond_4

    move-object/from16 v5, p0

    .line 495
    check-cast v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 497
    .local v5, entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 498
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 499
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    const-wide/16 v15, 0x400

    cmp-long v13, v13, v15

    if-gez v13, :cond_6

    .line 500
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 501
    .local v11, stream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 503
    invoke-static/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->isBinaryContent(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 504
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, base64:Ljava/lang/String;
    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "echo \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' | base64 -d > /tmp/$$.bin; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v13, " --data-binary @/tmp/$$.bin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .end local v2           #base64:Ljava/lang/String;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v11           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 508
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    .restart local v11       #stream:Ljava/io/ByteArrayOutputStream;
    :cond_5
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, entityString:Ljava/lang/String;
    const-string v13, " --data-ascii \""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 514
    .end local v6           #entityString:Ljava/lang/String;
    .end local v11           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_6
    const-string v13, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 251
    :cond_0
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    .line 435
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "level"

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 423
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level is out of range [2..7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_2
    new-instance v0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILandroid/net/http/AndroidHttpClient$1;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    .line 428
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 339
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 345
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 327
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 333
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "target"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    sget-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->checkSendMmsSecurityPermission(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The app do not have permission SEND_MMS"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    sget-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->checkSendMmsSecurityPermission(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The app do not have permission SEND_MMS 2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 204
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 205
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "AndroidHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 209
    :cond_0
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
