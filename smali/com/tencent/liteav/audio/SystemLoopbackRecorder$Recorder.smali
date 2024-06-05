.class Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/SystemLoopbackRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Recorder"
.end annotation


# instance fields
.field private a:Landroid/media/AudioRecord;

.field private b:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->b:Landroid/media/AudioManager;

    return-void
.end method

.method private static a(Landroid/media/projection/MediaProjection;III)Landroid/media/AudioRecord;
    .locals 10

    const-string v0, "SystemLoopbackRecorder"

    new-instance v1, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    invoke-direct {v1, p0}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    if-ne p2, p0, :cond_1

    const/16 p2, 0x10

    goto :goto_0

    :cond_1
    const/16 p2, 0xc

    :goto_0
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-static {p1, p2, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    move-object v5, v2

    const/4 p2, 0x1

    :goto_1
    if-gt p2, v4, :cond_5

    if-nez v5, :cond_5

    mul-int v6, p1, p2

    mul-int/lit8 v7, p3, 0x4

    if-ge v6, v7, :cond_2

    if-lt p2, v4, :cond_4

    :cond_2
    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Landroid/media/AudioRecord$Builder;

    invoke-direct {v8}, Landroid/media/AudioRecord$Builder;-><init>()V

    invoke-virtual {v8, v3}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getState()I

    move-result v6

    if-eq v6, p0, :cond_3

    const-string v6, "Audio record state error"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v8}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(Landroid/media/AudioRecord;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/media/AudioRecord;->startRecording()V

    const-string v6, "Create audio record success"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v8}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Create record error "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(Landroid/media/AudioRecord;)V

    :goto_2
    move-object v5, v2

    :cond_4
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-object v5
.end method

.method private a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set audio mode exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SystemLoopbackRecorder"

    invoke-static {v1, p1, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/media/AudioRecord;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V

    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroy AudioRecord failed."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SystemLoopbackRecorder"

    invoke-static {v1, p0, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v2, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gtz p1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Read failed "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "SystemLoopbackRecorder"

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    return p1
.end method

.method public startRecording(Landroid/media/projection/MediaProjection;III)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->b:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setAllowedCapturePolicy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ForbidCaptureAudioFromCurrentApp error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "SystemLoopbackRecorder"

    invoke-static {v3, v1, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->b:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(I)V

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(Landroid/media/projection/MediaProjection;III)Landroid/media/AudioRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(I)V

    iget-object p1, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    if-nez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/16 p1, -0x13

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return v0
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    invoke-static {v0}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(Landroid/media/AudioRecord;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    return-void
.end method
