.class public Lcom/unity3d/services/ads/operation/load/f;
.super Lcom/unity3d/services/ads/operation/load/d;
.source "LoadModuleDecoratorTimeout.java"


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/operation/load/a;Lcom/unity3d/services/core/configuration/ConfigurationReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/operation/load/d;-><init>(Lcom/unity3d/services/ads/operation/load/a;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/load/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2}, Lcom/unity3d/services/core/configuration/ConfigurationReader;->getCurrentConfiguration()Lcom/unity3d/services/core/configuration/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/Experiments;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Experiments;->isNewLifecycleTimer()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unity3d/services/ads/operation/load/f;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/ads/operation/load/f;Lcom/unity3d/services/ads/operation/load/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/operation/load/f;->a(Lcom/unity3d/services/ads/operation/load/h;)V

    return-void
.end method

.method private a(Lcom/unity3d/services/ads/operation/load/h;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/services/ads/operation/load/d;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/request/metrics/a;->e:Lcom/unity3d/services/core/request/metrics/a;

    invoke-virtual {p1}, Lcom/unity3d/services/ads/operation/e;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/services/core/request/metrics/a;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/metrics/c;->a(Lcom/unity3d/services/core/request/metrics/d;)V

    iget-object v0, p1, Lcom/unity3d/services/ads/operation/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/ads/operation/load/d;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->TIMEOUT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UnityAds] Timeout while loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/services/ads/operation/load/h;->a(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/unity3d/services/ads/operation/load/h;)V
    .locals 3

    iget-boolean v0, p0, Lcom/unity3d/services/ads/operation/load/f;->c:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/unity3d/services/core/timer/a;

    iget-object v1, p1, Lcom/unity3d/services/ads/operation/e;->d:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/Configuration;->getLoadTimeout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/unity3d/services/ads/operation/load/f$a;

    invoke-direct {v2, p0, p1}, Lcom/unity3d/services/ads/operation/load/f$a;-><init>(Lcom/unity3d/services/ads/operation/load/f;Lcom/unity3d/services/ads/operation/load/h;)V

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/timer/a;-><init>(Ljava/lang/Integer;Lcom/unity3d/services/core/timer/g;)V

    iput-object v0, p1, Lcom/unity3d/services/ads/operation/e;->g:Lcom/unity3d/services/core/timer/a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/timer/a;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/ads/operation/load/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unity3d/services/ads/operation/load/f$b;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/ads/operation/load/f$b;-><init>(Lcom/unity3d/services/ads/operation/load/f;Lcom/unity3d/services/ads/operation/load/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/operation/load/d;->c(Ljava/lang/String;)Lcom/unity3d/services/ads/operation/load/b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/unity3d/services/ads/operation/load/b;->b()Lcom/unity3d/services/ads/operation/load/h;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/unity3d/services/ads/operation/load/f;->c:Z

    if-eqz v1, :cond_3

    iget-object p1, v0, Lcom/unity3d/services/ads/operation/e;->g:Lcom/unity3d/services/core/timer/a;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/unity3d/services/core/timer/a;->a()V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/unity3d/services/ads/operation/load/b;->b()Lcom/unity3d/services/ads/operation/load/h;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/ads/operation/e;->e:Landroid/os/ConditionVariable;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-interface {p1}, Lcom/unity3d/services/ads/operation/load/b;->b()Lcom/unity3d/services/ads/operation/load/h;

    move-result-object p1

    iget-object p1, p1, Lcom/unity3d/services/ads/operation/e;->e:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/ads/operation/load/h;)V
    .locals 2

    invoke-virtual {p0}, Lcom/unity3d/services/ads/operation/load/d;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/b;->a()Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/metrics/c;->a(Lcom/unity3d/services/core/request/metrics/d;)V

    invoke-virtual {p2}, Lcom/unity3d/services/ads/operation/e;->e()V

    invoke-direct {p0, p2}, Lcom/unity3d/services/ads/operation/load/f;->b(Lcom/unity3d/services/ads/operation/load/h;)V

    invoke-super {p0, p1, p2}, Lcom/unity3d/services/ads/operation/load/d;->a(Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/ads/operation/load/h;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/unity3d/services/core/webview/bridge/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/unity3d/services/ads/operation/load/h;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/ads/operation/load/f;->a(Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/ads/operation/load/h;)V

    return-void
.end method

.method public onUnityAdsAdLoaded(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/operation/load/f;->d(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/unity3d/services/ads/operation/load/d;->onUnityAdsAdLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/operation/load/f;->d(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/services/ads/operation/load/d;->onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    return-void
.end method
