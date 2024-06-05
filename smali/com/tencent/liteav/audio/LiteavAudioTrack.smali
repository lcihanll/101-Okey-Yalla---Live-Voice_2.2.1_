.class public Lcom/tencent/liteav/audio/LiteavAudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::audio"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LiteavAudioTrack"


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I

.field private mPlayBuffer:[B

.field private mSystemOSVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mBufferSize:I

    iput v0, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mSystemOSVersion:I

    return-void
.end method

.method private static createStartedAudioTrack(IIIIZ)Landroid/media/AudioTrack;
    .locals 18

    move/from16 v7, p0

    move/from16 v8, p1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const-string v11, "LiteavAudioTrack"

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz p4, :cond_2

    move/from16 v6, p3

    if-ne v6, v13, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    new-instance v2, Landroid/media/AudioTrack$Builder;

    invoke-direct {v2}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v1, v14}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v5, p2

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/media/AudioTrack$Builder;->setPerformanceMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0xc

    if-ne v8, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    mul-int/lit8 v2, v7, 0xa

    mul-int v2, v2, v1

    mul-int/lit8 v2, v2, 0x2

    :try_start_2
    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setBufferSizeInFrames(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move/from16 v5, p2

    goto :goto_3

    :cond_2
    move/from16 v5, p2

    move/from16 v6, p3

    :try_start_3
    new-instance v16, Landroid/media/AudioTrack;

    const/4 v4, 0x2

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p3

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, v16

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v15, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    const-string v1, "create AudioTrack success. sampleRate: %d, channelConfig: %d, bufferSize: %d, streamType: %s, fastJava: %b"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static/range {p3 .. p3}, Lcom/tencent/liteav/audio/LiteavAudioTrack;->streamTypeToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v11, v1, v2}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v12, v0

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AudioTrack is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    :goto_3
    move-object v0, v12

    :catchall_2
    new-array v1, v10, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static/range {p3 .. p3}, Lcom/tencent/liteav/audio/LiteavAudioTrack;->streamTypeToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    const-string v2, "create AudioTrack failed. sampleRate: %d, channelConfig: %d, bufferSize: %d, streamType: %s"

    invoke-static {v11, v2, v1}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/liteav/audio/LiteavAudioTrack;->destroyAudioTrack(Landroid/media/AudioTrack;)V

    :goto_4
    return-object v12
.end method

.method private static destroyAudioTrack(Landroid/media/AudioTrack;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "LiteavAudioTrack"

    const-string v1, "stop AudioTrack failed."

    invoke-static {p0, v1, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static streamTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "STREAM_INVALID"

    return-object p0

    :cond_0
    const-string p0, "STREAM_NOTIFICATION"

    return-object p0

    :cond_1
    const-string p0, "STREAM_ALARM"

    return-object p0

    :cond_2
    const-string p0, "STREAM_MUSIC"

    return-object p0

    :cond_3
    const-string p0, "STREAM_RING"

    return-object p0

    :cond_4
    const-string p0, "STREAM_SYSTEM"

    return-object p0

    :cond_5
    const-string p0, "STREAM_VOICE_CALL"

    return-object p0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mBufferSize:I

    return v0
.end method

.method public startPlayout(IIIIZ)I
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v2, v1, p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    aput v4, v1, v3

    aput p1, v1, v4

    if-ne p3, p1, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/16 p3, 0xc

    :goto_0
    invoke-static {p2, p3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v4

    if-gtz v4, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioTrack.getMinBufferSize return error: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "LiteavAudioTrack"

    invoke-static {p3, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x2

    return p1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_5

    iget-object v6, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v6, :cond_5

    aget v6, v1, v5

    const/4 v7, 0x1

    :goto_2
    if-gt v7, v3, :cond_4

    iget-object v8, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v8, :cond_4

    mul-int v8, v4, v7

    iput v8, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mBufferSize:I

    mul-int/lit8 v9, p4, 0x4

    if-ge v8, v9, :cond_2

    if-lt v7, v3, :cond_3

    :cond_2
    invoke-static {p2, p3, v8, v6, p5}, Lcom/tencent/liteav/audio/LiteavAudioTrack;->createStartedAudioTrack(IIIIZ)Landroid/media/AudioTrack;

    move-result-object v8

    iput-object v8, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez p1, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mSystemOSVersion:I

    const/16 p1, -0x13

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return v2
.end method

.method public stopPlayout()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/tencent/liteav/audio/LiteavAudioTrack;->destroyAudioTrack(Landroid/media/AudioTrack;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;III)I
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p2, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mSystemOSVersion:I

    const/16 v0, 0x15

    const/4 v2, 0x0

    if-lt p2, v0, :cond_2

    if-nez p4, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object p4, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p4, p1, p3, p2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mPlayBuffer:[B

    if-eqz p2, :cond_3

    array-length p2, p2

    if-ge p2, p3, :cond_4

    :cond_3
    new-array p2, p3, [B

    iput-object p2, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mPlayBuffer:[B

    :cond_4
    iget-object p2, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mPlayBuffer:[B

    invoke-virtual {p1, p2, v2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object p2, p0, Lcom/tencent/liteav/audio/LiteavAudioTrack;->mPlayBuffer:[B

    invoke-virtual {p1, p2, v2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    :goto_1
    if-gez p1, :cond_5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "write audio data to AudioTrack failed. "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "LiteavAudioTrack"

    invoke-static {p3, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    return p1
.end method
