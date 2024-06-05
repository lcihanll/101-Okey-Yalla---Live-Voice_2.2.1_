.class final synthetic Lcom/tencent/liteav/videoconsumer/consumer/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/consumer/b;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/v;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/v;->b:Z

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/consumer/b;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/consumer/v;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/v;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/b;Z)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/v;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/v;->b:Z

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->a:Ljava/lang/String;

    const-string v3, "Stop"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->s:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/consumer/b$b;->a:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->b:Lcom/tencent/liteav/base/util/l;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/util/l;->a(I)V

    sget-object v2, Lcom/tencent/liteav/videoconsumer/consumer/b$b;->a:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    iput-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->s:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->p:Z

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->r:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->y:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    invoke-virtual {v3}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f()V

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/liteav/videoconsumer/renderer/r;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Z)V

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->d:Lcom/tencent/liteav/videoconsumer/renderer/s;

    instance-of v4, v4, Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-virtual {v5, v4}, Lcom/tencent/liteav/videoconsumer/renderer/s;->b(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->f:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a()V

    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->z:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/utils/m;->b()V

    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->A:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->x:Ljava/lang/Object;

    iput v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->u:I

    iput v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->v:I

    iput-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->q:Z

    :cond_2
    return-void
.end method
