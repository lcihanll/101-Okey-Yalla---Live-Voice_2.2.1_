.class public Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/tencent/liteav/videoproducer/capture/CameraEventCallback;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final CONSECUTIVE_GOOD_HEALTH_FPS_COUNT_THRESHOLD:I = 0x5

.field private static final CONSECUTIVE_LOW_FPS_COUNT_THRESHOLD:I = 0x3

.field private static final DELAY_FOR_RESTART_CAMERA:I = 0x7d0

.field private static final FPS_INCREMENT_WHEN_LOW_FPS:I = 0x5

.field private static final HOLD_POOL_MAX_SIZE:I = 0x1

.field private static final LOW_FPS_CHECK_START_DELAY_TIME_MS:I = 0x1388

.field private static final LOW_FPS_HEALTH_THRESHOLD:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "CameraCaptureSingleton"

.field private static final USE_DEFAULT_FRONT_CAMERA:Z = true

.field private static volatile sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton; = null

.field private static sIsRestartedCameraDueToLowFps:Z = false


# instance fields
.field private mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

.field private volatile mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

.field private final mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

.field private mConsecutiveGoodHealthFpsCount:I

.field private mConsecutiveLowFpsCount:I

.field protected mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

.field protected mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field private mEnableCameraFpsCorrectionLogic:Z

.field private mEnableTapToFocus:Z

.field private mEnableZoom:Z

.field private final mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mExposureCompensation:F

.field protected mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private mIsCameraAutoFocusFaceModeSupported:Z

.field private mIsCameraSuccessfullyOpened:Z

.field private mIsFirstFrameCaptured:Z

.field private mIsFocusPositionInPreviewSupported:Z

.field private mIsTorchSupported:Z

.field private mIsZoomSupported:Z

.field private mLastSecondCapturedFrameCount:I

.field private final mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

.field private final mLowFpsCheckTimer:Lcom/tencent/liteav/base/util/r;

