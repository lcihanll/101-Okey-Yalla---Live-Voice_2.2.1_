.class public Lio/agora/rtc/internal/AudioRoutingController;
.super Ljava/lang/Object;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;,
        Lio/agora/rtc/internal/AudioRoutingController$BTState;,
        Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;,
        Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;,
        Lio/agora/rtc/internal/AudioRoutingController$StopState;,
        Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;,
        Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;,
        Lio/agora/rtc/internal/AudioRoutingController$EventHandler;,
        Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;,
        Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;,
        Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;
    }
.end annotation


# static fields
.field private static final BLUETOOTH:I = 0x5

.field private static final BLUETOOTH_RESET_BT_DELAY:I = 0xbb8

.field private static final BLUETOOTH_SCO_TIMEOUT_MS:I = 0xbb8

.field private static final BT_SCO_STATE_CONNECTED:I = 0x1

.field private static final BT_SCO_STATE_CONNECTING:I = 0x0

.field private static final BT_SCO_STATE_DISCONNECTED:I = 0x3

.field private static final BT_SCO_STATE_DISCONNECTING:I = 0x2

.field public static final CMD_DEFAULT_DEVICE:I = 0xa

.field public static final CMD_FORCE_TO_SPEAKER:I = 0xb

.field public static final CMD_MUTE_VIDEO_ALL:I = 0xe

.field public static final CMD_MUTE_VIDEO_LOCAL:I = 0xc

.field public static final CMD_MUTE_VIDEO_REMOTES:I = 0xd

.field private static final EARPIECE:I = 0x1

.field private static final EVT_BT_HEADSET:I = 0x2

.field private static final EVT_BT_SCO:I = 0x3

.field private static final EVT_HEADSET:I = 0x1

.field public static final EVT_PHONE_STATE_CHANGED:I = 0x16

.field public static final EVT_USING_COMM_PARAMETERS:I = 0x70

.field public static final EVT_USING_NORM_PARAMETERS:I = 0x71

.field private static final HEADSET:I = 0x0

.field private static final MAX_SCO_CONNECT_ATTEMPS:I = 0x5

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final SPEAKER:I = 0x3

.field private static final STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AudioRoute"

.field public static final UNSET:I = -0x1


# instance fields
.field private final TryConnectBtScoRunnable:Ljava/lang/Runnable;

.field private final TrytoResetBTRunnable:Ljava/lang/Runnable;

.field am:Landroid/media/AudioManager;

.field private dynamic_timeout:I

.field private mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

.field private mBTState:Lio/agora/rtc/internal/AudioRoutingController$BTState;

.field private mBtScoState:I

.field private mChannelProfile:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEarpieceState:Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;

.field private mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

.field private mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

.field private mHeadsetState:Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;

.field private mIsBTHeadsetPlugged:Z

.field private mLastNotifiedRouting:I

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/internal/AudioRoutingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMuteLocal:Z

.field private mMuteRemotes:Z

.field private mPhoneInCall:Z

.field private mScoConnectionAttemps:I

.field private mSpeakerState:Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

.field private mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

.field private mStopState:Lio/agora/rtc/internal/AudioRoutingController$StopState;

.field private mStreamType:I

.field private mTargetRoute:I

.field private mVideoDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/agora/rtc/internal/AudioRoutingListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$StopState;

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerState:Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEarpieceState:Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTState:Lio/agora/rtc/internal/AudioRoutingController$BTState;

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetState:Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mTargetRoute:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    iput-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    iput-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    iput-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStreamType:I

    iput v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    const/4 v2, 0x3

    iput v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mLastNotifiedRouting:I

    new-instance v0, Lio/agora/rtc/internal/AudioRoutingController$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/AudioRoutingController$1;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->TryConnectBtScoRunnable:Ljava/lang/Runnable;

    new-instance v0, Lio/agora/rtc/internal/AudioRoutingController$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/AudioRoutingController$2;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->TrytoResetBTRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->tryToConnectBtSco()V

    return-void
.end method

