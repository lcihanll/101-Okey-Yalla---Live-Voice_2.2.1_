.class Lcom/tencent/liteav/trtc/TrtcCloudJni$ScreenShareParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/trtc/TrtcCloudJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenShareParams"
.end annotation


# instance fields
.field private final a:Lcom/tencent/trtc/TRTCCloudDef$TRTCScreenShareParams;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/TRTCCloudDef$TRTCScreenShareParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$ScreenShareParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCScreenShareParams;

    return-void
.end method


# virtual methods
.method public getMediaProjection()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$ScreenShareParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCScreenShareParams;

    iget-object v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCScreenShareParams;->mediaProjection:Ljava/lang/Object;

    return-object v0
.end method

.method public isForegroundServiceEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$ScreenShareParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCScreenShareParams;

    iget-boolean v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCScreenShareParams;->enableForegroundService:Z

    return v0
.end method
