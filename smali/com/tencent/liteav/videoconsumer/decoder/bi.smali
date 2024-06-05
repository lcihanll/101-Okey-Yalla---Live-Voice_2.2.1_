.class public final Lcom/tencent/liteav/videoconsumer/decoder/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/decoder/bi$a;,
        Lcom/tencent/liteav/videoconsumer/decoder/bi$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field final c:Lcom/tencent/liteav/videoconsumer/decoder/bi$a;

.field final d:Lcom/tencent/liteav/videoconsumer/decoder/bi$b;

.field final e:Lcom/tencent/liteav/videobase/utils/f;

.field f:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

.field g:Z

.field h:J

.field i:J

.field j:J

.field k:J

.field private l:Z

.field private m:J


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoDecodeControllerStatistics"

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->h:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->i:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->l:Z

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->j:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->m:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->k:J

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;

    invoke-direct {p1, p0, v2}, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/bi;B)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->c:Lcom/tencent/liteav/videoconsumer/decoder/bi$a;

    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;

    invoke-direct {p1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;-><init>(B)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->d:Lcom/tencent/liteav/videoconsumer/decoder/bi$b;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/f;

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/bj;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/bj;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/bi;)V

    const-string/jumbo v1, "videoDecoder"

    invoke-direct {p1, v1, v0}, Lcom/tencent/liteav/videobase/utils/f;-><init>(Ljava/lang/String;Lcom/tencent/liteav/videobase/utils/f$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->e:Lcom/tencent/liteav/videobase/utils/f;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/bi;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->c:Lcom/tencent/liteav/videoconsumer/decoder/bi$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->d:Lcom/tencent/liteav/videoconsumer/decoder/bi$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->e:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->f:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->g:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->l:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->i:J

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isIDRFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->h:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->l:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->E:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    const-string v3, "Start decode first frame"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->a:Ljava/lang/String;

    const-string v1, "received first I frame."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->g:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->i:J

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->c:Lcom/tencent/liteav/videoconsumer/decoder/bi$a;

    iget-wide v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->a(J)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/decoder/bk$a;Lcom/tencent/liteav/videobase/common/CodecType;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->f:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v0, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->c:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecoderProperty;

    invoke-direct {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecoderProperty;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/bk$a;Lcom/tencent/liteav/videobase/common/CodecType;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/i;->B:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-interface {p1, p2, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method final b()V
    .locals 9

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->m:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->m:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->m:J

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->m:Lcom/tencent/liteav/videobase/videobase/i;

    iget-wide v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    iput-wide v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/bi;->j:J

    :cond_1
    return-void
.end method
