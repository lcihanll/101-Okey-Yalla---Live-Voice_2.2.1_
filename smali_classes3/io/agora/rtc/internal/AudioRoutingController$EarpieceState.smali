.class Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;
.super Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EarpieceState"
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

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public btPlugInProcess(II)V
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

    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btPlugInProcess(II)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;I)V

    const-string p1, "AudioRoute"

    const-string p2, "At EarpieceState Process BT connect event"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "AudioRoute"

    const-string p2, "At Earpiece Process SCO connect event,Nothing to-do"

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

    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->commStreamEvtProcess(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At EarpieceState Process CommStream"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceSpkProcess(II)V
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

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object v0, v0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->forceSpkProcess(II)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At EarpieceState Process ForceSpeaker event param =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At EarpieceState Process audio mode =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;I)V

    :cond_2
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

    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->headSetPlugInProcess(II)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->muteAudioStream(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At EarpieceState Process HeadSet connect event param = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;I)V

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

    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->musicStreamEvtProcess(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At EarpieceState Process MusicStream"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchtoTargetRoute()V
    .locals 3

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;I)I

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object v0, v0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2500(Lio/agora/rtc/internal/AudioRoutingController;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At Earpiece State switchtoTargetRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1400(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Audiomode:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object v1, v1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method