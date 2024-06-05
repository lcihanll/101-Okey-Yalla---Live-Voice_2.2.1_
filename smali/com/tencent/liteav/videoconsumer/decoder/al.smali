.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/aj;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/aj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/al;->a:Lcom/tencent/liteav/videoconsumer/decoder/aj;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/aj;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/al;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/al;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/aj;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/al;->a:Lcom/tencent/liteav/videoconsumer/decoder/aj;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->b:Landroid/media/MediaFormat;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/aj;->b()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    monitor-enter v0

    :try_start_1
    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->c:Landroid/media/MediaCodec;

    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->c:Landroid/media/MediaCodec;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, v4}, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a(Landroid/media/MediaCodec;)V

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    const-string v1, "destroy preload MediaCodec success, cost:(%d)ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
