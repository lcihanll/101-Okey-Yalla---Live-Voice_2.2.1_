.class public final Lcom/tencent/liteav/audio/route/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/route/t$c;,
        Lcom/tencent/liteav/audio/route/t$b;,
        Lcom/tencent/liteav/audio/route/t$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcom/tencent/liteav/audio/route/t$b;

.field c:Z

.field private final d:Lcom/tencent/liteav/audio/route/t$a;

.field private final e:Lcom/tencent/liteav/audio/route/t$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/audio/route/t$a;Lcom/tencent/liteav/audio/route/t$c;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/route/t;->b:Lcom/tencent/liteav/audio/route/t$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/route/t;->c:Z

    iput-object p1, p0, Lcom/tencent/liteav/audio/route/t;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    iput-object p3, p0, Lcom/tencent/liteav/audio/route/t;->e:Lcom/tencent/liteav/audio/route/t$c;

    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 0

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

    const-string p1, "AudioSystemBroadcastReceiver"

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "unknown"

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

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static a(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get interface exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AudioSystemBroadcastReceiver"

    invoke-static {v2, p0, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "AudioSystemBroadcastReceiver"

    const/4 v1, 0x0

    if-eqz p2, :cond_1b

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "receive Action: %s"

    invoke-static {v0, v4, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    const/4 v7, 0x2

    const/4 v8, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_1
    const-string v9, "android.bluetooth.profile.extra.STATE"

    const/16 v10, 0xa

    packed-switch v3, :pswitch_data_0

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "ignore unknown Action: %s"

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p2, v9, v8}, Lcom/tencent/liteav/audio/route/t;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    new-array p2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_c

    if-eq p1, v2, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v4, :cond_9

    const-string/jumbo v3, "unknown"

    goto :goto_2

    :cond_9
    const-string v3, "STATE_DISCONNECTING"

    goto :goto_2

    :cond_a
    const-string v3, "STATE_CONNECTED"

    goto :goto_2

    :cond_b
    const-string v3, "STATE_CONNECTING"

    goto :goto_2

    :cond_c
    const-string v3, "STATE_DISCONNECTED"

    :goto_2
    aput-object v3, p2, v1

    const-string v3, "receive bluetooth headset connection state changed: %s"

    invoke-static {v0, v3, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_e

    if-eq p1, v7, :cond_d

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/audio/route/t$a;->onBluetoothConnectionChanged(Z)V

    :goto_3
    return-void

    :cond_e
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/route/t$a;->onBluetoothConnectionChanged(Z)V

    return-void

    :pswitch_1
    invoke-static {p2, v9, v10}, Lcom/tencent/liteav/audio/route/t;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_f

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "receive bluetooth audio state changed to STATE_AUDIO_CONNECTED"

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/audio/route/t$a;->onBluetoothSCOConnected(Z)V

    return-void

    :cond_f
    if-ne p1, v10, :cond_10

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "receive bluetooth audio state changed to STATE_AUDIO_DISCONNECTED"

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/route/t$a;->onBluetoothSCOConnected(Z)V

    :cond_10
    return-void

    :pswitch_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-static {p2, p1, v1}, Lcom/tencent/liteav/audio/route/t;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    const-string v3, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-static {p2, v3, v1}, Lcom/tencent/liteav/audio/route/t;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/liteav/audio/route/t;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Lcom/tencent/liteav/audio/route/t;->a(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "receive ACTION_STATE_CHANGED, EXTRA_STATE: %s, EXTRA_PREVIOUS_STATE: %s"

    invoke-static {v0, p2, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v10, :cond_11

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/route/t$a;->onBluetoothConnectionChanged(Z)V

    :cond_11
    return-void

    :pswitch_3
    const-string p1, "state"

    invoke-static {p2, p1, v8}, Lcom/tencent/liteav/audio/route/t;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_12

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "unknown headset state, ignore..."

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_12
    iget-object p2, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :cond_13
    invoke-virtual {p2, v1}, Lcom/tencent/liteav/audio/route/t$a;->onWiredHeadsetConnectionChanged(Z)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/tencent/liteav/audio/route/t;->e:Lcom/tencent/liteav/audio/route/t$c;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/tencent/liteav/audio/route/t$c;->onSystemVolumeChanged()V

    :cond_14
    return-void

    :pswitch_5
    iget-boolean p1, p0, Lcom/tencent/liteav/audio/route/t;->c:Z

    if-nez p1, :cond_15

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Do not enable usb device"

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_15
    const-string p1, "device"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v3

    const/16 v4, 0x15

    if-lt v3, v4, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Usb device attached "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " manufacture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    invoke-static {p1}, Lcom/tencent/liteav/audio/route/t;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-nez p1, :cond_17

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "the attached usb device doesn\'t seem to support audio, ignore it"

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-ne p1, v6, :cond_18

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/audio/route/t$a;->onUsbConnectionChanged(Z)V

    return-void

    :cond_18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-ne p1, v5, :cond_19

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/t;->d:Lcom/tencent/liteav/audio/route/t$a;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/route/t$a;->onUsbConnectionChanged(Z)V

    return-void

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown action, ignore it "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    return-void

    :cond_1b
    :goto_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "onReceive intent or context is null!"

    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_6
        -0x73abbf83 -> :sswitch_5
        -0x63ecb970 -> :sswitch_4
        -0x5fdc9a67 -> :sswitch_3
        -0x5b36f014 -> :sswitch_2
        -0x5591500b -> :sswitch_1
        0x2083ec2d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
