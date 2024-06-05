.class public final Lcom/tencent/liteav/videoconsumer/decoder/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/ad$b;
.implements Lcom/tencent/liteav/videoconsumer/decoder/bk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/decoder/u$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field c:Landroid/view/Surface;

.field d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

.field volatile e:Lcom/tencent/liteav/base/util/CustomHandler;

.field f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

.field g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

.field h:Z

.field final i:Lcom/tencent/liteav/videobase/utils/h;

.field final j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

.field k:Landroid/media/MediaCodec;

.field private final l:Lcom/tencent/liteav/base/b/b;

.field private m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

.field private n:Z

.field private o:Z

.field private p:J


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/u$a;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Landroid/media/MediaCodec;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HardwareVideoDecoder"

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->l:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->c:Landroid/view/Surface;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->n:Z

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->h:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->p:J

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/videoconsumer/decoder/u$a;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/u$a;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iput-object p3, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->k:Landroid/media/MediaCodec;

    iget-boolean p3, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->b:Z

    if-eqz p3, :cond_0

    const-string/jumbo p3, "video/hevc"

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "video/avc"

    :goto_0
    iget-object v0, p1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    new-instance p3, Lcom/tencent/liteav/base/util/Size;

    iget-object v0, p1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p3, v0, v1}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iput-object p3, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->e:Lcom/tencent/liteav/base/util/Size;

    iget-object p1, p1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    const-string p3, "mime"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    new-instance p1, Lcom/tencent/liteav/videobase/utils/h;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/h;-><init>()V

    iget-object v0, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    iput-object v0, p1, Lcom/tencent/liteav/videobase/utils/h;->a:Landroid/media/MediaFormat;

    iget-object v0, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->h:Lorg/json/JSONArray;

    iput-object v0, p1, Lcom/tencent/liteav/videobase/utils/h;->b:Lorg/json/JSONArray;

    iput-object p3, p1, Lcom/tencent/liteav/videobase/utils/h;->e:Ljava/lang/String;

    iget-object p3, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->e:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p3}, Lcom/tencent/liteav/base/util/Size;->getWidth()I

    move-result p3

    iput p3, p1, Lcom/tencent/liteav/videobase/utils/h;->c:I

    iget-object p2, p2, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->e:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p2}, Lcom/tencent/liteav/base/util/Size;->getHeight()I

    move-result p2

    iput p2, p1, Lcom/tencent/liteav/videobase/utils/h;->d:I

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->i:Lcom/tencent/liteav/videobase/utils/h;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->n:Z

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->n:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    const-string v1, "Stop decoder"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->n:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->p:J

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/aa;->a(Lcom/tencent/liteav/videoconsumer/decoder/u;Landroid/view/Surface;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->k()V

    :cond_0
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->n:Z

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-wide v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->p:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->p:J

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->n:Z

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->p:J

    const-wide/16 v3, 0x1e

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->d()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    const-string v0, "drain more frame success"

    invoke-static {p2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->l:Lcom/tencent/liteav/base/b/b;

    const-string v1, "drainDecodedFrame"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception from drain decoded frame, message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p2, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iget-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->o:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->j()V

    :cond_6
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->o:Z

    :cond_7
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/u;->b(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    return-void
.end method

.method final b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    const-string v1, "MediaCodec is stopped."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->c()V

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->d()Z

    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    if-ne v1, v0, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    :goto_0
    return-void

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    const-string v2, "decode failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->n:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoDecode: decode error, restart decoder message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->b(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    return-void
.end method

.method final b(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->c()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->i()V

    :cond_0
    return-void
.end method

.method public final decode(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->m:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/x;->a(Lcom/tencent/liteav/videoconsumer/decoder/u;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/w;->a(Lcom/tencent/liteav/videoconsumer/decoder/u;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/bk$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    return-object v0
.end method

.method public final initialize()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HardwareVideoDecoder_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method public final setScene(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/z;->a(Lcom/tencent/liteav/videoconsumer/decoder/u;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setServerConfig(Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ab;->a(Lcom/tencent/liteav/videoconsumer/decoder/u;Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start(Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/bl;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/v;->a(Lcom/tencent/liteav/videoconsumer/decoder/u;Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/bl;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/y;->a(Lcom/tencent/liteav/videoconsumer/decoder/u;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final uninitialize()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize quitLooper"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->quitLooper()V

    :cond_0
    return-void
.end method
