.class final Lcom/appsflyer/AppsFlyerLibCore$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLibCore;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic $$a:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field private synthetic $$b:Lcom/appsflyer/AppsFlyerLibCore;

.field private synthetic values:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->values:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$a:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBecameBackground(Landroid/content/Context;)V
    .locals 7

    const-string v0, "onBecameBackground"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->$$a(Lcom/appsflyer/AppsFlyerLibCore;J)J

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->getDataFormatter(Lcom/appsflyer/AppsFlyerLibCore;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Lcom/appsflyer/AppsFlyerLibCore;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v2, p1}, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector(Landroid/content/Context;)Lcom/appsflyer/internal/EventDataCollector;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-string v3, "prev_session_dur"

    invoke-virtual {v2, v3, v0, v1}, Lcom/appsflyer/internal/EventDataCollector;->set(Ljava/lang/String;J)V

    const-string v0, "callStatsBackground background call"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/ac;->collectIntentsFromActivities()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/appsflyer/internal/ac;->$$a()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appsflyer/internal/ac;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    :cond_1
    invoke-virtual {v0}, Lcom/appsflyer/internal/ac;->values()V

    goto :goto_0

    :cond_2
    const-string v0, "RD status is OFF"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->values:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lcom/appsflyer/AFExecutor;->$$b(Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/appsflyer/AFExecutor;->$$b(Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "failed to stop Executors"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/appsflyer/AFSensorManager;->$$b(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;

    move-result-object p1

    iget-object v0, p1, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object p1, p1, Lcom/appsflyer/AFSensorManager;->dateFormatUTC:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBecameForeground(Landroid/app/Activity;)V
    .locals 8

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;J)J

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector(Landroid/content/Context;)Lcom/appsflyer/internal/EventDataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/EventDataCollector;->foreground()V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->collectIntentsFromActivities(Lcom/appsflyer/AppsFlyerLibCore;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "init_to_fg"

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLibCore;->$$b(Lcom/appsflyer/AppsFlyerLibCore;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v5, v5, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector:Lcom/appsflyer/internal/EventDataCollector;

    const-string v6, "init_ts"

    invoke-virtual {v5, v6}, Lcom/appsflyer/internal/EventDataCollector;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string v0, "onBecameForeground"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lcom/appsflyer/AFSensorManager;->$$b(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;

    move-result-object v0

    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v3, v0, Lcom/appsflyer/AFSensorManager;->dateFormatUTC:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->values:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Lcom/appsflyer/internal/model/event/Launch;

    invoke-direct {v0}, Lcom/appsflyer/internal/model/event/Launch;-><init>()V

    invoke-static {}, Lcom/appsflyer/AFDeepLinkManager;->getInstance()Lcom/appsflyer/AFDeepLinkManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->params()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v4, v4, Lcom/appsflyer/AppsFlyerLibCore;->eventDataCollector:Lcom/appsflyer/internal/EventDataCollector;

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "ddl_sent"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, v5, p1, v3}, Lcom/appsflyer/AFDeepLinkManager;->$$b(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, v1, Lcom/appsflyer/AFDeepLinkManager;->deepLinkListener:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    if-nez v6, :cond_2

    new-instance v1, Lcom/appsflyer/deeplink/DdlEvent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/appsflyer/deeplink/DdlEvent;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/EventDataCollector;)V

    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DdlEvent;->start()V

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$b:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v0, p1}, Lcom/appsflyer/AFEvent;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->values:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->$$a:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-virtual {v0, v2}, Lcom/appsflyer/AFEvent;->requestListener(Lcom/appsflyer/attribution/AppsFlyerRequestListener;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/AppsFlyerLibCore;->$$a(Lcom/appsflyer/AFEvent;Landroid/app/Activity;)V

    return-void
.end method
