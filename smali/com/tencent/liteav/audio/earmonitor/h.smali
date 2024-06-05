.class public final Lcom/tencent/liteav/audio/earmonitor/h;
.super Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;-><init>(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Z

    iput p1, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:I

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.feature.audio_listenback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Z

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headphone_monitoring"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SamsungSystemAudioKit"

    const-string v3, "get ktv info failed"

    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/liteav/audio/earmonitor/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize failed. mHasKtvFeature : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/earmonitor/h;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mKtvEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/audio/earmonitor/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SamsungSystemAudioKit"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p0, v1}, Lcom/tencent/liteav/audio/earmonitor/h;->notifyEarMonitoringInitialized(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p0, v0}, Lcom/tencent/liteav/audio/earmonitor/h;->notifyEarMonitoringInitialized(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;Z)V

    return-void
.end method

.method public final setEarMonitoringVolume(I)V
    .locals 0

    return-void
.end method

.method public final startEarMonitoring()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/liteav/audio/earmonitor/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/tencent/liteav/audio/earmonitor/h;->notifySystemError(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;)V

    :cond_0
    return-void
.end method

.method public final stopEarMonitoring()V
    .locals 0

    return-void
.end method

.method public final terminate()V
    .locals 0

    return-void
.end method
