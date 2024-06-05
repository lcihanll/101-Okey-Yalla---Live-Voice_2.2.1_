.class public Lcom/tencent/liteav/live/TXLivePlayerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/rtmp/a;
.implements Lcom/tencent/rtmp/ui/TXCloudVideoView$b;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TXLivePlayerJni"


# instance fields
.field private mAudioRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

.field private mAudioRoute:Ljava/lang/Integer;

.field private mAudioVolumeEvaluationListener:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

.field private mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

.field private mDisplayTarget:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

.field private mEnableHardwareDecoder:Ljava/lang/Boolean;

.field private final mExperimentalAPIMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGLContext:Ljava/lang/Object;

.field private mIsAudioMuted:Ljava/lang/Boolean;

.field private mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

.field protected mNativeTXLivePlayerJni:J

.field private mRenderMode:Ljava/lang/Integer;

.field private mRenderRotate:Ljava/lang/Integer;

.field private mShowDebugView:Ljava/lang/Boolean;

.field private mSnapshotListener:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

.field private mVideoRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

.field private mVideoRecordListener:Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;

.field private mVideoRenderListener:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

.field private mVolume:Ljava/lang/Integer;

.field private mVolumeIntervalMs:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mGLContext:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mExperimentalAPIMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/liteav/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    const-string p1, "liteav"

    invoke-static {p1}, Lcom/tencent/liteav/base/ContextUtils;->setDataDirectorySuffix(Ljava/lang/String;)V

    return-void
.end method

