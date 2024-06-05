.class final Lcom/tencent/liteav/audio/route/s$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/route/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/route/s$a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/route/s$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/audio/route/s$a$1;->a:Lcom/tencent/liteav/audio/route/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/audio/route/s$a$1;->a:Lcom/tencent/liteav/audio/route/s$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/route/s$a;->e()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/route/s$a$1;->a:Lcom/tencent/liteav/audio/route/s$a;

    iget v3, v2, Lcom/tencent/liteav/audio/route/s$a;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/tencent/liteav/audio/route/s$a;->f:I

    iget-object v2, p0, Lcom/tencent/liteav/audio/route/s$a$1;->a:Lcom/tencent/liteav/audio/route/s$a;

    iget-object v2, v2, Lcom/tencent/liteav/audio/route/s$a;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/liteav/audio/route/s$a$1;->a:Lcom/tencent/liteav/audio/route/s$a;

    iget-object v3, v3, Lcom/tencent/liteav/audio/route/s$a;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/tencent/liteav/audio/route/s$a$1;->a:Lcom/tencent/liteav/audio/route/s$a;

    iget-boolean v2, v2, Lcom/tencent/liteav/audio/route/s$a;->g:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/audio/route/s$a$1;->a:Lcom/tencent/liteav/audio/route/s$a;

    iget-object v2, v2, Lcom/tencent/liteav/audio/route/s$a;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/liteav/audio/route/s$a$1;->a:Lcom/tencent/liteav/audio/route/s$a;

    iget-object v3, v3, Lcom/tencent/liteav/audio/route/s$a;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
