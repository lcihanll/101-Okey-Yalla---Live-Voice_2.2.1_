.class public Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallAttributionIdFetcher"
.end annotation


# static fields
.field public static CONVERSION_DATA_URL:Ljava/lang/String; = "https://%sgcdsdk.%s/install_data/v4.0/"

.field private static final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final $$a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final $$b:Ljava/lang/String;

.field final AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

.field private final getDataFormatter:I

.field private final getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final valueOf:Landroid/app/Application;


# direct methods
.method private static $$b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/appsflyer/AppsFlyerLibCore;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GCD-A02] Calling onConversionFailure with:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/AppsFlyerLibCore;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic $$b(Ljava/util/Map;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GCD-A02] Calling onConversionDataSuccess with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/AppsFlyerLibCore;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "googleplay"

    const-string v1, "playstore"

    const-string v2, "googleplaystore"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->values:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AFExecutor;->valueOf()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    iget-object v0, p1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b:Ljava/lang/String;

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b:Ljava/lang/String;

    iget p1, p1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getDataFormatter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getDataFormatter:I

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AFExecutor;->valueOf()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b:Ljava/lang/String;

    iput v1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getDataFormatter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic AFDateFormat(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b(Ljava/lang/String;)V

    return-void
.end method

.method public static setUrl(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gcdsdk"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->CONVERSION_DATA_URL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "is_first_launch"

    const-string v1, "af_siteid"

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "[GCD-E03] \'isStopTracking\' enabled"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "\'isStopTracking\' enabled"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    if-nez v4, :cond_2

    const-string v0, "[GCD-E06] Context null"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "Context null"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v5, v4}, Lcom/appsflyer/AppsFlyerLibCore;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    :try_start_2
    sget-object v8, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->values:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "-"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v8, "AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_4
    move-object v4, v5

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->CONVERSION_DATA_URL:Ljava/lang/String;

    invoke-static {v9}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?devkey="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&device_id="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    invoke-direct {v4, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/appsflyer/Installation;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v8

    const-string v9, "server_request"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v9, v4, v5}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "[GCD-B01] URL: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/w;->valueOf(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v2, "GET"

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    invoke-virtual {v5, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v2, "Connection"

    const-string v10, "close"

    invoke-virtual {v5, v2, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-object v10, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v10, v5}, Lcom/appsflyer/AppsFlyerLibCore;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v11

    const-string v12, "server_response"

    new-array v13, v3, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    aput-object v10, v13, v7

    invoke-virtual {v11, v12, v4, v13}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v4, 0xc8

    const/16 v11, 0x194

    if-eq v2, v4, :cond_8

    if-ne v2, v11, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x193

    if-eq v2, v0, :cond_6

    const/16 v0, 0x1f4

    if-lt v2, v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getDataFormatter:I

    if-ge v0, v3, :cond_7

    new-instance v0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;

    invoke-direct {v0, p0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;)V

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0, v2}, Lcom/appsflyer/AppsFlyerLibCore;->valueOf(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V

    goto/16 :goto_5

    :cond_7
    const-string v0, "Error connection to server: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "net"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    invoke-virtual {v4, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "retries"

    iget v9, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getDataFormatter:I

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v8

    iget-object v8, v8, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector:Lcom/appsflyer/internal/EventDataCollector;

    const-string v9, "gcd"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Lcom/appsflyer/internal/EventDataCollector;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Attribution data: "

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/w;->valueOf(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10

    invoke-static {v10}, Lcom/appsflyer/AppsFlyerLibCore;->$$a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const-string v8, "iscache"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-ne v2, v11, :cond_9

    const-string v2, "error_reason"

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status_code"

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "af_status"

    const-string v9, "Organic"

    invoke-interface {v4, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "af_message"

    const-string v9, "organic install"

    invoke-interface {v4, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    const-string v9, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v2, v8, v9, v11, v12}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;Ljava/lang/String;J)V

    :cond_a
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "[Invite] Detected App-Invite via channel: "

    const-string v9, "af_channel"

    if-eqz v2, :cond_c

    :try_start_4
    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v2, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :cond_c
    :goto_2
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :cond_d
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "attributionId"

    if-eqz v1, :cond_e

    :try_start_5
    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    invoke-static {v8, v9, v2, v1}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    invoke-static {v1, v8, v2, v10}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v1, Lcom/appsflyer/AppsFlyerLibCore;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-gt v1, v7, :cond_10

    :try_start_6
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->AFDateFormat:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    invoke-static {v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->$$a(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->valueOf:Landroid/app/Application;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v7, "sixtyDayConversionData"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/appsflyer/internal/u; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    move-object v4, v1

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "Exception while trying to fetch attribution data. "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GCD-A02] Calling onConversionDataSuccess with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/AppsFlyerLibCore;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, v4}, Lcom/appsflyer/AppsFlyerConversionListener;->onConversionDataSuccess(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_6
    :try_start_8
    iget v1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getDataFormatter:I

    if-ge v1, v3, :cond_11

    new-instance v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;

    invoke-direct {v1, p0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;)V

    iget-object v3, v1, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v1, v4}, Lcom/appsflyer/AppsFlyerLibCore;->valueOf(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    :goto_8
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const-string v0, "[GCD-A03] Server retrieving attempt finished"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->getInstance:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13
    throw v0

    :cond_14
    :goto_9
    const-string v0, "[GCD-E05] AppsFlyer dev key is missing"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "AppsFlyer dev key is missing"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->$$b(Ljava/lang/String;)V

    return-void
.end method
