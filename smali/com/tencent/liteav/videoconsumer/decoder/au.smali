.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field private final b:J

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/au;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iput-wide p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/au;->b:J

    iput-wide p4, p0, Lcom/tencent/liteav/videoconsumer/decoder/au;->c:J

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;JJ)Ljava/lang/Runnable;
    .locals 7

    new-instance v6, Lcom/tencent/liteav/videoconsumer/decoder/au;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/videoconsumer/decoder/au;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;JJ)V

    return-object v6
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/au;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-wide v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/au;->b:J

    iget-wide v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/au;->c:J

    iget-boolean v6, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Z

    if-eqz v6, :cond_f

    iget-object v6, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v6, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/e;

    iget v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    if-lez v8, :cond_0

    iget v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    sub-int/2addr v8, v7

    iput v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    :cond_0
    iget-wide v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/e;->h:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_1

    iget-object v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string v9, "decode first frame success"

    invoke-static {v8, v9}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-wide v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/e;->h:J

    const/4 v2, 0x0

    iput v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/e;->o:I

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/bi;

    iget-object v6, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->e:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/utils/f;->a()V

    iget-object v6, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->c:Lcom/tencent/liteav/videoconsumer/decoder/bi$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v12, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->d:J

    sub-long v12, v8, v12

    iget-object v14, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->f:Ljava/util/List;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-wide v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->d:J

    iget-object v14, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->e:Ljava/util/Deque;

    invoke-interface {v14}, Ljava/util/Deque;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->e:Ljava/util/Deque;

    invoke-interface {v14}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    :cond_2
    iget-wide v14, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->b:J

    sub-long v14, v8, v14

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    cmp-long v2, v14, v16

    if-ltz v2, :cond_4

    iput-wide v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->b:J

    iget-object v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v8, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v8, v14

    goto :goto_0

    :cond_3
    iget-object v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v14, v2

    div-long/2addr v8, v14

    iput-wide v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->c:J

    iget-object v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->g:Lcom/tencent/liteav/videoconsumer/decoder/bi;

    iget-object v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v8, Lcom/tencent/liteav/videobase/videobase/i;->D:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v12, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->a:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_5

    iput-wide v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->a:J

    :cond_5
    iget-wide v12, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->a:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    add-long/2addr v12, v14

    cmp-long v2, v8, v12

    if-ltz v2, :cond_8

    iput-wide v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->a:J

    iget-wide v8, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->c:J

    iget-object v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->g:Lcom/tencent/liteav/videoconsumer/decoder/bi;

    iget-object v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi;->f:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v12, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne v2, v12, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_7

    iget-object v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->g:Lcom/tencent/liteav/videoconsumer/decoder/bi;

    iget-object v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v6, Lcom/tencent/liteav/videobase/videobase/i;->i:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v2, v6, Lcom/tencent/liteav/videoconsumer/decoder/bi$a;->g:Lcom/tencent/liteav/videoconsumer/decoder/bi;

    iget-object v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v6, Lcom/tencent/liteav/videobase/videobase/i;->h:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->d:Lcom/tencent/liteav/videoconsumer/decoder/bi$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v12, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->b:J

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-nez v6, :cond_9

    iput-wide v8, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->b:J

    :cond_9
    iget-wide v12, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->a:J

    cmp-long v6, v12, v14

    if-nez v6, :cond_a

    iput-wide v8, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->a:J

    :cond_a
    iget-wide v12, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    add-long/2addr v12, v14

    cmp-long v6, v8, v12

    if-lez v6, :cond_b

    iget-wide v12, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->b:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x2

    invoke-virtual {v6, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    add-long/2addr v12, v14

    cmp-long v6, v8, v12

    if-lez v6, :cond_b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v12, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->a:J

    sub-long v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v6, v13

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    const-string v10, "DecodeSmoothStatistics"

    const-string v11, "frame interval [%d] > %d"

    invoke-static {v10, v11, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v8, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->b:J

    :cond_b
    iput-wide v8, v2, Lcom/tencent/liteav/videoconsumer/decoder/bi$b;->a:J

    invoke-virtual {v3}, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b()V

    iget-boolean v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->g:Z

    if-nez v2, :cond_c

    iput-boolean v7, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->g:Z

    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v6, Lcom/tencent/liteav/videobase/videobase/h$b;->e:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v7, 0x0

    const-string v8, "first frame decoded"

    invoke-interface {v2, v6, v7, v8}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "first frame decoded cost time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->h:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", before decode first frame received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/tencent/liteav/videoconsumer/decoder/bi;->i:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/utils/m;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->i:Ljava/lang/Object;

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->i:Ljava/lang/Object;

    invoke-static {v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->isNoGLContext(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    :cond_d
    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/tencent/liteav/videobase/utils/n;->a(II)V

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/videobase/utils/n;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->v:Lcom/tencent/liteav/videoconsumer/decoder/d;

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/videoconsumer/decoder/d;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz v3, :cond_e

    iget-object v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    invoke-virtual {v1, v2, v4, v5}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V

    :cond_e
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_f
    return-void
.end method
