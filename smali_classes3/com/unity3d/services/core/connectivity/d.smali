.class public Lcom/unity3d/services/core/connectivity/d;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityNetworkCallback.java"


# static fields
.field private static a:Lcom/unity3d/services/core/connectivity/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    const-class v0, Lcom/unity3d/services/core/connectivity/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/connectivity/d;->a:Lcom/unity3d/services/core/connectivity/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unity3d/services/core/connectivity/d;

    invoke-direct {v1}, Lcom/unity3d/services/core/connectivity/d;-><init>()V

    sput-object v1, Lcom/unity3d/services/core/connectivity/d;->a:Lcom/unity3d/services/core/connectivity/d;

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/connectivity/d;->a:Lcom/unity3d/services/core/connectivity/d;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v0, Lcom/unity3d/services/core/connectivity/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/connectivity/d;->a:Lcom/unity3d/services/core/connectivity/d;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/unity3d/services/core/connectivity/d;->a:Lcom/unity3d/services/core/connectivity/d;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/unity3d/services/core/connectivity/d;->a:Lcom/unity3d/services/core/connectivity/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->a()V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->b()V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->b()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->c()V

    return-void
.end method
