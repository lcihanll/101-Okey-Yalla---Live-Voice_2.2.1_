.class final synthetic Lcom/tencent/liteav/videoconsumer/consumer/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/consumer/b;

.field private final b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/y;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/y;->b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/consumer/y;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/y;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/y;->a:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/y;->b:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->s:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/consumer/b$b;->a:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->a:Ljava/lang/String;

    const-string v1, "appendNALPacket ignored packet. status is  stoped."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->q:Z

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isHDRFrame()Z

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isHDRFrame()Z

    move-result v2

    iput-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->q:Z

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stream change to hdr: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->q:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->e:Lcom/tencent/liteav/videoconsumer/renderer/t;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->e:Lcom/tencent/liteav/videoconsumer/renderer/t;

    iget-boolean v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->q:Z

    new-instance v4, Lcom/tencent/liteav/videoconsumer/renderer/w;

    invoke-direct {v4, v2, v3}, Lcom/tencent/liteav/videoconsumer/renderer/w;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/t;Z)V

    invoke-virtual {v2, v4}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->p:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f()V

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->C:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videoconsumer/decoder/bl;)V

    :cond_2
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->e:Lcom/tencent/liteav/videoconsumer/renderer/t;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->e:Lcom/tencent/liteav/videoconsumer/renderer/t;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Z)V

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->e:Lcom/tencent/liteav/videoconsumer/renderer/t;

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    :cond_3
    iget-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->p:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->p:Z

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "video consumer receive first video frame"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$b;->D:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->h:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->f:Lcom/tencent/liteav/videoconsumer/consumer/a;

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->x:Ljava/lang/Object;

    sget v4, Lcom/tencent/liteav/videoconsumer/consumer/a$a;->a:I

    iget-object v4, v2, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v2, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    const-string v5, "set shared EGLContext. sharedContext = "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/liteav/videoconsumer/consumer/a;->d()V

    iput-object v3, v2, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoconsumer/consumer/a;->c()V

    :cond_5
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->f:Lcom/tencent/liteav/videoconsumer/consumer/a;

    iget v3, v2, Lcom/tencent/liteav/videoconsumer/consumer/a;->b:I

    sget v4, Lcom/tencent/liteav/videoconsumer/consumer/a$a;->b:I

    if-eq v3, v4, :cond_6

    invoke-virtual {v2}, Lcom/tencent/liteav/videoconsumer/consumer/a;->c()V

    :cond_6
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->f:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-virtual {v3}, Lcom/tencent/liteav/videoconsumer/consumer/a;->b()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/tencent/liteav/videoconsumer/decoder/bb;

    invoke-direct {v4, v2, v3}, Lcom/tencent/liteav/videoconsumer/decoder/bb;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    :cond_7
    new-instance v2, Lcom/tencent/liteav/videoconsumer/consumer/b$a;

    iget-wide v3, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget v5, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/liteav/videoconsumer/consumer/b$a;-><init>(JI)V

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->A:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->r:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/utils/f;->a()V

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->v:Lcom/tencent/liteav/videoconsumer/decoder/d;

    if-eqz v1, :cond_8

    iget-object v3, v2, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/util/Map;

    iget-wide v4, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->consumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    monitor-enter v0

    :try_start_1
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->p:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_9
    :goto_1
    new-instance v1, Lcom/tencent/liteav/videoconsumer/decoder/bh;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/bh;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
