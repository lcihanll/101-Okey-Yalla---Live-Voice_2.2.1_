.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/b;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/c;->a:Lcom/tencent/liteav/videoconsumer/decoder/b;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/b;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/c;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/c;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/b;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/c;->a:Lcom/tencent/liteav/videoconsumer/decoder/b;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;->isHWHevcDecodeAllowed()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videobase/common/MediaCodecAbility;->isDecoderSupportHevc()Z

    move-result v1

    :goto_0
    new-instance v3, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string v4, "com.liteav.storage.global"

    invoke-direct {v3, v4}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    const-string v4, "Liteav.Video.android.local.decoder.enable.hw.hevc"

    invoke-virtual {v3, v4, v1}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;I)V

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/b;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecodeAbility;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a()Z

    move-result v4

    iput-boolean v4, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecodeAbility;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;->isHWHevcDecodeAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tencent/liteav/videobase/common/MediaCodecAbility;->isMediaCodecSWHevcDecodeSupport()Z

    move-result v2

    :goto_1
    const-string v0, "Liteav.Video.android.local.decoder.enable.sw.mediacodec.hevc"

    invoke-virtual {v3, v0, v2}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v1, "Liteav.Video.android.local.decoder.avc.color.format"

    invoke-virtual {v3, v1, v0}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;I)V

    :cond_2
    const-string/jumbo v0, "video/hevc"

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v1, "Liteav.Video.android.local.decoder.hevc.color.format"

    invoke-virtual {v3, v1, v0}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;I)V

    :cond_3
    invoke-virtual {v3}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
