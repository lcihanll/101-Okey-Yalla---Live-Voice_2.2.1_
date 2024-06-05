.class public Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private final mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/b;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    return-void
.end method

.method public static getDecodeAbility()Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecodeAbility;
    .locals 3

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/b;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecodeAbility;

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeIsRpsDecodeSupport()Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecodeAbility;->a:Z

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/b;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecodeAbility;

    return-object v0
.end method


# virtual methods
.method public appendNALPacket(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->consumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->setDeliverTimestamp(J)V

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/y;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "packet or packet.data is null,packet={%s}"

    invoke-static {v0, p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentRenderTimeStamp()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->y:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWritableState()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d()I

    move-result v1

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    if-lez v1, :cond_0

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->e:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->d:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    :goto_0
    iget v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->mValue:I

    return v0
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->a:Ljava/lang/String;

    const-string v2, "initialize videoConsumer"

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/consumer/o;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/consumer/w;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public preloadDecoder(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {p1}, Lcom/tencent/liteav/videobase/common/CodecType;->a(I)Lcom/tencent/liteav/videobase/common/CodecType;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/t;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/common/CodecType;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/consumer/x;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setCustomRenderListener(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoconsumer/consumer/l;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setDecoderStrategy(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/h;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setDisplayTarget(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/i;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setHWDecoderDeviceRelatedParams(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/k;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method public setPerspectiveCorrectionPoints([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/e;->a([F)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/tencent/liteav/videobase/utils/e;->a([F)Ljava/util/List;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/q;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setRenderMirrorEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/e;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Z)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setRenderRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/f;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/base/util/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/g;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setScene(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/d;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setServerConfig(Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/s;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setSharedEGLContext(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSharedEGLContext(object:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/m;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/consumer/u;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Z)V

    return-void
.end method

.method public takeSnapshot(Lcom/tencent/liteav/videobase/common/SnapshotSourceType;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/j;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Lcom/tencent/liteav/videobase/common/SnapshotSourceType;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public uninitialize()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerProxy;->mConsumer:Lcom/tencent/liteav/videoconsumer/consumer/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Z)V

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/consumer/p;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
