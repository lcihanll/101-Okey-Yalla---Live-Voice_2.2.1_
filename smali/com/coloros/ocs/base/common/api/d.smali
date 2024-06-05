.class public Lcom/coloros/ocs/base/common/api/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/ocs/base/common/api/ColorApiClient;


# static fields
.field private static final a:Ljava/lang/String; = "d"


# instance fields
.field private b:Ljava/util/concurrent/locks/Lock;

.field private c:Lcom/coloros/ocs/base/common/api/Api;

.field private d:Lcom/coloros/ocs/base/common/api/Api$Client;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/common/api/Api$ApiOptions;Lcom/coloros/ocs/base/internal/ClientSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->b:Ljava/util/concurrent/locks/Lock;

    sget-object v0, Lcom/coloros/ocs/base/common/api/d;->a:Ljava/lang/String;

    const-string v1, "init color client impl"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/d;->c:Lcom/coloros/ocs/base/common/api/Api;

    invoke-virtual {p2}, Lcom/coloros/ocs/base/common/api/Api;->getClientBuilder()Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p4, p3}, Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/coloros/ocs/base/internal/ClientSettings;Ljava/lang/Object;)Lcom/coloros/ocs/base/common/api/Api$Client;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    return-void
.end method


# virtual methods
.method public addQueue(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/coloros/ocs/base/common/api/Api$Client;->addQueue(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 2

    sget-object v0, Lcom/coloros/ocs/base/common/api/d;->a:Ljava/lang/String;

    const-string v1, "connect()"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getApi()Lcom/coloros/ocs/base/common/api/Api;
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->c:Lcom/coloros/ocs/base/common/api/Api;

    return-object v0
.end method

.method public getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteService()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->getRemoteService()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteVersion()I
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->getMinApkVersion()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->isConnected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/Api$Client;->isConnecting()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClearListener(Lcom/coloros/ocs/base/common/api/e;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/coloros/ocs/base/common/api/Api$Client;->setOnClearListener(Lcom/coloros/ocs/base/common/api/e;)V

    :cond_0
    return-void
.end method

.method public setOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/coloros/ocs/base/common/api/Api$Client;->setOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public setOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/d;->d:Lcom/coloros/ocs/base/common/api/Api$Client;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/coloros/ocs/base/common/api/Api$Client;->setOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
