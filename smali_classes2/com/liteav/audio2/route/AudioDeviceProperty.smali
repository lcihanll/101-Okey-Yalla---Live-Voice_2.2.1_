.class public Lcom/liteav/audio2/route/AudioDeviceProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liteav/audio2/route/a$a;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;
    }
.end annotation


# static fields
.field private static final RECORDING_CONFIGS_LIMIT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AudioDeviceProperty"


# instance fields
.field private mAudioEventBroadcastReceiver:Lcom/liteav/audio2/route/a;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private mBluetoothHeadsetListener:Lcom/liteav/audio2/route/b;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSystemVolume:I

.field private mNativeAudioDeviceProperty:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mCurrentSystemVolume:I

    iput-wide p1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mNativeAudioDeviceProperty:J

    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/liteav/audio2/route/AudioDeviceProperty;)J
    .locals 2

    iget-wide v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mNativeAudioDeviceProperty:J

    return-wide v0
.end method

.method static synthetic access$100(J[Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/liteav/audio2/route/AudioDeviceProperty;->nativeNotifyAudioRecordingConfigChangedFromJava(J[Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;)V

    return-void
.end method

.method private buildAudioRecordingCallback()V
    .locals 1

    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/liteav/audio2/route/AudioDeviceProperty$1;

    invoke-direct {v0, p0}, Lcom/liteav/audio2/route/AudioDeviceProperty$1;-><init>(Lcom/liteav/audio2/route/AudioDeviceProperty;)V

    iput-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    return-void
.end method

.method private static native nativeNotifyAudioRecordingConfigChangedFromJava(J[Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;)V
.end method

.method private static native nativeNotifyBluetoothConnectionChangedFromJava(JZ)V
.end method

.method private static native nativeNotifyBluetoothScoConnectedFromJava(JZ)V
.end method

.method private static native nativeNotifySystemVolumeChangedFromJava(JI)V
.end method

.method private static native nativeNotifyWiredHeadsetConnectionChangedFromJava(JZ)V
.end method


# virtual methods
.method public getMode()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get mode exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AudioDeviceProperty"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isBluetoothHeadsetConnected()Z
    .locals 4

    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mBluetoothHeadsetListener:Lcom/liteav/audio2/route/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AudioDeviceProperty"

    const-string v3, "mBluetoothHeadsetListener is null"

    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/liteav/audio2/route/b;->a()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isBluetoothScoOn exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AudioDeviceProperty"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isSpeakerphoneOn()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSpeakerphoneOn exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AudioDeviceProperty"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isWiredHeadsetOn()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isWiredHeadsetOn exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AudioDeviceProperty"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public onBluetoothConnectionChanged(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mNativeAudioDeviceProperty:J

    invoke-static {v0, v1, p1}, Lcom/liteav/audio2/route/AudioDeviceProperty;->nativeNotifyBluetoothConnectionChangedFromJava(JZ)V

    return-void
.end method

.method public onBluetoothScoConnected(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mNativeAudioDeviceProperty:J

    invoke-static {v0, v1, p1}, Lcom/liteav/audio2/route/AudioDeviceProperty;->nativeNotifyBluetoothScoConnectedFromJava(JZ)V

    return-void
.end method

.method public onSystemVolumeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget v1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mCurrentSystemVolume:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mCurrentSystemVolume:I

    iget-wide v1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mNativeAudioDeviceProperty:J

    invoke-static {v1, v2, v0}, Lcom/liteav/audio2/route/AudioDeviceProperty;->nativeNotifySystemVolumeChangedFromJava(JI)V

    :cond_1
    return-void
.end method

.method public onWiredHeadsetConnectionChanged(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mNativeAudioDeviceProperty:J

    invoke-static {v0, v1, p1}, Lcom/liteav/audio2/route/AudioDeviceProperty;->nativeNotifyWiredHeadsetConnectionChangedFromJava(JZ)V

    return-void
.end method

.method public registerAudioRecordingCallback()V
    .locals 3

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liteav/audio2/route/AudioDeviceProperty;->buildAudioRecordingCallback()V

    :cond_1
    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .locals 4

    const-string v0, "AudioDeviceProperty"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    const-string v2, "setBluetoothScoOn "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setBluetoothScoOn exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 4

    const-string v0, "AudioDeviceProperty"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const-string v2, "setSpeakerphoneOn "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSpeakerphoneOn exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVoip(Z)V
    .locals 4

    const-string v0, "AudioDeviceProperty"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->setMode(I)V

    const-string v2, "setMode "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set mode exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setWiredHeadsetOn(Z)V
    .locals 4

    const-string v0, "AudioDeviceProperty"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->setWiredHeadsetOn(Z)V

    const-string v2, "setWiredHeadsetOn "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWiredHeadsetOn exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 3

    new-instance v0, Lcom/liteav/audio2/route/a;

    iget-object v1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/liteav/audio2/route/a;-><init>(Landroid/content/Context;Lcom/liteav/audio2/route/a$a;)V

    iput-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioEventBroadcastReceiver:Lcom/liteav/audio2/route/a;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/liteav/audio2/route/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/liteav/audio2/route/b;

    iget-object v1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liteav/audio2/route/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mBluetoothHeadsetListener:Lcom/liteav/audio2/route/b;

    return-void
.end method

.method public startBluetoothSco()V
    .locals 5

    const-string v0, "AudioDeviceProperty"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->startBluetoothSco()V

    const-string v2, "startBluetoothSco"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startBluetoothSco exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioEventBroadcastReceiver:Lcom/liteav/audio2/route/a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/liteav/audio2/route/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/liteav/audio2/route/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioEventBroadcastReceiver:Lcom/liteav/audio2/route/a;

    iget-object v1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mBluetoothHeadsetListener:Lcom/liteav/audio2/route/b;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/liteav/audio2/route/b;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v1, Lcom/liteav/audio2/route/b;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/liteav/audio2/route/b;->b:Landroid/bluetooth/BluetoothProfile;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/liteav/audio2/route/b;->b()V

    iput-object v0, v1, Lcom/liteav/audio2/route/b;->b:Landroid/bluetooth/BluetoothProfile;

    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mBluetoothHeadsetListener:Lcom/liteav/audio2/route/b;

    return-void
.end method

.method public stopBluetoothSco()V
    .locals 5

    const-string v0, "AudioDeviceProperty"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->stopBluetoothSco()V

    const-string v2, "stopBluetoothSco"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopBluetoothSco exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterAudioRecordingCallback()V
    .locals 2

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    return-void
.end method
