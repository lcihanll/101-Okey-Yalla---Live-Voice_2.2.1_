.class final Lcom/tencent/liteav/audio/route/AudioRouteManager$3;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/route/AudioRouteManager;->buildAudioDeviceCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/route/AudioRouteManager;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/route/AudioRouteManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$3;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/route/AudioRouteManager$3;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$3;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->onBluetoothConnectionChanged(Z)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/route/AudioRouteManager$3;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$3;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->onBluetoothConnectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "added device type is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sink: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "AudioRouteManager"

    invoke-static {v6, v4, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$3;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-static {p0}, Lcom/tencent/liteav/audio/route/p;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager$3;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$600(Lcom/tencent/liteav/audio/route/AudioRouteManager;Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removed device type is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sink: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "AudioRouteManager"

    invoke-static {v6, v4, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$3;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-static {p0}, Lcom/tencent/liteav/audio/route/q;->a(Lcom/tencent/liteav/audio/route/AudioRouteManager$3;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$600(Lcom/tencent/liteav/audio/route/AudioRouteManager;Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