.method private static genFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->getDiskFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v2, "TXUGC_%s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TXLivePlayerJni"

    const-string v1, "create file path failed."

    invoke-static {p1, v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getDiskFileDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static getMapKeys(Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getMapValues(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isNativeValid()Z
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeCallExperimentalAPI(JLjava/lang/String;)V
.end method

.method private static native nativeCreate(Ljava/lang/ref/WeakReference;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/live/TXLivePlayerJni;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnableAudioVolumeEvaluation(JI)V
.end method

.method private static native nativeEnableCustomAudioProcess(JZ)V
.end method

.method private static native nativeEnableCustomRenderI420(JZ)V
.end method

.method private static native nativeEnableCustomRenderTexture(JZLjava/lang/Object;)V
.end method

.method private static native nativeEnableHardwareDecode(JZ)V
.end method

.method private static native nativeGetCurrentRenderPts(J)J
.end method

.method private static native nativeIsPlaying(J)Z
.end method

.method private static native nativePause(J)V
.end method

.method private static native nativeResume(J)V
.end method

.method private static native nativeSetAudioRoute(JI)V
.end method

.method private static native nativeSetConfig(JFFFIIIZZZLjava/lang/String;Ljava/util/Map;)V
.end method

.method private static native nativeSetMute(JZ)V
.end method

.method private static native nativeSetPlayerView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
.end method

.method private static native nativeSetRenderMode(JI)V
.end method

.method private static native nativeSetRenderRotation(JI)V
.end method

.method private static native nativeSetVolume(JI)V
.end method

.method private static native nativeShowDebugView(JZ)V
.end method

.method private static native nativeSnapshot(J)V
.end method

.method private static native nativeStartPlay(JLjava/lang/String;I)I
.end method

.method private static native nativeStartRecord(JILjava/lang/String;)V
.end method

.method private static native nativeStopPlay(JZ)V
.end method

.method private static native nativeStopRecord(J)V
.end method

.method private static native nativeSwitchStream(JLjava/lang/String;)I
.end method

.method public static weakToStrongReference(Ljava/lang/ref/WeakReference;)Lcom/tencent/liteav/live/TXLivePlayerJni;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/live/TXLivePlayerJni;",
            ">;)",
            "Lcom/tencent/liteav/live/TXLivePlayerJni;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/live/TXLivePlayerJni;

    return-object p0
.end method


# virtual methods
.method public addVideoRawData([B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public callExperimentalAPI(Ljava/lang/String;)V
    .locals 4

    const-string v0, "TXLivePlayerJni"

    const-string v1, "api"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mExperimentalAPIMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v1, v2, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeCallExperimentalAPI(JLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v1, "call experimental api failed. json: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "call experimental api failed. json:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableAudioVolumeEvaluation(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVolumeIntervalMs:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableAudioVolumeEvaluation(JI)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableHardwareDecode(Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mEnableHardwareDecoder:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableHardwareDecode(JZ)V

    :cond_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentRenderPts()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeGetCurrentRenderPts(J)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :cond_0
    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeIsPlaying(J)Z

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAudioInfoChanged(III)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mAudioRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;->onAudioInfoChanged(III)V

    :cond_0
    return-void
.end method

.method public onAudioVolumeEvaluationNotify(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mAudioVolumeEvaluationListener:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;->onAudioVolumeEvaluationNotify(I)V

    :cond_0
    return-void
.end method

.method public onNetStatus(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/rtmp/ITXLivePlayListener;->onNetStatus(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPcmDataAvailable([BJ)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mAudioRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;->onPcmDataAvailable([BJ)V

    :cond_0
    return-void
.end method

.method public onPlayEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp/ITXLivePlayListener;->onPlayEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRecordComplete(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRecordListener:Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    invoke-direct {v1}, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->retCode:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->retCode:I

    :goto_0
    iput-object p2, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->descMsg:Ljava/lang/String;

    iput-object p3, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->videoPath:Ljava/lang/String;

    iput-object p4, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->coverPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;->onRecordComplete(Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;)V

    :cond_1
    return-void
.end method

.method public onRecordEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRecordListener:Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;->onRecordEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRecordProgress(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRecordListener:Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;->onRecordProgress(J)V

    :cond_0
    return-void
.end method

.method public onRenderVideoFrame(IILjava/lang/Object;IIIIJ[BLjava/nio/ByteBuffer;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRenderListener:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;

    invoke-direct {p2}, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;-><init>()V

    iput p4, p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->textureId:I

    iput p5, p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->width:I

    iput p6, p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->height:I

    iput-object p3, p2, Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;->eglContext:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;->onRenderVideoFrame(Lcom/tencent/rtmp/TXLivePlayer$TXLiteAVTexture;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    if-eqz p1, :cond_1

    long-to-int p2, p8

    invoke-interface {p1, p10, p5, p6, p2}, Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;->onVideoRawDataAvailable([BIII)V

    :cond_1
    return-void
.end method

.method public onShowLog(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->showDebugView(Z)V

    return-void
.end method

.method public onSnapshot(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mSnapshotListener:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;->onSnapshot(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativePause(J)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeResume(J)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioRawDataListener(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mAudioRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomAudioProcess(JZ)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAudioRoute(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mAudioRoute:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetAudioRoute(JI)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAudioVolumeEvaluationListener(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mAudioVolumeEvaluationListener:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioVolumeEvaluationListener;

    return-void
.end method

.method public setConfig(Lcom/tencent/rtmp/TXLivePlayConfig;)V
    .locals 13

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->getCacheTime()F

    move-result v2

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->getMaxAutoAdjustCacheTime()F

    move-result v3

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->getMinAutoAdjustCacheTime()F

    move-result v4

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->getVideoBlockThreshold()I

    move-result v5

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->getConnectRetryCount()I

    move-result v6

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->getConnectRetryInterval()I

    move-result v7

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->isAutoAdjustCacheTime()Z

    move-result v8

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->isEnableMessage()Z

    move-result v9

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->isEnableMetaData()Z

    move-result v10

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->getFlvSessionKey()Ljava/lang/String;

    move-result-object v11

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXLivePlayConfig;->getHeaders()Ljava/util/Map;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetConfig(JFFFIIIZZZLjava/lang/String;Ljava/util/Map;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMute(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mIsAudioMuted:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetMute(JZ)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPlayListener(Lcom/tencent/rtmp/ITXLivePlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

    return-void
.end method

.method public setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/tencent/liteav/live/a;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lcom/tencent/liteav/live/a;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->showDebugView(Z)V

    :cond_0
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mDisplayTarget:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mDisplayTarget:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mDisplayTarget:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetPlayerView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRenderMode(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mRenderMode:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetRenderMode(JI)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRenderRotation(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mRenderRotate:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetRenderRotation(JI)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mDisplayTarget:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mDisplayTarget:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    iget-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mDisplayTarget:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetPlayerView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSurfaceSize(II)V
    .locals 0

    return-void
.end method

.method public setVideoRawDataListener(Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRenderListener:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRenderListener:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mGLContext:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderTexture(JZLjava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderI420(JZ)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVideoRecordListener(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRecordListener:Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;

    return-void
.end method

.method public setVideoRenderListener(Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;Ljava/lang/Object;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v3, v4, v2}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderI420(JZ)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRenderListener:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mGLContext:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mGLContext:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderTexture(JZLjava/lang/Object;)V

    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVolume(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVolume:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetVolume(JI)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public showDebugView(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mShowDebugView:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeShowDebugView(JZ)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public snapshot(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mSnapshotListener:Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;

    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSnapshot(J)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startLivePlay(Ljava/lang/String;I)I
    .locals 15

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeCreate(Ljava/lang/ref/WeakReference;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mDisplayTarget:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetPlayerView(JLcom/tencent/liteav/videobase/videobase/DisplayTarget;)V

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    if-eqz v0, :cond_0

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->getCacheTime()F

    move-result v4

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->getMaxAutoAdjustCacheTime()F

    move-result v5

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->getMinAutoAdjustCacheTime()F

    move-result v6

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->getVideoBlockThreshold()I

    move-result v7

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->getConnectRetryCount()I

    move-result v8

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->getConnectRetryInterval()I

    move-result v9

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->isAutoAdjustCacheTime()Z

    move-result v10

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->isEnableMessage()Z

    move-result v11

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->isEnableMetaData()Z

    move-result v12

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->getFlvSessionKey()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mConfig:Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;->getHeaders()Ljava/util/Map;

    move-result-object v14

    invoke-static/range {v2 .. v14}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetConfig(JFFFIIIZZZLjava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRenderListener:Lcom/tencent/rtmp/TXLivePlayer$ITXLivePlayVideoRenderListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-wide v4, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v4, v5, v3}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderI420(JZ)V

    iget-wide v4, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mGLContext:Ljava/lang/Object;

    invoke-static {v4, v5, v2, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderTexture(JZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVideoRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXVideoRawDataListener;

    if-eqz v0, :cond_2

    iget-wide v4, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mGLContext:Ljava/lang/Object;

    invoke-static {v4, v5, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderTexture(JZLjava/lang/Object;)V

    iget-wide v4, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v4, v5, v2}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderI420(JZ)V

    goto :goto_0

    :cond_2
    iget-wide v4, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mGLContext:Ljava/lang/Object;

    invoke-static {v4, v5, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderTexture(JZLjava/lang/Object;)V

    iget-wide v4, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v4, v5, v3}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomRenderI420(JZ)V

    :goto_0
    iget-wide v4, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mAudioRawDataListener:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v5, v2}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableCustomAudioProcess(JZ)V

    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mRenderMode:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetRenderMode(JI)V

    :cond_4
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mRenderRotate:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetRenderRotation(JI)V

    :cond_5
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mEnableHardwareDecoder:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableHardwareDecode(JZ)V

    :cond_6
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVolume:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetVolume(JI)V

    :cond_7
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mAudioRoute:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetAudioRoute(JI)V

    :cond_8
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mVolumeIntervalMs:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeEnableAudioVolumeEvaluation(JI)V

    :cond_9
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mIsAudioMuted:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSetMute(JZ)V

    :cond_a
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mShowDebugView:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeShowDebugView(JZ)V

    :cond_b
    iget-object v0, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mExperimentalAPIMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-wide v3, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeCallExperimentalAPI(JLjava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-wide v2, v1, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    move-object/from16 v0, p1

    move/from16 v4, p2

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeStartPlay(JLjava/lang/String;I)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRecord(I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->genFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :cond_0
    iget-wide v1, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v1, v2, p1, v0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeStartRecord(JILjava/lang/String;)V

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopPlay(Z)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeStopPlay(JZ)V

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeDestroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopRecord()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeStopRecord(J)V

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchStream(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p1, "TXLivePlayerJni"

    const-string v0, "Invalid params."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/live/TXLivePlayerJni;->isNativeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/liteav/live/TXLivePlayerJni;->mNativeTXLivePlayerJni:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/live/TXLivePlayerJni;->nativeSwitchStream(JLjava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
