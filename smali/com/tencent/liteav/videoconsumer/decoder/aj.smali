.class public final Lcom/tencent/liteav/videoconsumer/decoder/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/ac;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/media/MediaFormat;

.field c:Landroid/media/MediaCodec;

.field d:Landroid/media/ImageReader;

.field private e:Lcom/tencent/liteav/base/util/l;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaCodecPreload"

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    new-instance v1, Lcom/tencent/liteav/base/util/l;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/tencent/liteav/base/util/l;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->e:Lcom/tencent/liteav/base/util/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->e:Lcom/tencent/liteav/base/util/l;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/al;->a(Lcom/tencent/liteav/videoconsumer/decoder/aj;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Landroid/media/MediaCodec;)V
    .locals 6

    const-string v0, "preload MediaCodec release failed."

    const-string v1, "preload MediaCodec release"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    const-string v3, "preload MediaCodec stop"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "preload MediaCodec stop failed."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_0
    :try_start_4
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public final a(Landroid/media/MediaFormat;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->e:Lcom/tencent/liteav/base/util/l;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ak;->a(Lcom/tencent/liteav/videoconsumer/decoder/aj;Landroid/media/MediaFormat;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final b(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->c:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->b:Landroid/media/MediaFormat;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a()V

    return-object v2

    :cond_0
    :try_start_1
    const-string/jumbo v3, "width"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string v5, "mime"

    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "width"

    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    const-string v7, "height"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    const-string v8, "mime"

    invoke-virtual {p1, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get preload MediaCodec, preloadFormat:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", realFormat:"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gt v6, v3, :cond_2

    if-gt v7, v4, :cond_2

    mul-int v6, v6, v7

    mul-int v3, v3, v4

    if-gt v6, v3, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_2
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->c:Landroid/media/MediaCodec;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v2

    :catch_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a()V

    return-object v2

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->d:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/aj;->d:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method
