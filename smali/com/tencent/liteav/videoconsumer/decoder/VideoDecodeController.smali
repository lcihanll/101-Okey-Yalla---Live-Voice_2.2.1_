.class public final Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;
.super Lcom/tencent/liteav/videoconsumer/decoder/bl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field final c:Lcom/tencent/liteav/videoconsumer/decoder/e;

.field final d:Lcom/tencent/liteav/videoconsumer/decoder/bi;

.field final e:Z

.field final f:Lcom/tencent/liteav/base/util/l;

.field g:Lcom/tencent/liteav/base/util/r;

.field h:Lcom/tencent/liteav/videoconsumer/decoder/bl;

.field i:Ljava/lang/Object;

.field j:Z

.field k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

.field l:Lorg/json/JSONArray;

.field m:Z

.field n:Z

.field o:Landroid/view/Surface;

.field public final p:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field final r:Lcom/tencent/liteav/videobase/utils/m;

.field s:Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;

.field public final t:Lcom/tencent/liteav/videobase/utils/n;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final v:Lcom/tencent/liteav/videoconsumer/decoder/d;

.field w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

.field private final x:Lcom/tencent/liteav/base/b/a;

.field private y:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

.field private final z:Lcom/tencent/liteav/videoconsumer/decoder/e$d;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 6

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/bl;-><init>()V

    const-string v0, "VideoDecodeController"

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/liteav/base/b/a;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->x:Lcom/tencent/liteav/base/b/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->m:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->n:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->o:Landroid/view/Surface;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->y:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->p:Ljava/util/Deque;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lcom/tencent/liteav/videobase/utils/m;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/utils/m;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/videobase/utils/m;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/tencent/liteav/videoconsumer/decoder/d;

    invoke-direct {v1}, Lcom/tencent/liteav/videoconsumer/decoder/d;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->v:Lcom/tencent/liteav/videoconsumer/decoder/d;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/an;->a()Lcom/tencent/liteav/videoconsumer/decoder/e$d;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->z:Lcom/tencent/liteav/videoconsumer/decoder/e$d;

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->e:Z

    new-instance v2, Lcom/tencent/liteav/videoconsumer/decoder/e;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeIsSoftwareHevcDecoderSupport()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;->isHWHevcDecodeAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string v5, "com.liteav.storage.global"

    invoke-direct {v3, v5}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    const-string v5, "Liteav.Video.android.local.decoder.enable.sw.mediacodec.hevc"

    invoke-virtual {v3, v5}, Lcom/tencent/liteav/base/storage/PersistStorage;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b()Z

    move-result v3

    invoke-direct {v2, v1, p1, v4, v3}, Lcom/tencent/liteav/videoconsumer/decoder/e;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$d;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZZ)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/e;

    new-instance v1, Lcom/tencent/liteav/videoconsumer/decoder/bi;

    invoke-direct {v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/bi;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/bi;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decoder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tencent/liteav/videobase/utils/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Lcom/tencent/liteav/videobase/utils/n;

    new-instance p1, Lcom/tencent/liteav/base/util/l;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/tencent/liteav/base/util/l;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f:Lcom/tencent/liteav/base/util/l;

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsTranscodingMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/u$a;Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;)Landroid/media/MediaCodec;
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v0

    const-string/jumbo v1, "video/hevc"

    const-string/jumbo v2, "video/avc"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Ljava/lang/String;)I

    move-result v0

    iget-boolean v3, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->c:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-boolean v3, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->d:Z

    if-nez v3, :cond_5

    iget-boolean v3, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->a:Z

    if-nez v3, :cond_5

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    iget-object v0, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    iget-object p2, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    invoke-interface {p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/ac;->b(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object p1

    goto :goto_3

    :cond_3
    new-instance p2, Landroid/media/MediaFormat;

    invoke-direct {p2}, Landroid/media/MediaFormat;-><init>()V

    iget v0, p3, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->width:I

    const-string/jumbo v3, "width"

    invoke-virtual {p2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p3, p3, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->height:I

    const-string v0, "height"

    invoke-virtual {p2, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    const-string p1, "mime"

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    invoke-interface {p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/ac;->b(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object p1

    :goto_3
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Preload mediacodec: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Preload mediacodec fail, is low latency:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->d:Z

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is hdr:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->a:Z

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", is use outputbuffer:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", preload mediacodec:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const-string/jumbo v0, "video decoder is null!"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->decode(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    iget-boolean v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/bi;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/bi;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->E:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/bk$a;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g()V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->z:Lcom/tencent/liteav/videoconsumer/decoder/e$d;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v3

    iget-object v4, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, v4}, Lcom/tencent/liteav/videoconsumer/decoder/e$d;->a(ZLjava/nio/ByteBuffer;)Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq p2, v3, :cond_0

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne p2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeIsSoftwareHevcDecoderSupport()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c()V

    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    invoke-direct {v3}, Lcom/tencent/liteav/videoconsumer/decoder/u$a;-><init>()V

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/e;

    invoke-virtual {v5}, Lcom/tencent/liteav/videoconsumer/decoder/e;->b()Z

    move-result v5

    iput-boolean v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->d:Z

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lorg/json/JSONArray;

    iput-object v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->h:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isHDRFrame()Z

    move-result v5

    iput-boolean v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->a:Z

    invoke-direct {p0, v2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->c:Z

    new-instance v5, Lcom/tencent/liteav/base/util/Size;

    iget v6, v2, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->width:I

    iget v7, v2, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->height:I

    invoke-direct {v5, v6, v7}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iput-object v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->e:Lcom/tencent/liteav/base/util/Size;

    iput-boolean v4, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->g:Z

    iput-boolean v4, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->b:Z

    new-instance v5, Lcom/tencent/liteav/videoconsumer/decoder/u;

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v6, v7}, Lcom/tencent/liteav/videoconsumer/decoder/u;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/u$a;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Landroid/media/MediaCodec;)V

    invoke-virtual {v5}, Lcom/tencent/liteav/videoconsumer/decoder/u;->initialize()V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->o:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Landroid/view/Surface;)V

    iput-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne p2, v3, :cond_2

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c()V

    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v6

    invoke-direct {v3, v5, v6}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Z)V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    invoke-interface {v3}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->initialize()V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    invoke-direct {v3}, Lcom/tencent/liteav/videoconsumer/decoder/u$a;-><init>()V

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/e;

    invoke-virtual {v5}, Lcom/tencent/liteav/videoconsumer/decoder/e;->b()Z

    move-result v5

    iput-boolean v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->d:Z

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lorg/json/JSONArray;

    iput-object v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->h:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isHDRFrame()Z

    move-result v5

    iput-boolean v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->a:Z

    invoke-direct {p0, v2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->c:Z

    iget-object v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->videoFormat:Landroid/media/MediaFormat;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->videoFormat:Landroid/media/MediaFormat;

    iput-object v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v5

    iput-boolean v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->b:Z

    new-instance v5, Lcom/tencent/liteav/base/util/Size;

    iget v6, v2, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->width:I

    iget v7, v2, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->height:I

    invoke-direct {v5, v6, v7}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iput-object v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->e:Lcom/tencent/liteav/base/util/Size;

    :goto_0
    new-instance v5, Lcom/tencent/liteav/videoconsumer/decoder/u;

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p0, p1, v3, v2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/u$a;Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;)Landroid/media/MediaCodec;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lcom/tencent/liteav/videoconsumer/decoder/u;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/u$a;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Landroid/media/MediaCodec;)V

    invoke-virtual {v5}, Lcom/tencent/liteav/videoconsumer/decoder/u;->initialize()V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->o:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Landroid/view/Surface;)V

    iput-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    :goto_1
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->s:Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;

    invoke-interface {v3, v5}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->setServerConfig(Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->y:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    invoke-interface {v3, v5}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->setScene(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->i:Ljava/lang/Object;

    invoke-interface {v3, v5, p0}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/bl;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/e;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    invoke-interface {v5}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    move-result-object v5

    sget-object v6, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    const/4 v7, 0x0

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    invoke-interface {v5}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    move-result-object v5

    sget-object v6, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_2
    iput-boolean v4, v3, Lcom/tencent/liteav/videoconsumer/decoder/e;->A:Z

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "open decoder cost time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",update decoder type to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", video "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/bi;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/bi;->a(Lcom/tencent/liteav/videoconsumer/decoder/bk$a;Lcom/tencent/liteav/videobase/common/CodecType;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isHDRFrame()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->n:Z

    return-void
.end method

.method private a(Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;)Z
    .locals 4

    iget-object v0, p1, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->videoFullRangeFlag:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->videoFullRangeFlag:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->colourPrimaries:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->colourPrimaries:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p1, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->transferCharacteristics:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object p1, p1, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->transferCharacteristics:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->m:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->p:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v2, p1}, Lcom/tencent/liteav/videobase/utils/m;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/i;->C:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-interface {v2, v3, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    invoke-static {p0, v0, v1, p2, p3}, Lcom/tencent/liteav/videoconsumer/decoder/au;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;JJ)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videobase/utils/m;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->y:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/e;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/decoder/bl;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/bf;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/bl;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f:Lcom/tencent/liteav/base/util/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "runnable:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is failed to post, handler:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method final b()V
    .locals 15

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->p:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->updateNALTypeAccordingNALHeader()V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/e;

    iget-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->g:J

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    cmp-long v12, v2, v9

    if-eqz v12, :cond_2

    iget-wide v2, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->g:J

    cmp-long v14, v2, v12

    if-nez v14, :cond_2

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto/16 :goto_5

    :cond_2
    iget-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->t:J

    cmp-long v12, v2, v9

    if-nez v12, :cond_3

    iget-wide v2, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->t:J

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->u:Lcom/tencent/liteav/base/b/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/tencent/liteav/base/b/a;->a:J

    :cond_3
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->u:Lcom/tencent/liteav/base/b/a;

    invoke-virtual {v2}, Lcom/tencent/liteav/base/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->t:J

    sub-long/2addr v2, v12

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->v:F

    iget-wide v2, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->t:J

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isIDRFrame()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->k:Z

    if-nez v2, :cond_5

    iput-boolean v11, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->k:Z

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xb

    new-array v3, v3, [Lcom/tencent/liteav/videoconsumer/decoder/e$a;

    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/f;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/f;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v12, v3, v8

    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/j;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/j;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v12, v3, v11

    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/k;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/k;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v12, v3, v5

    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/l;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/l;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v12, v3, v6

    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/m;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/m;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v12, v3, v4

    const/4 v12, 0x5

    new-instance v13, Lcom/tencent/liteav/videoconsumer/decoder/n;

    invoke-direct {v13, v1}, Lcom/tencent/liteav/videoconsumer/decoder/n;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v13, v3, v12

    const/4 v12, 0x6

    new-instance v13, Lcom/tencent/liteav/videoconsumer/decoder/o;

    invoke-direct {v13, v1}, Lcom/tencent/liteav/videoconsumer/decoder/o;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v13, v3, v12

    const/4 v12, 0x7

    new-instance v13, Lcom/tencent/liteav/videoconsumer/decoder/p;

    invoke-direct {v13, v1}, Lcom/tencent/liteav/videoconsumer/decoder/p;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v13, v3, v12

    const/16 v12, 0x8

    new-instance v13, Lcom/tencent/liteav/videoconsumer/decoder/q;

    invoke-direct {v13, v1}, Lcom/tencent/liteav/videoconsumer/decoder/q;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v13, v3, v12

    const/16 v12, 0x9

    new-instance v13, Lcom/tencent/liteav/videoconsumer/decoder/g;

    invoke-direct {v13, v1}, Lcom/tencent/liteav/videoconsumer/decoder/g;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v13, v3, v12

    const/16 v12, 0xa

    new-instance v13, Lcom/tencent/liteav/videoconsumer/decoder/h;

    invoke-direct {v13, v1}, Lcom/tencent/liteav/videoconsumer/decoder/h;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v13, v3, v12

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    if-eq v3, v12, :cond_6

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-eq v3, v12, :cond_6

    new-array v3, v11, [Lcom/tencent/liteav/videoconsumer/decoder/e$a;

    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/i;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/i;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e;)V

    aput-object v12, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v7

    :cond_7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/liteav/videoconsumer/decoder/e$a;

    invoke-interface {v12, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$a;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    move-result-object v12

    if-eqz v12, :cond_7

    if-eqz v3, :cond_a

    iget-object v13, v12, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    invoke-static {v13}, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a(Lcom/tencent/liteav/videoconsumer/decoder/e$c;)I

    move-result v13

    iget-object v14, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    invoke-static {v14}, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a(Lcom/tencent/liteav/videoconsumer/decoder/e$c;)I

    move-result v14

    if-gt v13, v14, :cond_9

    iget-object v13, v12, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    invoke-static {v13}, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a(Lcom/tencent/liteav/videoconsumer/decoder/e$c;)I

    move-result v13

    iget-object v14, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    invoke-static {v14}, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a(Lcom/tencent/liteav/videoconsumer/decoder/e$c;)I

    move-result v14

    if-ne v13, v14, :cond_8

    iget-object v13, v12, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iget v13, v13, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->mPriority:I

    iget-object v14, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iget v14, v14, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->mPriority:I

    if-le v13, v14, :cond_8

    goto :goto_1

    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v13, 0x1

    :goto_2
    if-eqz v13, :cond_7

    :cond_a
    move-object v3, v12

    goto :goto_0

    :cond_b
    if-eqz v3, :cond_c

    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    if-eq v2, v12, :cond_c

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", mUsingDecoderType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", mSwitchReason = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v3, :cond_d

    goto :goto_3

    :cond_d
    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {v3, v2, v12}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    :goto_3
    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->d:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    if-ne v2, v12, :cond_f

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq v2, v12, :cond_e

    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iget v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->mPriority:I

    iget-object v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iget v12, v12, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->mPriority:I

    if-lt v2, v12, :cond_e

    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iput-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    iput-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v12, Lcom/tencent/liteav/videobase/videobase/h$b;->g:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "UsingDecoderType:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v12, v7, v13}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto :goto_5

    :cond_f
    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    if-ne v2, v12, :cond_11

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq v2, v12, :cond_10

    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iget v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->mPriority:I

    iget-object v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iget v12, v12, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->mPriority:I

    if-lt v2, v12, :cond_10

    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iput-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    iput-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v12, Lcom/tencent/liteav/videobase/videobase/h$b;->g:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "UsingDecoderType:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v12, v7, v13}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto :goto_5

    :cond_11
    :goto_4
    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/e$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto :goto_5

    :cond_12
    iget-boolean v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->k:Z

    if-eqz v2, :cond_13

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto :goto_5

    :cond_13
    iget v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->l:I

    add-int/2addr v2, v11

    iput v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->l:I

    iget v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->l:I

    const/16 v3, 0x28

    if-le v2, v3, :cond_14

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string v3, "decoding too many frame(>40) without output! request key frame now."

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v8, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->l:I

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto :goto_5

    :cond_14
    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    :goto_5
    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    if-ne v2, v3, :cond_1b

    iget-wide v2, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->g:J

    cmp-long v14, v2, v12

    if-nez v14, :cond_15

    iget-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->w:J

    cmp-long v12, v2, v9

    if-eqz v12, :cond_15

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v2

    iget-wide v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->w:J

    sub-long/2addr v2, v12

    const-wide/16 v12, 0x5dc

    cmp-long v14, v2, v12

    if-ltz v14, :cond_15

    const/4 v2, 0x1

    goto :goto_6

    :cond_15
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_16

    iget-boolean v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->z:Z

    if-nez v2, :cond_16

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto/16 :goto_8

    :cond_16
    iput-boolean v11, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->z:Z

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isIDRFrame()Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto :goto_8

    :cond_17
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne v2, v3, :cond_18

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$b;->t:Lcom/tencent/liteav/videobase/videobase/h$b;

    const-string v12, ""

    invoke-interface {v2, v3, v7, v12}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne v2, v3, :cond_19

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lt v2, v6, :cond_19

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    iput-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iput-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$b;->g:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "UsingDecoderType:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v7, v12}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    goto :goto_7

    :cond_19
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne v2, v3, :cond_1a

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string v7, "hardware decoder stuck, count:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    :goto_7
    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string v7, "decoder thread stuck, switch decode type, instruction:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_8
    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/e$1;->a:[I

    invoke-virtual {v2}, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v11, :cond_1e

    if-eq v3, v5, :cond_1e

    if-eq v3, v6, :cond_1e

    if-eq v3, v4, :cond_1c

    goto :goto_9

    :cond_1c
    iget-wide v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->g:J

    iget-wide v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1d

    iget v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    add-int/2addr v3, v11

    iput v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    iput-wide v9, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->w:J

    goto :goto_9

    :cond_1d
    iget-wide v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->w:J

    cmp-long v5, v3, v9

    if-nez v5, :cond_1f

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->w:J

    goto :goto_9

    :cond_1e
    iput v11, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v3

    iput-boolean v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->e:Z

    iput-wide v9, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->w:J

    iput-boolean v8, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->z:Z

    :cond_1f
    :goto_9
    iget-wide v3, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-wide v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->g:J

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$1;->a:[I

    invoke-virtual {v2}, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->i()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->p:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v2, "decoder error"

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->e()Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/bk$a;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    :pswitch_3
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/bk$a;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    :pswitch_4
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/bk$a;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    :pswitch_6
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    :cond_20
    :goto_a
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ac;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->w:Lcom/tencent/liteav/videoconsumer/decoder/ac;

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->p:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final e()Lcom/tencent/liteav/videoconsumer/decoder/bk$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/aq;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final g()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->stop()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bk;->uninitialize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Lcom/tencent/liteav/videoconsumer/decoder/bk;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/m;->b()V

    return-void
.end method

.method final h()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->x:Lcom/tencent/liteav/base/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->a()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/av;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ay;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/az;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
