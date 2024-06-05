.class public final Lcom/liteav/audio2/route/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liteav/audio2/route/a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lcom/liteav/audio2/route/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liteav/audio2/route/a$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/liteav/audio2/route/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/liteav/audio2/route/a;->b:Lcom/liteav/audio2/route/a$a;

    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getIntentIntExtra "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AudioEventBroadcastReceiver"

    invoke-static {v0, p0, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return p2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "STATE_TURNING_OFF"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_ON"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_TURNING_ON"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_OFF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "AudioEventBroadcastReceiver"

    const/4 v1, 0x0

    if-eqz p2, :cond_13

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Receive Action:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_1
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/16 v8, 0xa

    packed-switch v2, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ignore unknown Action:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p2, v7, v5}, Lcom/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    if-eqz p1, :cond_a

    if-eq p1, v6, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    const-string v2, "unknown"

    goto :goto_2

    :cond_7
    const-string v2, "STATE_DISCONNECTING"

    goto :goto_2

    :cond_8
    const-string v2, "STATE_CONNECTED"

    goto :goto_2

    :cond_9
    const-string v2, "STATE_CONNECTING"

    goto :goto_2

    :cond_a
    const-string v2, "STATE_DISCONNECTED"

    :goto_2
    aput-object v2, p2, v1

    const-string v2, "Receive bluetooth headset connection state changed: %s"

    invoke-static {v0, v2, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_c

    if-eq p1, v4, :cond_b

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/liteav/audio2/route/a;->b:Lcom/liteav/audio2/route/a$a;

    invoke-interface {p1, v6}, Lcom/liteav/audio2/route/a$a;->onBluetoothConnectionChanged(Z)V

    :goto_3
    return-void

    :cond_c
    iget-object p1, p0, Lcom/liteav/audio2/route/a;->b:Lcom/liteav/audio2/route/a$a;

    invoke-interface {p1, v1}, Lcom/liteav/audio2/route/a$a;->onBluetoothConnectionChanged(Z)V

    return-void

    :pswitch_1
    invoke-static {p2, v7, v8}, Lcom/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_d

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Receive bluetooth audio state changed to STATE_AUDIO_CONNECTED"

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/liteav/audio2/route/a;->b:Lcom/liteav/audio2/route/a$a;

    invoke-interface {p1, v6}, Lcom/liteav/audio2/route/a$a;->onBluetoothScoConnected(Z)V

    return-void

    :cond_d
    if-ne p1, v8, :cond_e

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Receive bluetooth audio state changed to STATE_AUDIO_DISCONNECTED"

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/liteav/audio2/route/a;->b:Lcom/liteav/audio2/route/a$a;

    invoke-interface {p1, v1}, Lcom/liteav/audio2/route/a$a;->onBluetoothScoConnected(Z)V

    :cond_e
    return-void

    :pswitch_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-static {p2, p1, v1}, Lcom/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-static {p2, v2, v1}, Lcom/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receive ACTION_STATE_CHANGED, EXTRA_STATE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/liteav/audio2/route/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " EXTRA_PREVIOUS_STATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/liteav/audio2/route/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v8, :cond_f

    iget-object p1, p0, Lcom/liteav/audio2/route/a;->b:Lcom/liteav/audio2/route/a$a;

    invoke-interface {p1, v1}, Lcom/liteav/audio2/route/a$a;->onBluetoothConnectionChanged(Z)V

    :cond_f
    return-void

    :pswitch_3
    const-string p1, "state"

    invoke-static {p2, p1, v5}, Lcom/liteav/audio2/route/a;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_10

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Unknown headset state, ignore..."

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_10
    iget-object p2, p0, Lcom/liteav/audio2/route/a;->b:Lcom/liteav/audio2/route/a$a;

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :cond_11
    invoke-interface {p2, v1}, Lcom/liteav/audio2/route/a$a;->onWiredHeadsetConnectionChanged(Z)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/liteav/audio2/route/a;->b:Lcom/liteav/audio2/route/a$a;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/liteav/audio2/route/a$a;->onSystemVolumeChanged()V

    :cond_12
    return-void

    :cond_13
    :goto_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Receive intent or context is null"

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73abbf83 -> :sswitch_4
        -0x63ecb970 -> :sswitch_3
        -0x5b36f014 -> :sswitch_2
        -0x5591500b -> :sswitch_1
        0x2083ec2d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
