.class public Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetEncodeSize(J)Lcom/tencent/liteav/base/util/Size;
.end method

.method private static native nativeGetRenderSize(J)Lcom/tencent/liteav/base/util/Size;
.end method

.method private static native nativeSetCameraCaptureMode(JI)V
.end method

.method private static native nativeSetComplexFilterExist(JZ)V
.end method

.method private static native nativeSetEncodeRotation(JI)V
.end method

.method private static native nativeSetEncodeSize(JII)V
.end method

.method private static native nativeSetGSensorMode(JI)V
.end method

.method private static native nativeSetHomeOrientation(JI)V
.end method

.method private static native nativeSetPreprocessRotation(JI)V
.end method

.method private static native nativeSetRealCaptureFrameSize(JIIIZ)V
.end method

.method private static native nativeSetResolutionMode(JI)V
.end method

.method private static native nativeSetScreenAutoRotateEnable(JZ)V
.end method

.method private static native nativeSetScreenDisplayRotation(JI)V
.end method

.method private static native nativeSetSourceType(JI)V
.end method


# virtual methods
.method public getEncodeSize()Lcom/tencent/liteav/base/util/Size;
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeGetEncodeSize(J)Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    return-object v0
.end method

.method public getRenderSize()Lcom/tencent/liteav/base/util/Size;
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeGetRenderSize(J)Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    return-object v0
.end method

.method public initialize()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    :cond_0
    return-void
.end method

.method public setCameraCaptureMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetCameraCaptureMode(JI)V

    :cond_0
    return-void
.end method

.method public setComplexFilterExist(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetComplexFilterExist(JZ)V

    :cond_0
    return-void
.end method

.method public setEncodeRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetEncodeRotation(JI)V

    :cond_0
    return-void
.end method

.method public setEncodeSize(II)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetEncodeSize(JII)V

    :cond_0
    return-void
.end method

.method public setGSensorMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetGSensorMode(JI)V

    :cond_0
    return-void
.end method

.method public setHomeOrientation(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetHomeOrientation(JI)V

    :cond_0
    return-void
.end method

.method public setPreprocessRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetPreprocessRotation(JI)V

    :cond_0
    return-void
.end method

.method public setRealCaptureFrameSize(IILcom/tencent/liteav/base/util/Rotation;Z)V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p3}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result v4

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetRealCaptureFrameSize(JIIIZ)V

    :cond_0
    return-void
.end method

.method public setResolutionMode(Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;->mValue:I

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetResolutionMode(JI)V

    :cond_1
    return-void
.end method

.method public setScreenAutoRotateEnable(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetScreenAutoRotateEnable(JZ)V

    :cond_0
    return-void
.end method

.method public setScreenDisplayRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetScreenDisplayRotation(JI)V

    :cond_0
    return-void
.end method

.method public setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeSetSourceType(JI)V

    :cond_0
    return-void
.end method

.method public uninitialize()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->mNativePtr:J

    :cond_0
    return-void
.end method
