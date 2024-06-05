.class Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/trtc/TrtcCloudJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpeedTestParams"
.end annotation


# instance fields
.field private final a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

.field private final b:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    invoke-direct {v0}, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    iput p1, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->sdkAppId:I

    iput-object p2, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->userId:Ljava/lang/String;

    iput-object p3, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->userSig:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->scene:I

    iput-boolean p1, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->b:Z

    return-void
.end method


# virtual methods
.method public getExpectedDownBandwidth()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    iget v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->expectedDownBandwidth:I

    return v0
.end method

.method public getExpectedUpBandwidth()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    iget v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->expectedUpBandwidth:I

    return v0
.end method

.method public getIsCalledFromDeprecatedApi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->b:Z

    return v0
.end method

.method public getSDKAppId()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    iget v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->sdkAppId:I

    return v0
.end method

.method public getScene()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    iget v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->scene:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    iget-object v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$SpeedTestParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;

    iget-object v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCSpeedTestParams;->userSig:Ljava/lang/String;

    return-object v0
.end method
