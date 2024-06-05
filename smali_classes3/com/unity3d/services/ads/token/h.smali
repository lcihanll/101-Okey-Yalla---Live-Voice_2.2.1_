.class public Lcom/unity3d/services/ads/token/h;
.super Ljava/lang/Object;
.source "TokenStorage.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/concurrent/ConcurrentLinkedQueue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I = 0x0

.field private static d:Z = false

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/services/ads/token/h;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/ads/token/h;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/unity3d/services/ads/token/h;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    sput v1, Lcom/unity3d/services/ads/token/h;->c:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->sdkTokenDidBecomeAvailableWithConfig(Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/ads/token/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/unity3d/services/ads/token/h;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/unity3d/services/ads/token/a;->a()Lcom/unity3d/services/ads/token/a;

    move-result-object p0

    sget-object v0, Lcom/unity3d/services/core/device/j;->b:Lcom/unity3d/services/core/device/j;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/ads/token/a;->b(Lcom/unity3d/services/core/device/j;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/unity3d/services/ads/token/h;->a(Ljava/lang/Boolean;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/token/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sput v2, Lcom/unity3d/services/ads/token/h;->c:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    sget-object v1, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/unity3d/services/ads/token/h;->a(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/unity3d/services/ads/token/a;->a()Lcom/unity3d/services/ads/token/a;

    move-result-object p0

    sget-object v0, Lcom/unity3d/services/core/device/j;->b:Lcom/unity3d/services/core/device/j;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/ads/token/a;->b(Lcom/unity3d/services/core/device/j;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/ads/token/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/unity3d/services/ads/token/h;->d:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()V
    .locals 5

    new-instance v0, Lcom/unity3d/services/ads/token/d;

    sget-object v1, Lcom/unity3d/services/ads/token/h;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/unity3d/services/core/device/reader/a;

    new-instance v3, Lcom/unity3d/services/core/configuration/ConfigurationReader;

    invoke-direct {v3}, Lcom/unity3d/services/core/configuration/ConfigurationReader;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getInstance()Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/unity3d/services/core/device/reader/a;-><init>(Lcom/unity3d/services/core/configuration/ConfigurationReader;Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/services/ads/token/d;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/unity3d/services/core/device/reader/a;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/services/ads/token/h$a;

    invoke-direct {v1}, Lcom/unity3d/services/ads/token/h$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/ads/token/d;->a(Lcom/unity3d/services/ads/token/c;)V

    return-void
.end method

.method public static b(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/token/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    sput v1, Lcom/unity3d/services/ads/token/h;->c:I

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/unity3d/services/ads/token/h;->a(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/unity3d/services/ads/token/a;->a()Lcom/unity3d/services/ads/token/a;

    move-result-object p0

    sget-object v0, Lcom/unity3d/services/core/device/j;->b:Lcom/unity3d/services/core/device/j;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/ads/token/a;->b(Lcom/unity3d/services/core/device/j;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static c()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/unity3d/services/ads/token/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v1, :cond_0

    sget-object v1, Lcom/unity3d/services/ads/token/h;->e:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v1

    sget-object v3, Lcom/unity3d/services/core/webview/b;->r:Lcom/unity3d/services/core/webview/b;

    sget-object v4, Lcom/unity3d/services/ads/token/g;->b:Lcom/unity3d/services/ads/token/g;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_1
    sget-boolean v1, Lcom/unity3d/services/ads/token/h;->d:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v1

    sget-object v4, Lcom/unity3d/services/core/webview/b;->r:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/ads/token/g;->a:Lcom/unity3d/services/ads/token/g;

    new-array v3, v3, [Ljava/lang/Object;

    sget v6, Lcom/unity3d/services/ads/token/h;->c:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/unity3d/services/ads/token/h;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    sget-object v1, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v1

    sget-object v4, Lcom/unity3d/services/core/webview/b;->r:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/ads/token/g;->a:Lcom/unity3d/services/ads/token/g;

    new-array v3, v3, [Ljava/lang/Object;

    sget v6, Lcom/unity3d/services/ads/token/h;->c:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/unity3d/services/ads/token/h;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    sget-object v1, Lcom/unity3d/services/ads/token/h;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
