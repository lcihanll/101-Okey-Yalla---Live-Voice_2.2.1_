.class public Lcom/unity3d/services/core/misc/a;
.super Ljava/lang/Object;
.source "EventSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/unity3d/services/core/timer/d;

.field b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/unity3d/services/core/misc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/services/core/misc/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/lang/Integer;Lcom/unity3d/services/core/timer/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/services/core/timer/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/misc/a;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/unity3d/services/core/misc/a$a;

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/misc/a$a;-><init>(Lcom/unity3d/services/core/misc/a;)V

    invoke-interface {p3, p2, p1, v0}, Lcom/unity3d/services/core/timer/e;->a(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/services/core/timer/f;)Lcom/unity3d/services/core/timer/d;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/services/core/misc/a;->a:Lcom/unity3d/services/core/timer/d;

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/misc/a;->a:Lcom/unity3d/services/core/timer/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unity3d/services/core/timer/c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/misc/a;->a:Lcom/unity3d/services/core/timer/d;

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/core/misc/a;->a:Lcom/unity3d/services/core/timer/d;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/timer/c;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/services/core/misc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/misc/b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/services/core/misc/a;->b:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/services/core/misc/a;->a:Lcom/unity3d/services/core/timer/d;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/unity3d/services/core/misc/a;->c:Lcom/unity3d/services/core/misc/b;

    invoke-direct {p0}, Lcom/unity3d/services/core/misc/a;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/misc/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/core/misc/a;->c:Lcom/unity3d/services/core/misc/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/core/misc/a;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/misc/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/core/misc/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/services/core/misc/a;->e()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/services/core/misc/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/misc/a;->c:Lcom/unity3d/services/core/misc/b;

    return-void
.end method
