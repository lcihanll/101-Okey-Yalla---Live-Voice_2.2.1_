.class public Lcom/unity3d/services/ads/token/a;
.super Ljava/lang/Object;
.source "AsyncTokenStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/ads/token/a$d;
    }
.end annotation


# static fields
.field private static a:Lcom/unity3d/services/ads/token/a;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/services/ads/token/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lcom/unity3d/services/core/configuration/Configuration;

.field private g:Lcom/unity3d/services/ads/token/b;

.field private final h:Lcom/unity3d/services/core/properties/b;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/token/b;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/token/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/ads/token/a;->d:Z

    iput-boolean v0, p0, Lcom/unity3d/services/ads/token/a;->e:Z

    new-instance v0, Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/Configuration;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/token/a;->f:Lcom/unity3d/services/core/configuration/Configuration;

    new-instance v0, Lcom/unity3d/services/core/properties/b;

    invoke-direct {v0}, Lcom/unity3d/services/core/properties/b;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/token/a;->h:Lcom/unity3d/services/core/properties/b;

    iput-object p2, p0, Lcom/unity3d/services/ads/token/a;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/unity3d/services/ads/token/a;->g:Lcom/unity3d/services/ads/token/b;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/ads/token/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/services/ads/token/a;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/unity3d/ads/IUnityAdsTokenListener;)Lcom/unity3d/services/ads/token/a$d;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/unity3d/services/ads/token/a$d;

    invoke-direct {v0, p0}, Lcom/unity3d/services/ads/token/a$d;-><init>(Lcom/unity3d/services/ads/token/a;)V

    iput-object p1, v0, Lcom/unity3d/services/ads/token/a$d;->a:Lcom/unity3d/ads/IUnityAdsTokenListener;

    new-instance p1, Lcom/unity3d/services/ads/token/a$a;

    invoke-direct {p1, p0, v0}, Lcom/unity3d/services/ads/token/a$a;-><init>(Lcom/unity3d/services/ads/token/a;Lcom/unity3d/services/ads/token/a$d;)V

    iput-object p1, v0, Lcom/unity3d/services/ads/token/a$d;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/unity3d/services/ads/token/a;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/unity3d/services/ads/token/a;->c:Landroid/os/Handler;

    iget-object v1, v0, Lcom/unity3d/services/ads/token/a$d;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/unity3d/services/ads/token/a;->f:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/Configuration;->getTokenTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a()Lcom/unity3d/services/ads/token/a;
    .locals 3

    sget-object v0, Lcom/unity3d/services/ads/token/a;->a:Lcom/unity3d/services/ads/token/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/ads/token/a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/unity3d/services/ads/token/a;-><init>(Lcom/unity3d/services/ads/token/b;Landroid/os/Handler;)V

    sput-object v0, Lcom/unity3d/services/ads/token/a;->a:Lcom/unity3d/services/ads/token/a;

    :cond_0
    sget-object v0, Lcom/unity3d/services/ads/token/a;->a:Lcom/unity3d/services/ads/token/a;

    return-object v0
.end method

