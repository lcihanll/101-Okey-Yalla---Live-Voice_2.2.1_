.class Lio/agora/rtc/internal/AudioRoutingController$StopState;
.super Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$StopState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public switchtoTargetRoute()V
    .locals 3

    const-string v0, "AudioRoute"

    const-string v1, "Coming to Stop state, switchtoTargetRoute"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)V

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)V

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    iput v1, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iput v2, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iput v2, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;I)I

    return-void
.end method
