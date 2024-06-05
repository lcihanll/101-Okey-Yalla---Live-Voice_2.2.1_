.class final Lcom/liteav/audio2/route/AudioDeviceProperty$1;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liteav/audio2/route/AudioDeviceProperty;->buildAudioRecordingCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liteav/audio2/route/AudioDeviceProperty;


# direct methods
.method constructor <init>(Lcom/liteav/audio2/route/AudioDeviceProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/liteav/audio2/route/AudioDeviceProperty;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRecordingConfigChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    new-instance v4, Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;

    invoke-direct {v4}, Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;-><init>()V

    aput-object v4, v1, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioRecordingConfiguration;

    aget-object v5, v1, v3

    invoke-virtual {v4}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result v6

    iput v6, v5, Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;->a:I

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v5

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_0

    aget-object v5, v1, v3

    invoke-virtual {v4}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v4

    iput-boolean v4, v5, Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;->b:Z

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    iput-boolean v2, v4, Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;->b:Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/liteav/audio2/route/AudioDeviceProperty;

    invoke-static {p1}, Lcom/liteav/audio2/route/AudioDeviceProperty;->access$000(Lcom/liteav/audio2/route/AudioDeviceProperty;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/liteav/audio2/route/AudioDeviceProperty;->access$100(J[Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;)V

    return-void
.end method
