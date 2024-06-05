.class public final synthetic Lcom/tencent/liteav/videoconsumer/decoder/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field private final b:Lcom/tencent/liteav/videobase/common/CodecType;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videobase/common/CodecType;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bd;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/bd;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    iput-wide p3, p0, Lcom/tencent/liteav/videoconsumer/decoder/bd;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bd;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bd;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    iget-wide v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/bd;->c:J

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const-string v1, "current android version not support preload MediaCodec"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v4, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v1, v4, :cond_1

    const-string/jumbo v1, "video/hevc"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "video/avc"

    :goto_0
    const/16 v4, 0x440

    const/16 v5, 0x780

    invoke-static {v1, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    invoke-interface {v4}, Lcom/tencent/liteav/videoconsumer/decoder/ac;->a()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    :cond_2
    new-instance v4, Lcom/tencent/liteav/videoconsumer/decoder/aj;

    invoke-direct {v4}, Lcom/tencent/liteav/videoconsumer/decoder/aj;-><init>()V

    iput-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    invoke-interface {v4, v1}, Lcom/tencent/liteav/videoconsumer/decoder/ac;->a(Landroid/media/MediaFormat;)V

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "preloadDecoder success. cost time:(%d)ms"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
