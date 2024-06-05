.class public Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;
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

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetEncodeMirrorInfo(J)Lcom/tencent/liteav/videobase/frame/MirrorInfo;
.end method

.method private static native nativeGetPreprocessorMirrorInfo(J)Lcom/tencent/liteav/videobase/frame/MirrorInfo;
.end method

.method private static native nativeGetRenderMirrorInfo(JI)Lcom/tencent/liteav/videobase/frame/MirrorInfo;
.end method

.method private static native nativeSetCaptureMirror(JZZ)V
.end method

.method private static native nativeSetCaptureRotation(JI)V
.end method

.method private static native nativeSetDisplayRotation(JI)V
.end method

.method private static native nativeSetEncodeMirrorByUser(JZ)V
.end method

.method private static native nativeSetFront(JZ)V
.end method

.method private static native nativeSetGSensorMode(JI)V
.end method

.method private static native nativeSetHomeOrientation(JI)V
.end method

.method private static native nativeSetRenderMirrorModeByUser(JI)V
.end method

.method private static native nativeSetResolutionMode(JI)V
.end method

.method private static native nativeSetSensorRotation(JI)V
.end method

.method private static native nativeSetSourceType(JI)V
.end method


# virtual methods
.method public getEncodeMirrorInfo()Lcom/tencent/liteav/videobase/frame/MirrorInfo;
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeGetEncodeMirrorInfo(J)Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/MirrorInfo;-><init>()V

    return-object v0
.end method

.method public getPreprocessorMirrorInfo()Lcom/tencent/liteav/videobase/frame/MirrorInfo;
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeGetPreprocessorMirrorInfo(J)Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/MirrorInfo;-><init>()V

    return-object v0
.end method

.method public getRenderMirrorInfo(Lcom/tencent/liteav/base/util/Rotation;)Lcom/tencent/liteav/videobase/frame/MirrorInfo;
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeGetRenderMirrorInfo(JI)Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/MirrorInfo;-><init>()V

    return-object p1
.end method

.method public initialize()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    :cond_0
    return-void
.end method

.method public setCaptureMirror(ZZ)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetCaptureMirror(JZZ)V

    :cond_0
    return-void
.end method

.method public setCaptureRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetCaptureRotation(JI)V

    :cond_0
    return-void
.end method

.method public setDisplayRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetDisplayRotation(JI)V

    :cond_0
    return-void
.end method

.method public setEncodeMirrorByUser(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetEncodeMirrorByUser(JZ)V

    :cond_0
    return-void
.end method

.method public setFront(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetFront(JZ)V

    :cond_0
    return-void
.end method

.method public setGSensorMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetGSensorMode(JI)V

    :cond_0
    return-void
.end method

.method public setHomeOrientation(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetHomeOrientation(JI)V

    :cond_0
    return-void
.end method

.method public setRenderMirrorModeByUser(Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetRenderMirrorModeByUser(JI)V

    :cond_0
    return-void
.end method

.method public setResolutionMode(Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetResolutionMode(JI)V

    :cond_0
    return-void
.end method

.method public setSensorRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetSensorRotation(JI)V

    :cond_0
    return-void
.end method

.method public setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->mValue:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeSetSourceType(JI)V

    :cond_0
    return-void
.end method

.method public uninitialize()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->mNativePtr:J

    :cond_0
    return-void
.end method
