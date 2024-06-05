.class public abstract Lcom/coloros/ocs/base/common/api/ColorApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/api/Api$ApiOptions;",
        "R:",
        "Lcom/coloros/ocs/base/common/api/ColorApi;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/coloros/ocs/base/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/coloros/ocs/base/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;"
        }
    .end annotation
.end field

.field private d:Lcom/coloros/ocs/base/common/api/c;

.field private e:Lcom/coloros/ocs/base/internal/ClientSettings;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/common/api/Api$ApiOptions;Lcom/coloros/ocs/base/internal/ClientSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;TO;",
            "Lcom/coloros/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/a/b;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->a:Lcom/coloros/ocs/base/common/api/Api$ApiOptions;

    iput-object p4, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/c;->a(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/common/api/Api$ApiOptions;Lcom/coloros/ocs/base/internal/ClientSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;TO;",
            "Lcom/coloros/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/a/b;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->a:Lcom/coloros/ocs/base/common/api/Api$ApiOptions;

    iput-object p4, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/c;->a(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/internal/ClientSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;",
            "Lcom/coloros/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/a/b;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/c;->a(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    return-void
.end method


# virtual methods
.method public addOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;)Lcom/coloros/ocs/base/common/api/ColorApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Lcom/coloros/ocs/base/common/api/ColorApi;->addOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/ColorApi;

    move-result-object p1

    return-object p1
.end method

.method public addOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/ColorApi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V

    return-object p0
.end method

.method public addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;)Lcom/coloros/ocs/base/common/api/ColorApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Lcom/coloros/ocs/base/common/api/ColorApi;->addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/ColorApi;

    move-result-object p1

    return-object p1
.end method

.method public addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/ColorApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V

    return-object p0
.end method

.method protected addThis2Cache()V
    .locals 2

    const-string v0, "color api add to cache"

    invoke-static {v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {v0, p0, v1}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    return-void
.end method

.method protected checkExist()Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    const-string v1, "com.coloros.ocs.opencapabilityservice"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected disconnect()V
    .locals 3

    const-string v0, "color api disconnect"

    invoke-static {v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    const-string v1, "ColorApiManager"

    const-string v2, "handleDisconnect"

    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/ocs/base/common/api/c;->a:Lcom/coloros/ocs/base/common/a;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/coloros/ocs/base/common/api/c;->a:Lcom/coloros/ocs/base/common/a;

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/common/a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected doRegisterListener(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Looper;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
            "TTResult;>;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "color doRegisterListener"

    invoke-static {v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    new-instance v1, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/task/TaskImpl;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)V

    invoke-static {p0, v1}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V

    return-object v0
.end method

.method protected doRegisterListener(Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
            "TTResult;>;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/coloros/ocs/base/common/api/ColorApi;->doRegisterListener(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method protected getApi()Lcom/coloros/ocs/base/common/api/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    return-object v0
.end method

.method protected getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;
    .locals 1

    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->c(Lcom/coloros/ocs/base/common/api/ColorApi;)Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteService()Landroid/os/IBinder;
    .locals 1

    const-string v0, "getRemoteService"

    invoke-static {v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteVersion()I
    .locals 1

    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->b(Lcom/coloros/ocs/base/common/api/ColorApi;)I

    move-result v0

    return v0
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasFeature(Ljava/lang/String;)Z
.end method

.method protected abstract init()V
.end method

.method protected isConnected()Z
    .locals 1

    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->d(Lcom/coloros/ocs/base/common/api/ColorApi;)Z

    move-result v0

    return v0
.end method

.method protected releaseClientKey()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/c;->b(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V

    return-void
.end method
