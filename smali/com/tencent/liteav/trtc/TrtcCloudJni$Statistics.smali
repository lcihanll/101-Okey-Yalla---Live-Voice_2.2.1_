.class Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/trtc/TrtcCloudJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Statistics"
.end annotation


# instance fields
.field private a:Lcom/tencent/trtc/TRTCStatistics;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/trtc/TRTCStatistics;

    invoke-direct {v0}, Lcom/tencent/trtc/TRTCStatistics;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;)Lcom/tencent/trtc/TRTCStatistics;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    return-object p0
.end method

.method public static createStatistics(IIIIIIJJLjava/util/ArrayList;Ljava/util/ArrayList;)Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIJJ",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/trtc/TrtcCloudJni$RemoteStatistics;",
            ">;)",
            "Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;

    invoke-direct {v0}, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;-><init>()V

    iget-object v1, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iput p0, v1, Lcom/tencent/trtc/TRTCStatistics;->appCpu:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iput p1, p0, Lcom/tencent/trtc/TRTCStatistics;->systemCpu:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iput p2, p0, Lcom/tencent/trtc/TRTCStatistics;->upLoss:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iput p3, p0, Lcom/tencent/trtc/TRTCStatistics;->downLoss:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iput p4, p0, Lcom/tencent/trtc/TRTCStatistics;->rtt:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iput p5, p0, Lcom/tencent/trtc/TRTCStatistics;->gatewayRtt:I

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iput-wide p6, p0, Lcom/tencent/trtc/TRTCStatistics;->sendBytes:J

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iput-wide p8, p0, Lcom/tencent/trtc/TRTCStatistics;->receiveBytes:J

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/trtc/TRTCStatistics;->localArray:Ljava/util/ArrayList;

    iget-object p0, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/trtc/TRTCStatistics;->remoteArray:Ljava/util/ArrayList;

    if-eqz p10, :cond_0

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;

    iget-object p2, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iget-object p2, p2, Lcom/tencent/trtc/TRTCStatistics;->localArray:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;->a(Lcom/tencent/liteav/trtc/TrtcCloudJni$LocalStatistics;)Lcom/tencent/trtc/TRTCStatistics$TRTCLocalStatistics;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p11, :cond_1

    invoke-virtual {p11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/trtc/TrtcCloudJni$RemoteStatistics;

    iget-object p2, v0, Lcom/tencent/liteav/trtc/TrtcCloudJni$Statistics;->a:Lcom/tencent/trtc/TRTCStatistics;

    iget-object p2, p2, Lcom/tencent/trtc/TRTCStatistics;->remoteArray:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/tencent/liteav/trtc/TrtcCloudJni$RemoteStatistics;->a:Lcom/tencent/trtc/TRTCStatistics$TRTCRemoteStatistics;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method
