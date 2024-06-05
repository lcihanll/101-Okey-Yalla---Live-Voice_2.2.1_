.class public Lcom/unity3d/services/core/timer/a;
.super Ljava/lang/Object;
.source "BaseTimer.java"

# interfaces
.implements Lcom/unity3d/services/core/timer/c;
.implements Lcom/unity3d/services/core/lifecycle/b;


# instance fields
.field private final a:Lcom/unity3d/services/core/lifecycle/c;

.field final b:Ljava/lang/Integer;

.field final c:Ljava/lang/Integer;

.field d:Ljava/lang/Integer;

.field private e:Lcom/unity3d/services/core/timer/g;

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/unity3d/services/core/timer/g;)V
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/lifecycle/a;->a()Lcom/unity3d/services/core/lifecycle/c;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/timer/a;-><init>(Ljava/lang/Integer;Lcom/unity3d/services/core/timer/g;Lcom/unity3d/services/core/lifecycle/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/unity3d/services/core/timer/g;Lcom/unity3d/services/core/lifecycle/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/timer/a;->c:Ljava/lang/Integer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unity3d/services/core/timer/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unity3d/services/core/timer/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/unity3d/services/core/timer/a;->b:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/unity3d/services/core/timer/a;->d:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/unity3d/services/core/timer/a;->e:Lcom/unity3d/services/core/timer/g;

    iput-object p3, p0, Lcom/unity3d/services/core/timer/a;->a:Lcom/unity3d/services/core/lifecycle/c;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/unity3d/services/core/lifecycle/c;->a(Lcom/unity3d/services/core/lifecycle/b;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->e:Lcom/unity3d/services/core/timer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unity3d/services/core/timer/g;->a()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/unity3d/services/core/timer/a$a;

    invoke-direct {v1, p0}, Lcom/unity3d/services/core/timer/a$a;-><init>(Lcom/unity3d/services/core/timer/a;)V

    iget-object v2, p0, Lcom/unity3d/services/core/timer/a;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/unity3d/services/core/timer/a;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/timer/a;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: IntervalTimer failed to start due to exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/a;->h()V

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->a:Lcom/unity3d/services/core/lifecycle/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/core/lifecycle/c;->b(Lcom/unity3d/services/core/lifecycle/b;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/timer/a;->e:Lcom/unity3d/services/core/timer/g;

    return-void
.end method

.method public a(Lcom/unity3d/services/core/lifecycle/e;)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/timer/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/core/timer/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/core/timer/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/a;->f()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/a;->e()Z

    iget-object p1, p0, Lcom/unity3d/services/core/timer/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/unity3d/services/core/timer/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/unity3d/services/core/timer/a;->g()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/services/core/timer/a;->c()V

    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/a;->a()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/timer/a;->f:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return v1
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/unity3d/services/core/timer/a;->g()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/unity3d/services/core/timer/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/timer/a;->g:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/core/timer/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method
