.class public Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::audio"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecBridge"

.field private static final TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private mDecodeEOS:Z

.field private mFormat:Landroid/media/MediaFormat;

.field private mLongestDurationUs:J

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mMime:Ljava/lang/String;

.field private mRawDataSize:I

.field private mTrackCount:I

.field private mTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dequeueOutputBuffer()Ljava/nio/ByteBuffer;
    .locals 9

    const-string v0, "MediaCodecBridge"

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mDecodeEOS:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v5, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    return-object v2

    :cond_1
    const/4 v6, -0x3

    if-ne v5, v6, :cond_2

    const-string v4, "codec output buffers changed."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_2
    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    iget-object v4, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mFormat:Landroid/media/MediaFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "codec output format changed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_3
    if-gez v5, :cond_4

    const-string/jumbo v4, "unexpected result from dequeueOutputBuffer: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    const-string v4, "Decode to EOS"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mDecodeEOS:Z

    return-object v2

    :cond_5
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v6

    const/16 v7, 0x15

    if-lt v6, v7, :cond_6

    iget-object v6, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v6, v6, v5

    :goto_0
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v5, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "Failed to dequeue output buffer"

    invoke-static {v0, v3, v1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private drainData()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->dequeueOutputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDuration(Landroid/media/MediaFormat;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    const-string v2, "durationUs"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getDuration failed. "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MediaCodecBridge"

    invoke-static {v3, p1, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0
.end method

.method private initMediaCodec()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMime:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    :cond_1
    :goto_0
    return v1
.end method

.method private initMediaExtractor(Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mDecodeEOS:Z

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mTrackCount:I

    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mTrackCount:I

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->getDuration(Landroid/media/MediaFormat;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mLongestDurationUs:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    iput-wide v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mLongestDurationUs:J

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mTrackIndex:I

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->selectTrack(I)Z

    move-result v1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mTrackCount:I

    if-ge p1, v2, :cond_5

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->selectTrack(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "MediaCodecBridge"

    const-string v2, "initMediaExtractor: "

    invoke-static {p1, v2, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    iput-object p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mFormat:Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMime:Ljava/lang/String;

    :cond_5
    :goto_2
    return v1
.end method

.method private selectTrack(I)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iput p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mTrackIndex:I

    iput-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mFormat:Landroid/media/MediaFormat;

    iput-object v1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMime:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getLongestDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mLongestDurationUs:J

    return-wide v0
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getTotalRawDataSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mRawDataSize:I

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mTrackCount:I

    return v0
.end method

.method public initAndStart(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->initMediaExtractor(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->initMediaCodec()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v0, "MediaCodecBridge"

    const-string v2, "Cannot start the audio codec"

    invoke-static {v0, v2, p1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isDecodeEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mDecodeEOS:Z

    return v0
.end method

.method public processFrame()Ljava/nio/ByteBuffer;
    .locals 11

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-gez v5, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, v5

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    :goto_0
    if-gtz v7, :cond_3

    iget-object v4, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mRawDataSize:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mRawDataSize:I

    iget-object v4, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    :goto_1
    invoke-direct {p0}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->drainData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public seekTo(J)Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mLongestDurationUs:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public setMusicTrack(I)V
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mTrackIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->selectTrack(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    iget-object p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->initMediaCodec()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MediaCodecBridge"

    const-string v1, "Cannot start the audio codec"

    invoke-static {p1, v1, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaExtractor:Landroid/media/MediaExtractor;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/musicdecoder/MediaCodecBridge;->mDecodeEOS:Z

    return-void
.end method
