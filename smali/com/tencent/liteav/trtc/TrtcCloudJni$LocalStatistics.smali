.class Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/trtc/TrtcCloudJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalStatistics"
.end annotation


# instance fields
.field private a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    invoke-direct {v0}, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;)Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    return-object p0
.end method

.method public static addLocalStatistics(Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createLocalStatistics(IIIIIIII)Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;
    .locals 2

    new-instance v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;

    invoke-direct {v0}, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;-><init>()V

    iget-object v1, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    iput p0, v1, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;->streamType:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    iput p1, p0, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;->width:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    iput p2, p0, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;->height:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    iput p3, p0, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;->frameRate:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    iput p4, p0, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;->videoBitrate:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    iput p6, p0, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;->audioBitrate:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    iput p5, p0, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;->audioSampleRate:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    iput p7, p0, Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;->audioCaptureState:I

    return-object v0
.end method

.method public static createLocalStatisticsArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
