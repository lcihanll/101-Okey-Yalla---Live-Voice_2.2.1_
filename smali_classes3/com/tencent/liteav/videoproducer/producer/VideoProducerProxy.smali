.class public Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private final mProducer:Lcom/tencent/liteav/videoproducer/producer/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/i;-><init>(Landroid/content/Context;ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    return-void
.end method

.method public constructor <init>(ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 1

    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;-><init>(Landroid/content/Context;ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    return-void
.end method

.method public static getEncodeAbility()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;
    .locals 1

    invoke-static {}, Lcom/tencent/liteav/videoproducer/producer/i;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ackRPSRecvFrameIndex(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/z;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;II)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public appendCustomCaptureFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isFrameDataValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getProducerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    move-result-object v1

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->setCaptureTimestamp(J)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/ah;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v0, "appendCustomCaptureFrame: frame is not valid."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBeautyProcessor()Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/producer/i;->d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    return-object v0
.end method

.method public getVideoPreprocessor()Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/tencent/liteav/videoproducer/producer/i;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string/jumbo v2, "videoproducer already initialized."

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "videoProducer_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/tencent/liteav/videoproducer/producer/i;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/liteav/videoproducer/producer/i;->f:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/producer/i;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/j;->a(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;->runAndWaitDone(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pauseCapture()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/ay;->a(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestKeyFrame(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/aa;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resumeCapture()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/az;->a(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCameraFocusPosition(II)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/r;->a(Lcom/tencent/liteav/videoproducer/producer/i;II)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public setCaptureParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/aw;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCustomRenderListener(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/aj;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCustomVideoProcessListener(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/al;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/k;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEncodeMirrorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/o;->a(Lcom/tencent/liteav/videoproducer/producer/i;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEncodeParams(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/v;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEncodeRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/p;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/base/util/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEncodeStrategy(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/n;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setGSensorMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/s;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHWEncoderDeviceRelatedParams(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/q;->a(Lcom/tencent/liteav/videoproducer/producer/i;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setHomeOrientation(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/t;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPausedImage(Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/videoproducer/producer/i;Landroid/graphics/Bitmap;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPerspectiveCorrectionPoints([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/e;->a([F)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/tencent/liteav/videobase/utils/e;->a([F)Ljava/util/List;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/w;->a(Lcom/tencent/liteav/videoproducer/producer/i;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRPSIFrameFPS(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/videoproducer/producer/x;->a(Lcom/tencent/liteav/videoproducer/producer/i;ILcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRPSNearestREFSize(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/videoproducer/producer/y;->a(Lcom/tencent/liteav/videoproducer/producer/i;ILcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRenderMirrorMode(Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/ab;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRenderRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/ad;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/base/util/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRenderScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/ac;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/af;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWatermark(Landroid/graphics/Bitmap;FFF)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoproducer/producer/ak;->a(Lcom/tencent/liteav/videoproducer/producer/i;Landroid/graphics/Bitmap;FFF)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startCapture(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "type: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, v1, :cond_3

    instance-of v1, p3, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CaptureParams is not CameraCaptureParams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, v1, :cond_5

    instance-of v1, p3, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    const/16 v2, 0x15

    if-ge v1, v2, :cond_5

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$a;->h:Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v3, "not support screen capture"

    invoke-interface {v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CaptureParams is not ScreenCaptureParams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, v1, :cond_7

    instance-of v1, p3, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CaptureParams is not VirtualCameraParams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/aq;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startCustomCapture()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/ag;->a(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startEncodeStream(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/l;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopCapture(I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/av;->a(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/Runnable;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopCustomCapture()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/ai;->a(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopEncodeStream(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/m;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public takeSnapshot(Lcom/tencent/liteav/videobase/common/SnapshotSourceType;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/ae;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/common/SnapshotSourceType;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public uninitialize()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerProxy;->mProducer:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/u;->a(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
