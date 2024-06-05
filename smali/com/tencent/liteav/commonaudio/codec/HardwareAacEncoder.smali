.class public Lcom/tencent/liteav/commonaudio/codec/HardwareAacEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    sget v1, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper$a;->a:I

    invoke-direct {v0, v1}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacEncoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    return-void
.end method


# virtual methods
.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacEncoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->processFrame(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public init(III)Z
    .locals 1

    const-string v0, "audio/mp4a-latm"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "bitrate"

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "aac-profile"

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacEncoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method

.method public unInit()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacEncoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a()V

    return-void
.end method
