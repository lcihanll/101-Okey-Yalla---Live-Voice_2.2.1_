.class abstract Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;
.super Ljava/lang/Object;
.source "AudioRoutingController.java"

# interfaces
.implements Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AudioRouteBaseState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public btPlugInProcess(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At AudioRouteBaseState Process BT plugin event mIsBTHeadsetPlugged= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public btPlugOutProcess(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At AudioRouteBaseState Process BT plugout event mIsBTHeadsetPlugged= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public btScoConnectProcess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process BT SCO Connect event "

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public btScoDisConnectProcess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    const/4 p2, 0x5

    iput p2, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    :goto_0
    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process BT SCO Disconnect event "

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public commStreamEvtProcess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1702(Lio/agora/rtc/internal/AudioRoutingController;I)I

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process Communication stream event "

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceEarpieceProcess(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process ForceEarpiece event "

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceSpkProcess(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process ForceSpeaker event "

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public headSetPlugInProcess(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Process HeadSet plugin event at AudioRouteBaseState mAvailDevices.mHeadSetRoute = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    invoke-static {p2, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1400(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public headSetPlugOutProcess(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Process HeadSet plugout event at AudioRouteBaseState mAvailDevices.mHeadSetRoute = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    invoke-static {p2, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1400(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public musicStreamEvtProcess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1702(Lio/agora/rtc/internal/AudioRoutingController;I)I

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process Music stream event"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public phoneChangeEvtProcess(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "param"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At AudioRouteBaseState Process Phone state change event "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchtoTargetRoute()V
    .locals 0

    return-void
.end method
