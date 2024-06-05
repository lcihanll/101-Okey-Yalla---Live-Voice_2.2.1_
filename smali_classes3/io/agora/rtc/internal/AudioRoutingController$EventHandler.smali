.class Lio/agora/rtc/internal/AudioRoutingController$EventHandler;
.super Landroid/os/Handler;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/16 v2, 0x16

    if-eq v0, v2, :cond_6

    const/16 v2, 0x70

    if-eq v0, v2, :cond_5

    const/16 v2, 0x71

    if-eq v0, v2, :cond_4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$702(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto/16 :goto_3

    :pswitch_3
    if-nez p1, :cond_3

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->forceEarpieceProcess(II)V

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->forceSpkProcess(II)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->musicStreamEvtProcess(II)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->commStreamEvtProcess(II)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->phoneChangeEvtProcess(II)V

    goto :goto_3

    :cond_7
    if-ne p1, v1, :cond_8

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->btScoConnectProcess(II)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->btScoDisConnectProcess(II)V

    goto :goto_3

    :cond_9
    if-ne p1, v1, :cond_a

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->btPlugInProcess(II)V

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->btPlugOutProcess(II)V

    goto :goto_3

    :cond_b
    if-ltz p1, :cond_c

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->headSetPlugInProcess(II)V

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->headSetPlugOutProcess(II)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
