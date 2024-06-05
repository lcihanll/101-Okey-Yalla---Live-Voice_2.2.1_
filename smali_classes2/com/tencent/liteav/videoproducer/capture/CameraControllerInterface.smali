.class public abstract Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraControllerInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCameraController(ILandroid/os/Handler;)Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface;
    .locals 2

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->a(I)Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    move-result-object p0

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$1;->a:[I

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/a/a;

    invoke-direct {p1}, Lcom/tencent/liteav/videoproducer/capture/a/a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/b/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/tencent/liteav/videoproducer/capture/ah;

    invoke-direct {v1, p1}, Lcom/tencent/liteav/videoproducer/capture/ah;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/b/a;-><init>(Lcom/tencent/liteav/base/util/w;)V

    move-object p1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createCameraController, CameraAPIType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", return camera controller: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraControllerInterface"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public abstract enableCameraFpsCorrectionLogic(Z)V
.end method

.method public abstract enableTapToFocus(Z)V
.end method

.method public abstract getCameraSystemRotation()Lcom/tencent/liteav/base/util/Rotation;
.end method

.method public abstract getCameraSystemRotationValue()I
.end method

.method public abstract getMaxZoom()I
.end method

.method public abstract getPreviewSize()Lcom/tencent/liteav/base/util/Size;
.end method

.method public abstract isCameraAutoFocusFaceModeSupported()Z
.end method

.method public abstract isCameraFocusPositionInPreviewSupported()Z
.end method

.method public abstract isCurrentPreviewSizeAspectRatioMatch(IIZ)Z
.end method

.method public abstract isTorchSupported()Z
.end method

.method public abstract isZoomSupported()Z
.end method

.method public abstract setCameraRotationCorrectionValue(I)V
.end method

.method public abstract setExposureCompensation(F)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract startAutoFocusAtPosition(II)V
.end method

.method public abstract startCapture(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/videoproducer/capture/CameraEventCallback;)Z
.end method

.method public abstract stopCapture()V
.end method

.method public abstract turnOnTorch(Z)V
.end method
