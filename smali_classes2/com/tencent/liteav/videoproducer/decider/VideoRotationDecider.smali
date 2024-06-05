.class public Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;
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

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetEncodeRotation(J)I
.end method

.method private static native nativeGetPreprocessorRotation(JZ)I
.end method

.method private static native nativeGetRenderRotation(J)I
.end method

.method private static native nativeSetCaptureRotation(JI)V
.end method

.method private static native nativeSetDisplayRotation(JI)V
.end method

.method private static native nativeSetEncodeRotationByUser(JI)V
.end method

.method private static native nativeSetFront(JZ)V
.end method

.method private static native nativeSetGSensorMode(JI)V
.end method

.method private static native nativeSetHomeOrientation(JI)V
.end method

.method private static native nativeSetRenderRotationByUser(JI)V
.end method

.method private static native nativeSetResolutionMode(JI)V
.end method

.method private static native nativeSetSensorRotation(JI)V
.end method

.method private static native nativeSetSourceType(JI)V
.end method


# virtual methods
.method public getEncodeRotation()Lcom/tencent/liteav/base/util/Rotation;
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeGetEncodeRotation(J)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    return-object v0
.end method

.method public getPreprocessorRotation(Z)Lcom/tencent/liteav/base/util/Rotation;
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeGetPreprocessorRotation(JZ)I

    move-result p1

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    return-object p1
.end method

.method public getRenderRotation()Lcom/tencent/liteav/base/util/Rotation;
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeGetRenderRotation(J)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    return-object v0
.end method

.method public initialize()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    :cond_0
    return-void
.end method

.method public setCaptureRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetCaptureRotation(JI)V

    :cond_0
    return-void
.end method

.method public setDisplayRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetDisplayRotation(JI)V

    :cond_0
    return-void
.end method

.method public setEncodeRotationByUser(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetEncodeRotationByUser(JI)V

    :cond_0
    return-void
.end method

.method public setFront(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetFront(JZ)V

    :cond_0
    return-void
.end method

.method public setGSensorMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetGSensorMode(JI)V

    :cond_0
    return-void
.end method

.method public setHomeOrientation(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetHomeOrientation(JI)V

    :cond_0
    return-void
.end method

.method public setRenderRotationByUser(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetRenderRotationByUser(JI)V

    :cond_0
    return-void
.end method

.method public setResolutionMode(Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetResolutionMode(JI)V

    :cond_0
    return-void
.end method

.method public setSensorRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetSensorRotation(JI)V

    :cond_0
    return-void
.end method

.method public setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeSetSourceType(JI)V

    :cond_0
    return-void
.end method

.method public uninitialize()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->mNativePtr:J

    :cond_0
    return-void
.end method
