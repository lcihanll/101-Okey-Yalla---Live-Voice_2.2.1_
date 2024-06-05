.class final Lcom/tencent/liteav/videoconsumer/consumer/b$4;
.super Lcom/tencent/liteav/videoconsumer/decoder/bl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/consumer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoconsumer/consumer/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/bl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/consumer/z;->a(Lcom/tencent/liteav/videoconsumer/consumer/b$4;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-object p2, p2, Lcom/tencent/liteav/videoconsumer/consumer/b;->s:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    sget-object p3, Lcom/tencent/liteav/videoconsumer/consumer/b$b;->b:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-object p2, p2, Lcom/tencent/liteav/videoconsumer/consumer/b;->z:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videobase/utils/m;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-object p2, p1, Lcom/tencent/liteav/videoconsumer/consumer/b;->B:Ljava/lang/Runnable;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method
