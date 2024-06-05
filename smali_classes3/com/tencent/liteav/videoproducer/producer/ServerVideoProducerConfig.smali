.class public Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private camera2SupportMinApiLevel:I

.field private cameraRotationCorrection:I

.field private gsensorRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

.field private hardwareEncodeType:I

.field private hardwareEncoderBitrateModeCBRSupported:Ljava/lang/Boolean;

.field private hardwareEncoderHighProfileEnable:Z

.field private hardwareEncoderHighProfileSupport:Z

.field private mEnableCameraFpsCorrectionLogic:Z

.field private final mTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerVideoProducerConfig_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->mTAG:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncodeType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderHighProfileEnable:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderHighProfileSupport:Z

    const v1, 0x7fffffff

    iput v1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->camera2SupportMinApiLevel:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraRotationCorrection:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->mEnableCameraFpsCorrectionLogic:Z

    return-void
.end method

.method private cameraCloudConfigEnumToRotation(I)Lcom/tencent/liteav/base/util/Rotation;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    return-object p1

    :cond_1
    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->c:Lcom/tencent/liteav/base/util/Rotation;

    return-object p1

    :cond_2
    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    return-object p1

    :cond_3
    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    return-object p1
.end method

.method public static isHWHevcEncodeAllowed()Z
    .locals 1

    invoke-static {}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->nativeIsHardwareHevcEncodeAllowed()Z

    move-result v0

    return v0
.end method

.method private static native nativeIsHardwareHevcEncodeAllowed()Z
.end method


# virtual methods
.method public getCamera2SupportMinApiLevel()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->camera2SupportMinApiLevel:I

    return v0
.end method

.method public getCameraRotationCorrectionInfo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CameraV1Front:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraV1FrontRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", CameraV1Back:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraV1BackRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", CameraV2Front:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraV2FrontRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", CameraV2Back:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraV2BackRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraV1BackRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraRotationCorrection:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraCloudConfigEnumToRotation(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public getCameraV1FrontRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraRotationCorrection:I

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraCloudConfigEnumToRotation(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public getCameraV2BackRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraRotationCorrection:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraCloudConfigEnumToRotation(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public getCameraV2FrontRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraRotationCorrection:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraCloudConfigEnumToRotation(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    return-object v0
.end method

.method public getGsensorRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->gsensorRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    return-object v0
.end method

.method public isCameraFpsCorrectionLogicEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->mEnableCameraFpsCorrectionLogic:Z

    return v0
.end method

.method public isHardwareEncoderAllowed()Z
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncodeType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareEncoderBitrateModeCBRSupported()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderBitrateModeCBRSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isHardwareEncoderHighProfileAllowed()Z
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncodeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderHighProfileEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderHighProfileSupport:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCamera2SupportMinApiLevel(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->camera2SupportMinApiLevel:I

    return-void
.end method

.method public setCameraFpsCorrectionLogicEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->mEnableCameraFpsCorrectionLogic:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "set camera fps correction logic enabled value is "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraRotationCorrection(I)V
    .locals 3

    iput p1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->cameraRotationCorrection:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->mTAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "set camera rotation correction raw value is %#x."

    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setGSensorRotationCorrection(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->gsensorRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    :cond_1
    :goto_0
    return-void
.end method

.method public setHardwareEncodeType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncodeType:I

    return-void
.end method

.method public setHardwareEncoderBitrateModeCBRSupported(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderBitrateModeCBRSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public setHardwareEncoderHighProfileEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderHighProfileEnable:Z

    return-void
.end method

.method public setHardwareEncoderHighProfileSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderHighProfileSupport:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hardwareEncodeType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncodeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hardwareEncoderHighProfileEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderHighProfileEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hardwareEncoderHighProfileSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderHighProfileSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", camera2SupportMinApiLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->camera2SupportMinApiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hardwareEncoderBitrateModeCBRSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->hardwareEncoderBitrateModeCBRSupported:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gsensorRotationCorrection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->gsensorRotationCorrection:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraRotationCorrection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCameraRotationCorrectionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
