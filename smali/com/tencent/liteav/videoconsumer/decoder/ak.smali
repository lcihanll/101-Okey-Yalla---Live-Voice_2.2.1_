.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/aj;

.field private final b:Landroid/media/MediaFormat;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/aj;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ak;->a:Lcom/tencent/liteav/videoconsumer/decoder/aj;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ak;->b:Landroid/media/MediaFormat;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/aj;Landroid/media/MediaFormat;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/ak;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ak;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/aj;Landroid/media/MediaFormat;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ak;->a:Lcom/tencent/liteav/videoconsumer/decoder/aj;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ak;->b:Landroid/media/MediaFormat;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    const-string v3, "start preload MediaCodec begin"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x23

    const/16 v5, 0x80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-static {v5, v5, v4, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->d:Landroid/media/ImageReader;

    const-string v4, "mime"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v8}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->d:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v7, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    const-string v9, "configure preload MediaCodec, format: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    const-string v9, "start preload MediaCodec(%s) success, cost:(%d)ms"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v5, v9, v10}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v4

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v4, v7

    :goto_0
    iget-object v9, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    const-string v10, "start preload MediaCodec failed"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/aj;->b()V

    invoke-virtual {v0, v4}, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a(Landroid/media/MediaCodec;)V

    :goto_1
    monitor-enter v0

    :try_start_2
    iput-object v7, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->c:Landroid/media/MediaCodec;

    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->b:Landroid/media/MediaFormat;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    const-string v1, "start preload MediaCodec end, cost:(%d)ms"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0, v1, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
