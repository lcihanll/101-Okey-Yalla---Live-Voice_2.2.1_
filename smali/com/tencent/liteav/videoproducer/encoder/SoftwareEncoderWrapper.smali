.class public Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x1


# instance fields
.field private final mFrameQueue:Lcom/tencent/liteav/videobase/utils/m;

.field private mListener:Lcom/tencent/liteav/videoproducer/encoder/br$a;

.field private mNativeEncodeWrapper:J

.field private final mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private final mStreamType:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

.field private final mTAG:Ljava/lang/String;

.field private mVideoEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoftwareEncoderWrapper@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mTAG:Ljava/lang/String;

    new-instance v0, Lcom/tencent/liteav/videobase/utils/m;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mFrameQueue:Lcom/tencent/liteav/videobase/utils/m;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mStreamType:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    return-void
.end method

.method private createBlackFrameIDRNalu(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;
    .locals 8

    new-instance v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;-><init>()V

    sget-object v1, Lcom/tencent/liteav/videobase/common/c;->b:Lcom/tencent/liteav/videobase/common/c;

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/c;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v1, Lcom/tencent/liteav/videobase/common/d;->b:Lcom/tencent/liteav/videobase/common/d;

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/d;

    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeCreateBlackFrameIDRBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mVideoEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-wide v4, v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    iput-wide v4, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p1

    iput p1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    return-object v0
.end method

.method private static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createEncodedVideoFrameCallFromNative(Ljava/nio/ByteBuffer;IIIIJJJIIJJJZI)Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;
    .locals 3

    new-instance v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;-><init>()V

    invoke-static {p1}, Lcom/tencent/liteav/videobase/common/c;->a(I)Lcom/tencent/liteav/videobase/common/c;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/c;

    invoke-static {p2}, Lcom/tencent/liteav/videobase/common/CodecType;->a(I)Lcom/tencent/liteav/videobase/common/CodecType;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-static {p3}, Lcom/tencent/liteav/videobase/common/d;->a(I)Lcom/tencent/liteav/videobase/common/d;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/d;

    move-object v1, p0

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    move v1, p4

    iput v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    move v1, p11

    iput v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    move v1, p12

    iput v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    if-eqz p19, :cond_0

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$ackRPSRecvFrameIndex$5(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;II)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeSetRPSRefBitmap(JII)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$encodeFrame$2(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mFrameQueue:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/utils/m;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isBlackFrame()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->createBlackFrameIDRNalu(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v8

    invoke-static/range {v3 .. v9}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeEncodeFrame(JLjava/nio/ByteBuffer;IIJ)I

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p1, v2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->A:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mStreamType:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iget p0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$initialize$0(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)V
    .locals 4

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeCreate(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$restartIDRFrame$6(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeRestartIDR(J)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setBitrate$7(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;I)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeSetBitrate(JI)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setFps$8(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;I)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeSetFps(JI)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setRPSIFrameFPS$3(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;I)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeSetRpsIdrFps(JI)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setRPSNearestREFSize$4(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;I)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeSetNearestRPS(JI)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$signalEndOfStream$9(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)V
    .locals 2

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mListener:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$start$1(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;Lcom/tencent/liteav/videoproducer/encoder/br$a;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mListener:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mVideoEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {v0, v1, p2}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeStart(JLcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)I

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mTAG:Ljava/lang/String;

    const-string p1, "start encoder"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$stopSync$10(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeStop(J)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mListener:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mTAG:Ljava/lang/String;

    const-string v0, "stop encoder"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$uninitialize$11(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mNativeEncodeWrapper:J

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mTAG:Ljava/lang/String;

    const-string v0, "destroy encode wrapper"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeCreate(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)J
.end method

.method private static native nativeCreateBlackFrameIDRBuffer()Ljava/nio/ByteBuffer;
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEncodeFrame(JLjava/nio/ByteBuffer;IIJ)I
.end method

.method public static native nativeIsSoftwareHevcEncoderSupport()Z
.end method

.method private static native nativeRestartIDR(J)V
.end method

.method private static native nativeSetBitrate(JI)V
.end method

.method private static native nativeSetFps(JI)V
.end method

.method private static native nativeSetNearestRPS(JI)I
.end method

.method private static native nativeSetRPSRefBitmap(JII)I
.end method

.method private static native nativeSetRpsIdrFps(JI)V
.end method

.method private static native nativeStart(JLcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)I
.end method

.method private static native nativeStop(J)I
.end method

.method private onEncodedFail()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mListener:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$a;->j:Lcom/tencent/liteav/videobase/videobase/h$a;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V

    :cond_0
    return-void
.end method

.method private onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mListener:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_0
    return-void
.end method

.method private onRpsFrameRateChanged(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mListener:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->a(ZI)V

    :cond_0
    return-void
.end method

.method private runOrPostToWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public ackRPSRecvFrameIndex(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ap;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;II)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public encodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mFrameQueue:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/m;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/am;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mTAG:Ljava/lang/String;

    const-string v0, "pixelFrame pixelFormat not I420 "

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized initialize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "software-encoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInputQueueFull()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mFrameQueue:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/m;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public restartIDRFrame()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/aq;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ar;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFps(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/as;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRPSIFrameFPS(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/an;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRPSNearestREFSize(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ao;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signalEndOfStream()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mTAG:Ljava/lang/String;

    const-string v1, "signalEndOfStream"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ai;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    invoke-static {p0, p2, v0}, Lcom/tencent/liteav/videoproducer/encoder/al;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;Lcom/tencent/liteav/videoproducer/encoder/br$a;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopSync(J)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/aj;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized uninitialize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ak;->a(Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->runOrPostToWorkThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->quitLooper()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
