.class final Lcom/coloros/ocs/base/task/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/coloros/ocs/base/task/Task;

.field private b:Lcom/coloros/ocs/base/task/c;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/task/c;Lcom/coloros/ocs/base/task/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    iput-object p2, p0, Lcom/coloros/ocs/base/task/l;->a:Lcom/coloros/ocs/base/task/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/ocs/base/task/l;->a:Lcom/coloros/ocs/base/task/Task;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    iget-object v0, v0, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/TaskImpl;->tryCancel()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    iget-object v1, v1, Lcom/coloros/ocs/base/task/c;->a:Lcom/coloros/ocs/base/task/Continuation;

    iget-object v2, p0, Lcom/coloros/ocs/base/task/l;->a:Lcom/coloros/ocs/base/task/Task;

    invoke-interface {v1, v2}, Lcom/coloros/ocs/base/task/Continuation;->then(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    iget-object v2, v2, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v2, v1}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    iget-object v2, v2, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v2, v1}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    iget-object v2, v2, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v2, v1}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    :goto_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    iget-object v1, v1, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v1, v0}, Lcom/coloros/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    return-void
.end method
