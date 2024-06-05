.class final Lcom/tencent/liteav/videoproducer/encoder/ay$1;
.super Lcom/tencent/liteav/videoproducer/encoder/br$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/encoder/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/encoder/ay;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/br$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay$1;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->g(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/c;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay$1;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 12

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->i(Lcom/tencent/liteav/videoproducer/encoder/ay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->j(Lcom/tencent/liteav/videoproducer/encoder/ay;)Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->e(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encode first frame cost time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v4}, Lcom/tencent/liteav/videoproducer/encoder/ay;->k(Lcom/tencent/liteav/videoproducer/encoder/ay;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_8

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    iget-wide v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    iget-wide v3, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;JJ)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->g(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/c;

    move-result-object v0

    const-wide/16 v1, 0x1

    if-eqz p1, :cond_1

    iget-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/c;->b:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/c;->b:J

    :cond_1
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/c;->w:Lcom/tencent/liteav/videoproducer/encoder/ag;

    if-eqz p1, :cond_7

    iget-object v3, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->c:J

    iget v7, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->i:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    iget-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->d:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->d:J

    goto :goto_0

    :cond_3
    iget-wide v5, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->d:J

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v7

    iget-wide v7, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->c:J

    sub-long v7, v3, v7

    long-to-double v7, v7

    div-double/2addr v5, v7

    iput-wide v5, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->b:D

    iput-wide v1, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->d:J

    iput-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->c:J

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->h:Lcom/tencent/liteav/videoproducer/encoder/ag$a;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->h:Lcom/tencent/liteav/videoproducer/encoder/ag$a;

    iget-wide v4, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->b:D

    invoke-interface {v3, v4, v5}, Lcom/tencent/liteav/videoproducer/encoder/ag$a;->a(D)V

    :cond_4
    :goto_0
    iget-object v3, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/c;

    sget-object v4, Lcom/tencent/liteav/videobase/common/c;->b:Lcom/tencent/liteav/videobase/common/c;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    if-eqz v3, :cond_6

    iget-wide v8, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->f:J

    iget v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->j:I

    int-to-long v10, v3

    add-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-lez v3, :cond_6

    iget-wide v8, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->g:J

    long-to-double v8, v8

    const-wide v10, 0x40bf400000000000L    # 8000.0

    mul-double v8, v8, v10

    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->f:J

    sub-long v10, v6, v10

    long-to-double v10, v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double/2addr v8, v10

    double-to-long v8, v8

    iput-wide v8, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->e:J

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->g:J

    iput-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->f:J

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->h:Lcom/tencent/liteav/videoproducer/encoder/ag$a;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->h:Lcom/tencent/liteav/videoproducer/encoder/ag$a;

    iget-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->e:J

    invoke-interface {v3, v6, v7}, Lcom/tencent/liteav/videoproducer/encoder/ag$a;->a(J)V

    :cond_6
    iget-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->g:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->g:J

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/ag;->a:Ljava/lang/String;

    const-string v3, "encodedVideoFrame is null."

    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->l(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/bq;

    move-result-object v0

    if-eqz p1, :cond_9

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->c:Ljava/util/Map;

    iget-wide v4, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->c:Ljava/util/Map;

    iget-wide v4, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->e:J

    iget-wide v1, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->d:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->d:J

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->w:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->e(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "got eos"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->m(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/b;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->h(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay$1;ZI)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->g(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/c;

    move-result-object p0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->u:Z

    iput p2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->v:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->e(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRequestRestart"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->g(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/tencent/liteav/videoproducer/encoder/bp;->a(Lcom/tencent/liteav/videoproducer/encoder/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/bo;->a(Lcom/tencent/liteav/videoproducer/encoder/ay$1;ZI)Ljava/lang/Runnable;

    move-result-object p1

    const-string p2, "onRpsFrameRateChanged"

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 2

    sget-object p1, Lcom/tencent/liteav/videobase/videobase/h$a;->a:Lcom/tencent/liteav/videobase/videobase/h$a;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/bn;->a(Lcom/tencent/liteav/videoproducer/encoder/ay$1;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "onEncodedFail"

    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->e(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onEncodedNAL encoded frame is null."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->f(Lcom/tencent/liteav/videoproducer/encoder/ay;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->e(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onEncodedNAL called when uninitialized!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/bm;->a(Lcom/tencent/liteav/videoproducer/encoder/ay$1;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)Ljava/lang/Runnable;

    move-result-object p1

    const-string p2, ""

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->e(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onOutputFormatChanged: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->h(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