.method private a(Lcom/unity3d/services/ads/token/a$d;)V
    .locals 2

    iget-boolean v0, p1, Lcom/unity3d/services/ads/token/a$d;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/unity3d/services/ads/token/a$d;->c:Z

    iget-boolean v0, p0, Lcom/unity3d/services/ads/token/a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/services/ads/token/a;->f:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/Experiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Experiments;->isNativeTokenEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/services/ads/token/a;->g:Lcom/unity3d/services/ads/token/b;

    new-instance v1, Lcom/unity3d/services/ads/token/a$b;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/ads/token/a$b;-><init>(Lcom/unity3d/services/ads/token/a;Lcom/unity3d/services/ads/token/a$d;)V

    invoke-interface {v0, v1}, Lcom/unity3d/services/ads/token/b;->a(Lcom/unity3d/services/ads/token/c;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/unity3d/services/ads/token/h;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/unity3d/services/core/device/j;->b:Lcom/unity3d/services/core/device/j;

    invoke-direct {p0, p1, v0, v1}, Lcom/unity3d/services/ads/token/a;->a(Lcom/unity3d/services/ads/token/a$d;Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private declared-synchronized a(Lcom/unity3d/services/ads/token/a$d;Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/token/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/unity3d/services/ads/token/a$d;->a:Lcom/unity3d/ads/IUnityAdsTokenListener;

    invoke-interface {v0, p2}, Lcom/unity3d/ads/IUnityAdsTokenListener;->onUnityAdsTokenReady(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/ads/token/a;->c:Landroid/os/Handler;

    iget-object p1, p1, Lcom/unity3d/services/ads/token/a$d;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Failed to remove callback from a handler"

    invoke-static {v0, p1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/unity3d/services/ads/token/a;->a(Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/unity3d/services/ads/token/a;Lcom/unity3d/services/ads/token/a$d;Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/ads/token/a;->a(Lcom/unity3d/services/ads/token/a$d;Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/unity3d/services/core/device/j;)V
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/token/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unity3d/services/ads/token/h;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/unity3d/services/ads/token/a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/ads/token/a$d;

    invoke-direct {p0, v1, v0, p1}, Lcom/unity3d/services/ads/token/a;->a(Lcom/unity3d/services/ads/token/a$d;Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object p1

    invoke-direct {p0}, Lcom/unity3d/services/ads/token/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/request/metrics/j;->d(Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/services/core/request/metrics/c;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object p1

    invoke-direct {p0}, Lcom/unity3d/services/ads/token/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/request/metrics/j;->c(Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/services/core/request/metrics/c;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/ads/token/a$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const-string p1, "Unknown token type passed to sendTokenMetrics"

    invoke-static {p1}, Lcom/unity3d/services/core/log/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/token/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/token/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/Experiments;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unity3d/services/ads/token/a;->h:Lcom/unity3d/services/core/properties/b;

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->e()Lcom/unity3d/services/core/properties/d$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/services/core/properties/b;->a(Lcom/unity3d/services/core/properties/d$a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object p1

    invoke-direct {p0}, Lcom/unity3d/services/ads/token/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/request/metrics/j;->a(Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/services/core/request/metrics/c;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object p1

    invoke-direct {p0}, Lcom/unity3d/services/ads/token/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/request/metrics/j;->b(Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/services/core/request/metrics/c;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized b(Lcom/unity3d/ads/IUnityAdsTokenListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/unity3d/services/core/properties/d;->e()Lcom/unity3d/services/core/properties/d$a;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/properties/d$a;->d:Lcom/unity3d/services/core/properties/d$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {p1, v2}, Lcom/unity3d/ads/IUnityAdsTokenListener;->onUnityAdsTokenReady(Ljava/lang/String;)V

    sget-object p1, Lcom/unity3d/services/core/device/j;->b:Lcom/unity3d/services/core/device/j;

    invoke-direct {p0, v2, p1}, Lcom/unity3d/services/ads/token/a;->a(Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/unity3d/services/core/properties/d;->e()Lcom/unity3d/services/core/properties/d$a;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/properties/d$a;->a:Lcom/unity3d/services/core/properties/d$a;

    if-ne v0, v1, :cond_1

    invoke-interface {p1, v2}, Lcom/unity3d/ads/IUnityAdsTokenListener;->onUnityAdsTokenReady(Ljava/lang/String;)V

    sget-object p1, Lcom/unity3d/services/core/device/j;->b:Lcom/unity3d/services/core/device/j;

    invoke-direct {p0, v2, p1}, Lcom/unity3d/services/ads/token/a;->a(Ljava/lang/String;Lcom/unity3d/services/core/device/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/token/a;->a(Lcom/unity3d/ads/IUnityAdsTokenListener;)Lcom/unity3d/services/ads/token/a$d;

    move-result-object p1

    iget-boolean v0, p0, Lcom/unity3d/services/ads/token/a;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/token/a;->a(Lcom/unity3d/services/ads/token/a$d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/unity3d/services/ads/token/a;->f:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/token/a;->a(Lcom/unity3d/services/core/configuration/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/services/ads/token/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/ads/token/a;->g:Lcom/unity3d/services/ads/token/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/unity3d/services/core/device/reader/a;

    new-instance v1, Lcom/unity3d/services/core/configuration/ConfigurationReader;

    invoke-direct {v1}, Lcom/unity3d/services/core/configuration/ConfigurationReader;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getInstance()Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/device/reader/a;-><init>(Lcom/unity3d/services/core/configuration/ConfigurationReader;Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/unity3d/services/ads/token/d;

    invoke-direct {v2, v1, v0}, Lcom/unity3d/services/ads/token/d;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/unity3d/services/core/device/reader/a;)V

    iput-object v2, p0, Lcom/unity3d/services/ads/token/a;->g:Lcom/unity3d/services/ads/token/b;

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/Experiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Experiments;->shouldNativeTokenAwaitPrivacy()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/unity3d/services/ads/token/e;

    iget-object v2, p0, Lcom/unity3d/services/ads/token/a;->g:Lcom/unity3d/services/ads/token/b;

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getPrivacyRequestWaitTimeout()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/unity3d/services/ads/token/e;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/unity3d/services/ads/token/b;I)V

    iput-object v0, p0, Lcom/unity3d/services/ads/token/a;->g:Lcom/unity3d/services/ads/token/b;

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/unity3d/services/ads/token/a;->b:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/ads/token/a$d;

    invoke-direct {p0, v0}, Lcom/unity3d/services/ads/token/a;->a(Lcom/unity3d/services/ads/token/a$d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/unity3d/services/core/device/j;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/unity3d/services/ads/token/a;->d:Z

    iget-boolean v0, p0, Lcom/unity3d/services/ads/token/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/token/a;->a(Lcom/unity3d/services/core/device/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