.field private final mMatrix:[F

.field private mMaxZoomLevel:I

.field private mNeedNotifyStartFinish:Z

.field private mOESTextureId:I

.field protected mPausedCount:I

.field private mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private final mRestartCameraRunnable:Ljava/lang/Runnable;

.field private final mSequenceTaskRunner:Lcom/tencent/liteav/base/util/l;

.field private mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field private mSharedContext:Ljava/lang/Object;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;

.field private mZoomPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLastSecondCapturedFrameCount:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveLowFpsCount:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveGoodHealthFpsCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableCameraFpsCorrectionLogic:Z

    new-instance v2, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v2}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    new-instance v2, Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-direct {v2}, Lcom/tencent/liteav/videoproducer/capture/aw;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    new-instance v2, Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-direct {v2}, Lcom/tencent/liteav/videoproducer/capture/ai;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, -0x1

    iput v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableZoom:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    iput v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExposureCompensation:F

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFirstFrameCaptured:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsZoomSupported:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsTorchSupported:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFocusPositionInPreviewSupported:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraAutoFocusFaceModeSupported:Z

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraSuccessfullyOpened:Z

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/liteav/base/util/l;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/l;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lcom/tencent/liteav/base/util/r;

    new-instance v2, Lcom/tencent/liteav/videoproducer/capture/a;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoproducer/capture/a;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/base/util/r;-><init>(Lcom/tencent/liteav/base/util/l;Lcom/tencent/liteav/base/util/r$a;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLowFpsCheckTimer:Lcom/tencent/liteav/base/util/r;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->scheduleRestartCameraTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$lambda$0(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->checkCaptureFpsHealthy()V

    return-void
.end method

.method private checkCaptureFpsHealthy()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLastSecondCapturedFrameCount:I

    int-to-float v2, v2

    int-to-float v0, v0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveLowFpsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveLowFpsCount:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveGoodHealthFpsCount:I

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->increaseFpsIfPoorFpsHealthy()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveGoodHealthFpsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveGoodHealthFpsCount:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveLowFpsCount:I

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->stopLowFpsCheckTimerIfFpsHealthy()V

    :goto_1
    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLastSecondCapturedFrameCount:I

    return-void
.end method

.method private checkFirstFrameCaptured()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFirstFrameCaptured:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFirstFrameCaptured:Z

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "camera capture first frame."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 5

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->stopCapture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    const-string v4, "closeCamera fail, Exception:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFirstFrameCaptured:Z

    return-void

    :catchall_1
    move-exception v0

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    throw v0
.end method

.method private createCameraController(Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;)Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;
    .locals 4

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;->a:[I

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/a/a;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/a/a;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/b/a;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/l;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/b/a;-><init>(Lcom/tencent/liteav/base/util/w;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.liteav.videoengine.demo.mock.camera.MockCameraController"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    check-cast v0, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createCameraController, CameraAPIType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", return camera controller: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private enableCameraFpsCorrectionLogic(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableCameraFpsCorrectionLogic:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableCameraFpsCorrectionLogic:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->enableCameraFpsCorrectionLogic(Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableCameraFpsCorrectionLogic:Z

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sIsRestartedCameraDueToLowFps:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->startLowFpsCheckTimer()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLowFpsCheckTimer:Lcom/tencent/liteav/base/util/r;

    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/r;->a()V

    :cond_3
    return-void
.end method

.method private getCameraRotationCorrection(Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;)Lcom/tencent/liteav/base/util/Rotation;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;->a:[I

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraV1FrontRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraV1BackRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraV2FrontRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraV2BackRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;
    .locals 2

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    invoke-direct {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;-><init>()V

    sput-object v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    return-object v0
.end method

.method private getMockCameraMatrix([F)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTransformMatrix"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [F

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getMockCameraMatrix with exception: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraCaptureSingleton"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getPixelFrameRotationDiffBetweenServerAndSystem()Lcom/tencent/liteav/base/util/Rotation;
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    iget v0, v0, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->getCameraSystemRotationValue()I

    move-result v1

    add-int/lit16 v0, v0, 0x168

    sub-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :cond_1
    invoke-static {v0}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    return-object v0
.end method

.method private handleCameraStartFailed()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CameraCaptureSingleton"

    const-string v4, "camera start failed. params: %s"

    invoke-static {v2, v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->stopCapture()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraSuccessfullyOpened:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->scheduleRestartCameraTask()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/ai;->a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    iget-object v5, v4, Lcom/tencent/liteav/videoproducer/capture/ai;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    sget-object v6, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->c:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    if-ne v5, v6, :cond_2

    iput-boolean v0, v4, Lcom/tencent/liteav/videoproducer/capture/ai;->d:Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ai;->a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "camera switch from "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/ai;->a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->scheduleRestartCameraTask()V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/videoproducer/capture/aw;->onStartFinish(Z)V

    :cond_4
    return-void
.end method

.method private handleCameraStartSuccess()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    const-string v1, "CameraCaptureSingleton"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "camera start success. params: %s"

    invoke-static {v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->isZoomSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsZoomSupported:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->isTorchSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsTorchSupported:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->isCameraAutoFocusFaceModeSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraAutoFocusFaceModeSupported:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->isCameraFocusPositionInPreviewSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFocusPositionInPreviewSupported:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->getPreviewSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->getCameraSystemRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSharedContext:Ljava/lang/Object;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v3

    :cond_1
    iget v5, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    invoke-static {v1, v2, v3, v5}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->initOutputPixelFrame(Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/base/util/Rotation;Ljava/lang/Object;I)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoproducer/capture/aw;->onStartFinish(Z)V

    :cond_2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraSuccessfullyOpened:Z

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableCameraFpsCorrectionLogic:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sIsRestartedCameraDueToLowFps:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->startLowFpsCheckTimer()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string v0, "camera start success, but mCameraController or mSurfaceTexture is null."

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private increaseFpsIfPoorFpsHealthy()V
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveLowFpsCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    sget-boolean v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sIsRestartedCameraDueToLowFps:Z

    if-nez v0, :cond_0

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "Increase camera capture fps because capture fps healthy is poor."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sIsRestartedCameraDueToLowFps:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLowFpsCheckTimer:Lcom/tencent/liteav/base/util/r;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/r;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->restartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    :cond_0
    return-void
.end method

.method private initGLComponents(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSharedContext:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v2, "initGL"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    const-string v2, "CameraCaptureSingleton"

    const-string v3, "initializeEGL failed."

    invoke-static {v1, v2, v3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/aw;->onCaptureError()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    :cond_2
    return-void
.end method

.method private static initOutputPixelFrame(Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/base/util/Rotation;Ljava/lang/Object;I)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 2

    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    sget-object v1, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    iget p0, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    iget p0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    :goto_1
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    sget-object p0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    return-object v0
.end method

.method private isNeedRestartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z
    .locals 6

    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v1, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v1, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->c:I

    iput v1, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->c:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v1, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->d:I

    iput v1, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->c:I

    iget v4, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->d:I

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v5}, Lcom/tencent/liteav/videoproducer/capture/aw;->a()I

    move-result v5

    if-gt v5, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->isCurrentPreviewSizeAspectRatioMatch(IIZ)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v4, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->c:I

    iput v4, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->c:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v4, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->d:I

    iput v4, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->d:I

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v4}, Lcom/tencent/liteav/videoproducer/capture/aw;->a()I

    move-result v4

    if-gt v4, v3, :cond_4

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v4, v4, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    iget v5, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    if-ne v4, v5, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v4}, Lcom/tencent/liteav/videoproducer/capture/aw;->a()I

    move-result v4

    if-le v4, v3, :cond_6

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v4, v4, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    iget v5, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    if-ge v4, v5, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget p1, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    iput p1, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_8

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    return v2

    :cond_8
    :goto_3
    return v3
.end method

.method static synthetic lambda$enableCameraZoom$6(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableZoom:Z

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/aw;->onCameraZoomEnable(Z)V

    return-void
.end method

.method static synthetic lambda$enableTapToFocus$4(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->enableTapToFocus(Z)V

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/aw;->onCameraTouchEnable(Z)V

    return-void
.end method

.method static synthetic lambda$onCameraError$11(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CameraCaptureSingleton"

    const-string v0, "VideoCapture: camera error"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->scheduleRestartCameraTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$onFrameAvailable$12(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLastSecondCapturedFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLastSecondCapturedFrameCount:I

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->makeCurrent()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string p1, "onFrameAvailable"

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "make current failed."

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->checkFirstFrameCaptured()V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->onCaptureFrameAvailable()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$removeListener$0(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/aw;->b(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    return-void
.end method

.method static synthetic lambda$resume$15(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->resumeInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    return-void
.end method

.method static synthetic lambda$setCameraAPIType$10(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ai;->a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    iput-object v1, p1, Lcom/tencent/liteav/videoproducer/capture/ai;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->c:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    iput-object v1, p1, Lcom/tencent/liteav/videoproducer/capture/ai;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/tencent/liteav/videoproducer/capture/ai;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    const-string v1, "CameraCaptureSingleton"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/ai;->a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object p1

    if-ne v0, p1, :cond_3

    const-string p0, "setCameraAPIType,decided api type is not changed."

    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->restartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    return-void

    :cond_4
    :goto_1
    const-string p0, "setCameraAPIType,mCameraController is null."

    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setExposureCompensation$9(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExposureCompensation:F

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->setExposureCompensation(F)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setPercentOfMaxZoomLevel$8(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->setZoomInternal(F)V

    return-void
.end method

.method static synthetic lambda$setServerConfig$1(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCamera2SupportMinApiLevel()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/videoproducer/capture/ai;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCamera2SupportMinApiLevel apiLevel:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSupervisor"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isCameraFpsCorrectionLogicEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->enableCameraFpsCorrectionLogic(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "set serverConfig min api level:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCamera2SupportMinApiLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enable camera fps correction logic value: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isCameraFpsCorrectionLogicEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraCaptureSingleton"

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setZoomLevel$7(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)V
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    if-gtz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "setZoomLevel maxZoomLevel="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraCaptureSingleton"

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->setZoomInternal(F)V

    return-void
.end method

.method static synthetic lambda$start$13(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start,captureParams="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videoproducer/capture/aw;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->restartIfCaptureParamsChanged(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ba;->a()Lcom/tencent/liteav/videoproducer/capture/ba;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/liteav/videoproducer/capture/ba;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->initGLComponents(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    return-void
.end method

.method static synthetic lambda$startAutoFocusAtPosition$5(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->startAutoFocusAtPosition(II)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$stopAndWaitDone$14(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 2

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "stop camera begin"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->stopInternal()V

    const-string p0, "stop camera end"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$switchCamera$2(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->restartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$turnOnTorch$3(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->turnOnTorch(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateParams$16(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateParams,captureParams="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "params not set frontCamera, use mCurrentCaptureParams frontCamera:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v2, v2, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isNeedRestartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "updateParams, no need restart camera: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->restartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "camera is closed, cannot update params."

    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onCaptureFrameAvailable()V
    .locals 12

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    const-string v1, "CameraCaptureSingleton"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v5, "updateTexImage"

    invoke-virtual {v4, v5}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "updateTexImage exception: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v3, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/ai;->a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object v1

    sget-object v3, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getMockCameraMatrix([F)V

    :cond_2
    const v1, 0x8d65

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isFrontCamera()Z

    move-result v9

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/l$b;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getPixelFrameRotationDiffBetweenServerAndSystem()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    new-instance v3, Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    invoke-direct {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v11

    move-object v6, v3

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setCaptureMetaData(ZZZII)V

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMetaData(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    :cond_3
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v3, v2, v1}, Lcom/tencent/liteav/videoproducer/capture/aw;->onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l$b;->release()V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCaptureFrameAvailable mGLTexturePool:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTextureHolderPool:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v0, :cond_0

    const-string p1, "CameraCaptureSingleton"

    const-string v0, "camera is opened, you should Stop it first."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCameraInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->handleCameraStartSuccess()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->handleCameraStartFailed()V

    :goto_0
    return p1
.end method

.method private openCameraInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->makeCurrent()Z

    move-result v0

    const-string v1, "CameraCaptureSingleton"

    if-nez v0, :cond_0

    const-string p1, "openCameraInternal: set opengl context fail."

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "openCameraInternal frontCamera not set, use expect front camera:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->generateTextureOES()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ai;->a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getCameraRotationCorrection(Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->createCameraController(Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;)Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    iget v1, v1, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->setCameraRotationCorrectionValue(I)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableCameraFpsCorrectionLogic:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->enableCameraFpsCorrectionLogic(Z)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->enableTapToFocus(Z)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExposureCompensation:F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->setExposureCompensation(F)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->setZoom(F)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/aw;->onCameraTouchEnable(Z)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableZoom:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/aw;->onCameraZoomEnable(Z)V

    sget-boolean v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sIsRestartedCameraDueToLowFps:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableCameraFpsCorrectionLogic:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    iget p1, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    add-int/lit8 p1, p1, 0x5

    iput p1, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->b:I

    move-object p1, v0

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, v1, p0}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->startCapture(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/videoproducer/capture/CameraEventCallback;)Z

    move-result p1

    return p1
.end method

.method private restartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restart camera params: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    return-void
.end method

.method private restartIfCaptureParamsChanged(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 4

    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    const-string v1, "CameraCaptureSingleton"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "params not set frontCamera, use mCurrentCaptureParams frontCamera:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v2, v2, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isNeedRestartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera is opened, has new params, is need restart camera? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string/jumbo v3, "yes."

    goto :goto_0

    :cond_1
    const-string v3, "no."

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    invoke-interface {p2, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCameraTouchEnable(Z)V

    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableZoom:Z

    invoke-interface {p2, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCameraZoomEnable(Z)V

    invoke-interface {p2, v1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onStartFinish(Z)V

    :cond_2
    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->restartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    return-void
.end method

.method private scheduleRestartCameraTask()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/l;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/l;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/l;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/util/l;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setZoomInternal(F)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setZoomInternal "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->setZoom(F)V

    :cond_1
    return-void
.end method

.method private startLowFpsCheckTimer()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLowFpsCheckTimer:Lcom/tencent/liteav/base/util/r;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/r;->a(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveLowFpsCount:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveGoodHealthFpsCount:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLastSecondCapturedFrameCount:I

    return-void
.end method

.method private stopInternal()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop listener count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/aw;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/aw;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraSuccessfullyOpened:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/l;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/util/l;->c(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->uninitGLComponents()V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLowFpsCheckTimer:Lcom/tencent/liteav/base/util/r;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/r;->a()V

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLastSecondCapturedFrameCount:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveLowFpsCount:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveGoodHealthFpsCount:I

    :cond_0
    return-void
.end method

.method private stopLowFpsCheckTimerIfFpsHealthy()V
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mConsecutiveGoodHealthFpsCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "Stop low fps check timer because capture fps is healthy"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mLowFpsCheckTimer:Lcom/tencent/liteav/base/util/r;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/r;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public enableCameraZoom(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCameraZoom "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/r;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableMockCamera(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lcom/tencent/liteav/videoproducer/capture/ai;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    return-void
.end method

.method public enableTapToFocus(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableTapToFocus "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/p;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCameraAPIType()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/ai;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ai;->a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object v0

    return-object v0
.end method

.method public getCameraRotation()Lcom/tencent/liteav/base/util/Rotation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;->getCameraSystemRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraAutoFocusFaceModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraAutoFocusFaceModeSupported:Z

    return v0
.end method

.method public isCameraFocusPositionInPreviewSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFocusPositionInPreviewSupported:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsTorchSupported:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsZoomSupported:Z

    return v0
.end method

.method protected makeCurrent()Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const-string v1, "CameraCaptureSingleton"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v3, "makeCurrentNull"

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "makeCurrent on mEGLCore is null"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v4, "makeCurrentError"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    const-string v4, "make current failed."

    invoke-static {v3, v1, v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/aw;->onCaptureError()V

    return v2
.end method

.method public onCameraError(Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/e;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/f;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Landroid/graphics/SurfaceTexture;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/i;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected pauseInternal()V
    .locals 3

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/aw;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pauseInternal paused cnt= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , listener cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraCaptureSingleton"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    :cond_0
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    if-eq v0, v1, :cond_1

    const-string v0, "pauseInternal listeners is not zero."

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    return-void
.end method

.method public removeListener(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/l;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/j;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resumeInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/aw;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "CameraCaptureSingleton"

    const-string v4, "resumeInternal pausedCount %d, listeners size = %d"

    invoke-static {v1, v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/aw;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/aw;->a()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    :cond_0
    iget p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    if-gez p1, :cond_1

    iput v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    :cond_1
    return-void
.end method

.method protected runInGLThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/l;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCameraAPIType(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCameraAPIType "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/d;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExposureCompensation(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setExposureCompensation "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/c;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPercentOfMaxZoomLevel(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/b;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/m;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setZoomLevel(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setZoomLevel "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/s;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 0

    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    check-cast p2, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    invoke-static {p0, p1, p3}, Lcom/tencent/liteav/videoproducer/capture/g;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAutoFocusAtPosition(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startAutoFocusAtPosition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/q;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;II)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopAndWaitDone(I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/l;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/h;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public switchCamera(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "switchCamera "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/n;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public turnOnTorch(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "turnOnTorch "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/o;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected uninitGLComponents()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l;->b()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v3, "uninitGL"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    const-string v3, "CameraCaptureSingleton"

    const-string v4, "EGLCore destroy failed."

    invoke-static {v2, v3, v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSharedContext:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    return-void
.end method

.method public updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 2

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    move-object v1, p1

    check-cast v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    invoke-static {p0, v0, p1}, Lcom/tencent/liteav/videoproducer/capture/k;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
