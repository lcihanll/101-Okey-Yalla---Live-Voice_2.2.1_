.class public Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/bk;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftwareVideoDecoder"


# instance fields
.field private final mIsUseHevc:Z

.field private mListener:Lcom/tencent/liteav/videoconsumer/decoder/bl;

.field private mNativeVideoDecoderWrapper:J

.field private mPixelFramePool:Lcom/tencent/liteav/videobase/frame/i;

.field private final mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mIsUseHevc:Z

    return-void
.end method

.method private getByteBufferFromPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->i()V

    :cond_0
    return-void
.end method

.method private static native nativeAbandonDecodingFrames(J)V
.end method

.method private static native nativeCreate(Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;)J
.end method

.method private static native nativeDecodeFrame(JLcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIJJ)I
.end method

.method private static native nativeDestroy(J)V
.end method

.method public static native nativeIsRpsDecodeSupport()Z
.end method

.method public static native nativeIsSoftwareHevcDecoderSupport()Z
.end method

.method private static native nativeStart(JZ)I
.end method

.method private static native nativeStop(J)I
.end method

.method private obtainPixelFrame(IIIIJII)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 3

    invoke-static {p1}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SoftwareVideoDecoder"

    if-nez v0, :cond_0

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$c;->o:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "unknown format:"

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "obtainPixelFrame formatType: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mPixelFramePool:Lcom/tencent/liteav/videobase/frame/i;

    if-nez p1, :cond_1

    const-string p1, "obtainPixelFrame mPixelFramePool is null."

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p1, p2, p3, v1, v0}, Lcom/tencent/liteav/videobase/frame/i;->a(IILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    invoke-static {p4}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    invoke-virtual {p1, p5, p6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    invoke-static {p8}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setColorRange(Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;)V

    invoke-static {p7}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setColorSpace(Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V

    return-object p1
.end method

.method private onDecodedFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->n:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoDecode: decode error, errCode:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "decode failed."

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SoftwareVideoDecoder"

    invoke-static {p3, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_3
    return-void
.end method


# virtual methods
.method public abandonDecodingFrames()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "SoftwareVideoDecoder"

    const-string v1, "decoder has already stopped"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeAbandonDecodingFrames(J)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->j()V

    :cond_1
    return-void
.end method

.method public decode(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->k()V

    return v2

    :cond_1
    iget-object v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    iget-object v6, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/c;

    iget v7, v0, Lcom/tencent/liteav/videobase/common/c;->mValue:I

    iget-object v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    iget v8, v0, Lcom/tencent/liteav/videobase/common/CodecType;->mValue:I

    iget v9, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    iget-wide v10, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v12, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    move-object v5, p1

    invoke-static/range {v3 .. v13}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeDecodeFrame(JLcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIJJ)I

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/bk$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public setScene(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 0

    return-void
.end method

.method public setServerConfig(Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;)V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/bl;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const-wide/16 v2, 0x0

    const-string p1, "SoftwareVideoDecoder"

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string p2, "decoder is already started!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/frame/i;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mPixelFramePool:Lcom/tencent/liteav/videobase/frame/i;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeCreate(Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$c;->l:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v0, "VideoDecode: out of memory, Start decoder failed"

    invoke-direct {p0, p2, v0}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    const-string p2, "create native instance failed."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mIsUseHevc:Z

    invoke-static {v0, v1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeStart(JZ)I

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$c;->m:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v0, "VideoDecode: Start decoder failed"

    invoke-direct {p0, p2, v0}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    const-string p2, "Start software decoder failed."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$b;->F:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v1, 0x0

    const-string v2, "Start decoder success"

    invoke-interface {p2, v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "decoder Start success."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const-string v2, "SoftwareVideoDecoder"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const-string v0, "decoder has already stopped"

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mPixelFramePool:Lcom/tencent/liteav/videobase/frame/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/i;->b()V

    :cond_1
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeStop(J)I

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeDestroy(J)V

    iput-wide v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const-string v0, "decoder stop."

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uninitialize()V
    .locals 0

    return-void
.end method