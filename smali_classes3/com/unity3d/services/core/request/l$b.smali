.class final Lcom/unity3d/services/core/request/l$b;
.super Ljava/lang/Object;
.source "WebRequestThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/request/l;->a(Ljava/lang/String;Lcom/unity3d/services/core/request/b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/unity3d/services/core/request/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/services/core/request/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/core/request/l$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/services/core/request/l$b;->b:Lcom/unity3d/services/core/request/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/unity3d/services/core/request/l$b$a;

    invoke-direct {v2, p0, v0}, Lcom/unity3d/services/core/request/l$b$a;-><init>(Lcom/unity3d/services/core/request/l$b;Landroid/os/ConditionVariable;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x0

    :goto_0
    const-string v3, "Exception while resolving host"

    invoke-static {v3, v2}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v3, p0, Lcom/unity3d/services/core/request/l$b;->b:Lcom/unity3d/services/core/request/b;

    iget-object v4, p0, Lcom/unity3d/services/core/request/l$b;->a:Ljava/lang/String;

    sget-object v5, Lcom/unity3d/services/core/request/f;->c:Lcom/unity3d/services/core/request/f;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v5, v2}, Lcom/unity3d/services/core/request/b;->a(Ljava/lang/String;Lcom/unity3d/services/core/request/f;Ljava/lang/String;)V

    :goto_1
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/unity3d/services/core/request/l$b;->b:Lcom/unity3d/services/core/request/b;

    iget-object v1, p0, Lcom/unity3d/services/core/request/l$b;->a:Ljava/lang/String;

    sget-object v2, Lcom/unity3d/services/core/request/f;->d:Lcom/unity3d/services/core/request/f;

    const-string v3, "Timeout"

    invoke-interface {v0, v1, v2, v3}, Lcom/unity3d/services/core/request/b;->a(Ljava/lang/String;Lcom/unity3d/services/core/request/f;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
