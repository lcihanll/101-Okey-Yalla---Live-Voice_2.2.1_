.class public final Lcom/tencent/liteav/videoconsumer/decoder/ae;
.super Lcom/tencent/liteav/videoconsumer/decoder/ad;
.source "SourceFile"


# instance fields
.field i:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/tencent/liteav/videoconsumer/decoder/ad;-><init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V

    const-string p1, "MediaCodecHDRDecoder"

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/media/MediaCodec;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/af;->a(Lcom/tencent/liteav/videoconsumer/decoder/ae;Landroid/view/Surface;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ae;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->a:Ljava/lang/String;

    const-string p2, "meet end of stream."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->c:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->c:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    invoke-interface {p2, p1, p3}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Z)V

    :cond_1
    :goto_0
    return p3
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->i:Landroid/view/Surface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/videoconsumer/decoder/am;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
