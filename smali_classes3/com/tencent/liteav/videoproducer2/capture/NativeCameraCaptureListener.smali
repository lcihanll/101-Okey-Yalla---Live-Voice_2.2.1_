.class public Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/tencent/liteav/videoproducer/capture/CameraEventCallback;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private final mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mNativeHandle:J

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->nativeOnCameraError(J)V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->nativeOnFrameAvailable(JLandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic lambda$onCameraError$1(Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer2/capture/d;->a(Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->runInNative(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onFrameAvailable$3(Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer2/capture/c;->a(Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;Landroid/graphics/SurfaceTexture;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->runInNative(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native nativeOnCameraError(J)V
.end method

.method private static native nativeOnFrameAvailable(JLandroid/graphics/SurfaceTexture;)V
.end method

.method private declared-synchronized runInNative(Ljava/lang/Runnable;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
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


# virtual methods
.method public getCallbackHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    return-object v0
.end method

.method public onCameraError(Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer2/capture/a;->a(Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer2/capture/b;->a(Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;Landroid/graphics/SurfaceTexture;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized resetNativeHandle()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer2/capture/NativeCameraCaptureListener;->mNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
