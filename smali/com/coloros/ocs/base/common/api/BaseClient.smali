.class public abstract Lcom/coloros/ocs/base/common/api/BaseClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/ocs/base/common/api/Api$Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/common/api/BaseClient$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IBinder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/common/api/Api$Client;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "BaseClient"


# instance fields
.field volatile b:I

.field c:Landroid/content/Context;

.field d:Lcom/coloros/ocs/base/common/CapabilityInfo;

.field e:Lcom/coloros/ocs/base/common/api/BaseClient$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/BaseClient<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field f:Lcom/coloros/ocs/base/common/api/e;

.field g:Lcom/coloros/ocs/base/common/api/b;

.field h:Lcom/coloros/ocs/base/IServiceBroker;

.field private i:Landroid/os/Looper;

.field private j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/coloros/ocs/base/common/api/a;

.field private l:I

.field private m:Z

.field private n:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->j:Ljava/util/Queue;

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    const/4 v0, 0x3

    iput v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->l:I

    new-instance v0, Lcom/coloros/ocs/base/common/api/BaseClient$2;

    invoke-direct {v0, p0}, Lcom/coloros/ocs/base/common/api/BaseClient$2;-><init>(Lcom/coloros/ocs/base/common/api/BaseClient;)V

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->n:Landroid/os/IBinder$DeathRecipient;

    const-string v0, "null reference"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->c:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/os/Looper;

    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->i:Landroid/os/Looper;

    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/a;->a(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/api/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->k:Lcom/coloros/ocs/base/common/api/a;

    sget-object p1, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "build client, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->getClientName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->getClientName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/ocs/base/common/api/BaseClient;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;
    .locals 0

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/api/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->k:Lcom/coloros/ocs/base/common/api/a;

    return-object p0
.end method

.method private a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->setErrorCode(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->setErrorCode(I)V

    :cond_1
    return-void
.end method

.method private a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;Z)V
    .locals 3

    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "add taskListenerHolder to queue,but whether is connect "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Z)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    iput p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->l:I

    :cond_0
    sget-object p1, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v0, "connect"

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    new-instance v0, Lcom/coloros/ocs/base/common/api/BaseClient$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/ocs/base/common/api/BaseClient$a;-><init>(Lcom/coloros/ocs/base/common/api/BaseClient;B)V

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/coloros/ocs/base/common/api/BaseClient;->e()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect state "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/ocs/base/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->f()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/ocs/base/common/api/BaseClient;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->n:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static b(I)Lcom/coloros/ocs/base/common/CapabilityInfo;
    .locals 7

    new-instance v6, Lcom/coloros/ocs/base/common/AuthResult;

    const/4 v0, 0x0

    new-array v5, v0, [B

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/coloros/ocs/base/common/AuthResult;-><init>(Ljava/lang/String;III[B)V

    new-instance p0, Lcom/coloros/ocs/base/common/CapabilityInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/coloros/ocs/base/common/CapabilityInfo;-><init>(Ljava/util/List;ILcom/coloros/ocs/base/common/AuthResult;)V

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/IServiceBroker;
    .locals 0

    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/CapabilityInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/coloros/ocs/base/common/api/BaseClient;)I
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    return v0
.end method

.method private static e()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.opencapabilityservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v2, "packageName = "

    const-string v3, "com.coloros.ocs.opencapabilityservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic f(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/api/BaseClient$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    return-object v0
.end method

.method private f()V
    .locals 2

    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v1, "retry"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->l:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->l:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->b(I)Lcom/coloros/ocs/base/common/CapabilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {p0, v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(I)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->f:Lcom/coloros/ocs/base/common/api/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/e;->a()V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic g(Lcom/coloros/ocs/base/common/api/BaseClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->m:Z

    return p0
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v1, "disconnect service."

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    iget-boolean v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 2

    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v1, "handleAuthenticateFailure"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Landroid/os/Handler;)V

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    invoke-virtual {p1, v0}, Lcom/coloros/ocs/base/common/api/b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final a(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lcom/coloros/ocs/base/common/api/b;

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->i:Landroid/os/Looper;

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->k:Lcom/coloros/ocs/base/common/api/a;

    invoke-direct {p1, v0, v1}, Lcom/coloros/ocs/base/common/api/b;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/a;)V

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    return-void

    :cond_0
    new-instance v0, Lcom/coloros/ocs/base/common/api/b;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->k:Lcom/coloros/ocs/base/common/api/a;

    invoke-direct {v0, p1, v1}, Lcom/coloros/ocs/base/common/api/b;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/a;)V

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eq v0, p1, :cond_2

    sget-object p1, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string/jumbo v0, "the new handler looper is not the same as the old one."

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public addQueue(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;Z)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V

    return-void

    :cond_2
    iget v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;Z)V

    return-void

    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;Z)V

    return-void
.end method

.method final b()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v1, "handleQue"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;

    invoke-direct {p0, v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string/jumbo v1, "task queue is end"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final c()V
    .locals 4

    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v1, "onReconnectSucceed"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->getClientName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.0.1"

    invoke-interface {v1, v2, v3}, Lcom/coloros/ocs/base/IServiceBroker;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/common/CapabilityInfo;->setBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->b()V

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->a()V

    return-void
.end method

.method public connect()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Z)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v1, "disconnect service."

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    :cond_0
    return-void
.end method

.method public getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClientName()Ljava/lang/String;
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->i:Landroid/os/Looper;

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    invoke-direct {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->g()V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getVersion()I

    move-result v0

    return v0
.end method

.method public getRemoteService()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/coloros/ocs/base/common/api/BaseClient;->g()V

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    iget v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isConnecting()Z
    .locals 2

    iget v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClearListener(Lcom/coloros/ocs/base/common/api/e;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->f:Lcom/coloros/ocs/base/common/api/e;

    return-void
.end method

.method public setOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    new-instance p2, Lcom/coloros/ocs/base/common/ConnectionResult;

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/coloros/ocs/base/common/ConnectionResult;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;->onConnectionFailed(Lcom/coloros/ocs/base/common/ConnectionResult;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Landroid/os/Handler;)V

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    iput-object p1, p2, Lcom/coloros/ocs/base/common/api/b;->b:Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;

    :cond_1
    return-void
.end method

.method public setOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;->onConnectionSucceed()V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Landroid/os/Handler;)V

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    iput-object p1, p2, Lcom/coloros/ocs/base/common/api/b;->a:Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;

    :cond_1
    return-void
.end method
