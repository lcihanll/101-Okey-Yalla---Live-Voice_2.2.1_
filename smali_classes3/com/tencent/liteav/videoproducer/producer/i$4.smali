.class final Lcom/tencent/liteav/videoproducer/producer/i$4;
.super Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/producer/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/producer/i;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i$4;->a:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i$4;->a:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/i;->e(Lcom/tencent/liteav/videoproducer/producer/i;)Lcom/tencent/liteav/videoconsumer/renderer/s;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Lcom/tencent/liteav/videoconsumer/renderer/s;->a(ZLcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    sget-object v0, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->a:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i$4;->a:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/i;->f(Lcom/tencent/liteav/videoproducer/producer/i;)Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i$4;->a:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/i;->f(Lcom/tencent/liteav/videoproducer/producer/i;)Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    :cond_0
    return-void
.end method