.method static synthetic access$100(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->resetBtAdapter()V

    return-void
.end method

.method static synthetic access$1300(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    return-object p0
.end method

.method static synthetic access$1400(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$1502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    return p0
.end method

.method static synthetic access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    return p1
.end method

.method static synthetic access$1700(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStreamType:I

    return p0
.end method

.method static synthetic access$1702(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStreamType:I

    return p1
.end method

.method static synthetic access$1900(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->cancelTimer()V

    return-void
.end method

.method static synthetic access$200(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$2000(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->disableBtSco()V

    return-void
.end method

.method static synthetic access$202(Lio/agora/rtc/internal/AudioRoutingController;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getBtDeviceList()I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->isHeadSetConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mTargetRoute:I

    return p0
.end method

.method static synthetic access$2302(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mTargetRoute:I

    return p1
.end method

.method static synthetic access$2400(Lio/agora/rtc/internal/AudioRoutingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    return-void
.end method

.method static synthetic access$2500(Lio/agora/rtc/internal/AudioRoutingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    return-void
.end method

.method static synthetic access$2600(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->isSpeakerEnable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->enableBtSco()V

    return-void
.end method

.method static synthetic access$2800(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->startTimer()V

    return-void
.end method

.method static synthetic access$302(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    return p1
.end method

.method static synthetic access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    return-object p0
.end method

.method static synthetic access$502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    return p1
.end method

.method static synthetic access$602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    return p1
.end method

.method static synthetic access$702(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    return p1
.end method

.method private btStateAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "SCO_DISCONNECTED"

    goto :goto_0

    :cond_1
    const-string p1, "SCO_DISCONNECTING"

    goto :goto_0

    :cond_2
    const-string p1, "SCO_CONNECTED"

    goto :goto_0

    :cond_3
    const-string p1, "SCO_CONNECTING"

    :goto_0
    return-object p1
.end method

.method private cancelTimer()V
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "cancel bluetooth timer"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->TryConnectBtScoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "AudioRoute"

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const-string p1, "--------------------Comming to UNKNOWN STATE----------- "

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerState:Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    if-nez p1, :cond_0

    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    invoke-direct {p1, p0, v0}, Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerState:Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerState:Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTState:Lio/agora/rtc/internal/AudioRoutingController$BTState;

    if-nez p1, :cond_2

    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$BTState;

    invoke-direct {p1, p0, v0}, Lio/agora/rtc/internal/AudioRoutingController$BTState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTState:Lio/agora/rtc/internal/AudioRoutingController$BTState;

    :cond_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTState:Lio/agora/rtc/internal/AudioRoutingController$BTState;

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    const-string p1, "--------------------Comming to BLUETOOTH--------------- "

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$StopState;

    if-nez p1, :cond_4

    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$StopState;

    invoke-direct {p1, p0, v0}, Lio/agora/rtc/internal/AudioRoutingController$StopState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$StopState;

    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$StopState;

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    const-string p1, "--------------------Comming to STOP-------------------- "

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerState:Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    if-nez p1, :cond_6

    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    invoke-direct {p1, p0, v0}, Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerState:Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    :cond_6
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerState:Lio/agora/rtc/internal/AudioRoutingController$SpeakerState;

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    const-string p1, "--------------------Comming to SPEAKER----------------- "

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEarpieceState:Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;

    if-nez p1, :cond_8

    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;

    invoke-direct {p1, p0, v0}, Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEarpieceState:Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;

    :cond_8
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEarpieceState:Lio/agora/rtc/internal/AudioRoutingController$EarpieceState;

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    const-string p1, "--------------------Comming to EARPIECE---------------- "

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetState:Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;

    if-nez p1, :cond_a

    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;

    invoke-direct {p1, p0, v0}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetState:Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;

    :cond_a
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetState:Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    const-string p1, "--------------------Comming to HEADSET----------------- "

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    invoke-interface {p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->switchtoTargetRoute()V

    return-void
.end method

.method private changeStateByPriority()V
    .locals 2

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getBtDeviceList()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->checkNeedResetBT()V

    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStreamType:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->enableBtSco()V

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    :goto_0
    return-void
.end method

.method private checkNeedResetBT()V
    .locals 4

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->TrytoResetBTRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clearBTResource()V
    .locals 5

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->cancelTimer()V

    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    :cond_2
    return-void
.end method

.method private connectBTSco()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "connectAudio"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "AudioRoute"

    if-eqz v0, :cond_0

    const-string v0, "SCO connected successfully "

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string v0, "SCO connected failed "

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private disConnectBTSco()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "disconnectAudio"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private disableBtSco()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_1
    return-void
.end method

.method private enableBtSco()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :cond_1
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private getAudioRouteDesc(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown"

    return-object p1

    :pswitch_0
    const-string p1, "HeadsetBluetooth"

    return-object p1

    :pswitch_1
    const-string p1, "Loudspeaker"

    return-object p1

    :pswitch_2
    const-string p1, "Speakerphone"

    return-object p1

    :pswitch_3
    const-string p1, "HeadsetOnly"

    return-object p1

    :pswitch_4
    const-string p1, "Earpiece"

    return-object p1

    :pswitch_5
    const-string p1, "Headset"

    return-object p1

    :pswitch_6
    const-string p1, "UNSET"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBtDeviceList()I
    .locals 6

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    const-string v2, "AudioRoute"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_3
    if-nez v1, :cond_4

    const-string v0, "No Connected BT device"

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method private getEventDesc(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x70

    if-eq p1, v0, :cond_1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const-string p1, "unkown event"

    return-object p1

    :cond_0
    const-string p1, "music stream event"

    return-object p1

    :cond_1
    const-string p1, "communication stream event"

    return-object p1

    :cond_2
    const-string p1, "set forcespeakerphone event"

    return-object p1

    :cond_3
    const-string p1, "sco connect/disconnect event"

    return-object p1

    :cond_4
    const-string p1, "bt connect/disconnect event"

    return-object p1

    :cond_5
    const-string p1, "headset connect/disconnect event"

    return-object p1
.end method

.method private isAudioOnly()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isBTConnected()Z
    .locals 3

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v1, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isBtScoConnected()Z
    .locals 7

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "AudioRoute"

    const/4 v3, 0x0

    if-lez v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-gt v4, v5, :cond_0

    :try_start_0
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isAudioOn"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCO is not connected with "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCO connected with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    const-string v0, "no bluetooth device connected."

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private isHeadSetConnected()Z
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerEnable()Z
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private modeAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "MODE_IN_COMMUNICATION"

    goto :goto_0

    :cond_1
    const-string p1, "MODE_IN_CALL"

    goto :goto_0

    :cond_2
    const-string p1, "MODE_RINGTONE"

    goto :goto_0

    :cond_3
    const-string p1, "MODE_NORMAL"

    :goto_0
    return-object p1
.end method

.method private notifyAudioRoutingChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/internal/AudioRoutingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingChanged(I)V

    goto :goto_0

    :cond_0
    const-string p1, "AudioRoute"

    const-string v0, "failed to get audio routing listener"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private resetBtAdapter()V
    .locals 3

    const-string v0, "AudioRoute"

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "resetBtAdapter failed:"

    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string v1, "resetBtAdapter Happened!"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTargetRouteByPriority()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->isBTConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->isHeadSetConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    return v0

    :cond_2
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "AudioRoute"

    const-string v3, "fatal error setTargetRouteByPriority"

    invoke-static {v2, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private startTimer()V
    .locals 4

    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    add-int/lit16 v0, v0, 0xbb8

    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio route start bluetooth timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", times:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->TryConnectBtScoRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tryToConnectBtSco()V
    .locals 4

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v1, "AudioRoute"

    if-nez v0, :cond_0

    const-string v0, "no bluetooth profile connected"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->isBtScoConnected()Z

    move-result v0

    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->startTimer()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attemp trying sco connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  times:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->disableBtSco()V

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->enableBtSco()V

    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->resetBtAdapter()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start bluetooth sco on ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",audiomode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->cancelTimer()V

    goto :goto_0

    :cond_3
    const-string v2, "start bluetooth sco timeout, actual routing: "

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->cancelTimer()V

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/internal/AudioRoutingListener;

    const/16 v3, 0x406

    invoke-interface {v2, v3}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingError(I)V

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "BT sco has already connect "

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeAvailDevices(II)V
    .locals 4
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

    const/4 v0, -0x1

    const-string v1, "AudioRoute"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const-string p2, "No device changed!"

    invoke-static {v1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput v3, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    const/4 v0, 0x3

    iput v0, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput p2, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    if-ne p2, v3, :cond_4

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput v2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput v2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput v0, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    goto :goto_1

    :cond_7
    if-ltz p2, :cond_9

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    if-lez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    iput v2, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    goto :goto_1

    :cond_9
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput v0, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event device changed!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  mAvailDevices.mDefaultRoute"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget p1, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearListenerNativeHandle()V
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "clearListenerNativeHandle"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/internal/AudioRoutingListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingDestroyed()V

    goto :goto_0

    :cond_0
    const-string v1, "failed to get audio routing listener"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public initialize()I
    .locals 10

    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    const-string v1, "AudioRoute"

    const-string v2, "initialize +"

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    invoke-direct {v2}, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;-><init>()V

    iput-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    const/4 v3, -0x1

    iput v3, v2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput v3, v2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput v3, v2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iput v3, v2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_d

    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    new-instance v5, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    invoke-direct {v5, p0, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Landroid/os/Looper;)V

    iput-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v5, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    invoke-direct {v5, p0, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Landroid/os/Looper;)V

    iput-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    :goto_0
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    if-nez v3, :cond_3

    new-instance v3, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-direct {v3, p0, v4}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    :cond_3
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-virtual {v3}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->getRegistered()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_4

    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-virtual {v3, v5}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->setRegistered(Z)V

    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    const-string v7, "android.permission.BLUETOOTH"

    const/4 v8, 0x0

    if-ge v3, v6, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v2, v7, v3, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "do not support BT monitoring on this device"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_5
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v3, :cond_6

    const-string v3, "Bluetooth service Listener already been initialized"

    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :try_start_0
    new-instance v3, Lio/agora/rtc/internal/AudioRoutingController$3;

    invoke-direct {v3, p0}, Lio/agora/rtc/internal/AudioRoutingController$3;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    iput-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialize failed: unable to create BluetoothProfile.ServiceListener, err="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v2, v7}, Lio/agora/rtc/internal/AudioRoutingController;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v0, "lacks BLUETOOTH permission"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_7
    :try_start_1
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    if-nez v3, :cond_8

    new-instance v3, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-direct {v3, p0, v4}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    :cond_8
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_c

    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v3, v4, v6, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    const/4 v3, 0x2

    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    if-ne v3, v4, :cond_9

    iput-boolean v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT headset setup: BTHeadsetPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v4}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->getRegistered()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v3, v5}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->setRegistered(Z)V

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_a

    const-string v0, "initial Bluetooth SCO device unconnected"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    goto :goto_2

    :cond_a
    const-string v0, "initial Bluetooth SCO device connected"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    const/4 v2, 0x5

    iput v2, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    :cond_b
    :goto_2
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getBtDeviceList()I

    goto :goto_3

    :cond_c
    const-string v0, "initialize: failed to get bluetooth adapter!!"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v8

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create BluetoothHeadsetBroadcastReceiver, err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v0, "initialize -"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_d
    :goto_4
    const-string v0, "Initilize Failed cause of invalid context or invalid audiomanager"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public muteAudioStream(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMute"
        }
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/16 v0, -0x64

    invoke-virtual {p1, v3, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/16 v0, 0x64

    invoke-virtual {p1, v3, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "muteAudioStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRoute"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendEvent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "arg"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->getEventDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], Parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    invoke-virtual {p2, p1}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public startMonitoring(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultRouting",
            "channelProfile"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v0, "AudioRoute"

    const-string v1, "--------------Comming to startMonitoring--------------------"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    iput p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget p1, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->isAudioOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {p0, v1, p1}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getBtDeviceList()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    const/4 p2, 0x5

    iput p2, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->checkNeedResetBT()V

    :cond_2
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->setTargetRouteByPriority()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultRoute: ,"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mAvailDevices.mForcedRoute :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBtRoute: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAvailDevices.mHeadSetRoute :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mAvailDevices:Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "Stop Mornitor State process"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)V

    return-void
.end method

.method public uninitialize()V
    .locals 4

    const-string v0, "AudioRoute"

    const-string v1, "uninitialize"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->clearBTResource()V

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->getRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-virtual {v2, v3}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->setRegistered(Z)V

    :cond_0
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->getRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v1, v3}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->setRegistered(Z)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AudioRoutingController uninitialize fail: "

    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
