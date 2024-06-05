.class Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
.implements Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeVideoCaptureListener"


# instance fields
.field private mNativeHandler:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    return-void
.end method

.method private static native nativeOnAutoFocusEnabled(JZ)V
.end method

.method private static native nativeOnCaptureError(JILjava/lang/String;)V
.end method

.method private static native nativeOnCaptureFirstFrame(J)V
.end method

.method private static native nativeOnCapturePaused(J)V
.end method

.method private static native nativeOnCaptureResumed(J)V
.end method

.method private static native nativeOnCaptureStopped(J)V
.end method

.method private static native nativeOnFrameAvailable(JLcom/tencent/liteav/videobase/frame/PixelFrame;)V
.end method

.method private static native nativeOnScreenDisplayOrientationChanged(JI)V
.end method

.method private static native nativeOnStartFinish(JZ)V
.end method

.method private static native nativeOnZoomEnabled(JZ)V
.end method


# virtual methods
.method public declared-synchronized notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$a;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    invoke-static {v1, v2, v0, p2}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnCaptureError(JILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string p2, "NativeVideoCaptureListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyError error code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not need transfer to LiteAvCode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide p2, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$b;->k:Lcom/tencent/liteav/videobase/videobase/h$b;

    if-ne p1, p2, :cond_1

    iget-wide p1, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    invoke-static {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnCaptureFirstFrame(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$b;->o:Lcom/tencent/liteav/videobase/videobase/h$b;

    if-ne p1, p2, :cond_2

    iget-wide p1, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    invoke-static {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnCapturePaused(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$b;->p:Lcom/tencent/liteav/videobase/videobase/h$b;

    if-ne p1, p2, :cond_3

    iget-wide p1, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    invoke-static {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnCaptureResumed(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$b;->n:Lcom/tencent/liteav/videobase/videobase/h$b;

    if-ne p1, p2, :cond_4

    iget-wide p1, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    invoke-static {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnCaptureStopped(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onCameraTouchEnable(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnAutoFocusEnabled(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCameraZoomEnable(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnZoomEnabled(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCaptureError()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onCaptureFirstFrame()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnCaptureFirstFrame(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {v0, v1, p2}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnFrameAvailable(JLcom/tencent/liteav/videobase/frame/PixelFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onScreenDisplayOrientationChanged(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(Lcom/tencent/liteav/base/util/Rotation;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnScreenDisplayOrientationChanged(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStartFinish(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->nativeOnStartFinish(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetNativeHandle()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/capture/NativeVideoCaptureListener;->mNativeHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method