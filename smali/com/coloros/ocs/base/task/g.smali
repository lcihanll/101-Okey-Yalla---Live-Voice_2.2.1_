.class final Lcom/coloros/ocs/base/task/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/coloros/ocs/base/task/f;

.field private b:Lcom/coloros/ocs/base/task/Task;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/task/f;Lcom/coloros/ocs/base/task/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/ocs/base/task/g;->a:Lcom/coloros/ocs/base/task/f;

    iput-object p2, p0, Lcom/coloros/ocs/base/task/g;->b:Lcom/coloros/ocs/base/task/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/ocs/base/task/g;->a:Lcom/coloros/ocs/base/task/f;

    iget-object v0, v0, Lcom/coloros/ocs/base/task/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/g;->a:Lcom/coloros/ocs/base/task/f;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/task/f;->a()Lcom/coloros/ocs/base/task/OnCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/ocs/base/task/g;->a:Lcom/coloros/ocs/base/task/f;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/task/f;->a()Lcom/coloros/ocs/base/task/OnCompleteListener;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/ocs/base/task/g;->b:Lcom/coloros/ocs/base/task/Task;

    invoke-interface {v1, v2}, Lcom/coloros/ocs/base/task/OnCompleteListener;->onComplete(Lcom/coloros/ocs/base/task/Task;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
