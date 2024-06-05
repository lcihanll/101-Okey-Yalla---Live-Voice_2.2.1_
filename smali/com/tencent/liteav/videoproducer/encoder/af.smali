.class public final Lcom/tencent/liteav/videoproducer/encoder/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field private final c:Landroid/media/MediaCodec;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private final f:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->a:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->b:Z

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->c:Landroid/media/MediaCodec;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iput-object p4, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->f:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    return-void
.end method

.method private a(II)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 3

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->d:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/media/MediaFormat;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "MediaFormatBuilder"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "profile"

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "get profile fail."

    invoke-static {v0, v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    const-string v4, "level"

    invoke-virtual {p0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "get level fail."

    invoke-static {v0, p0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->f:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isHardwareEncoderBitrateModeCBRSupported()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a()Landroid/media/MediaFormat;
    .locals 20

    move-object/from16 v1, p0

    const-string/jumbo v2, "value"

    const-string v3, "key"

    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    const-string v4, "bitrate"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->d:Ljava/lang/String;

    iget-object v7, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v7, v7, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget-object v8, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v8, v8, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-static {v0, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v7, v7, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    mul-int/lit16 v7, v7, 0x400

    invoke-virtual {v0, v4, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v7, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v7, v7, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    const-string v8, "frame-rate"

    invoke-virtual {v0, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v7, 0x7f000789

    const-string v8, "color-format"

    invoke-virtual {v0, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v7, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v7, v7, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v7, v7, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    :goto_0
    const-string v8, "i-frame-interval"

    invoke-virtual {v0, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object v7, v0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v7, v5

    :goto_2
    if-nez v7, :cond_4

    return-object v5

    :cond_4
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_7

    invoke-static {v8}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    iget-object v14, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->d:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->d:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    goto :goto_5

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v5

    :goto_5
    const/16 v9, 0x15

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v13

    if-lt v13, v9, :cond_1a

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getComplexityRange()Landroid/util/Range;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "complexity"

    invoke-virtual {v7, v14, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    iget-boolean v13, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->b:Z

    if-eqz v13, :cond_12

    iget-object v13, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v13, v13, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iget-object v14, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v14, v14, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v15, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v14, v15, :cond_9

    const/4 v14, 0x1

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_a

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v14

    if-lt v14, v9, :cond_a

    goto :goto_7

    :cond_a
    if-nez v13, :cond_b

    :goto_7
    const/4 v13, 0x1

    goto :goto_8

    :cond_b
    sget-object v14, Lcom/tencent/liteav/videoproducer/encoder/af$1;->b:[I

    invoke-virtual {v13}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->ordinal()I

    move-result v13

    aget v13, v14, v13

    if-eq v13, v11, :cond_d

    if-eq v13, v12, :cond_c

    goto :goto_7

    :cond_c
    const/16 v13, 0x8

    goto :goto_8

    :cond_d
    const/4 v13, 0x2

    :goto_8
    const v15, 0x7fffffff

    iget-object v5, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->d:Ljava/lang/String;

    const-string/jumbo v14, "video/avc"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v14, 0x100

    const v15, 0x8000

    goto :goto_9

    :cond_e
    const/high16 v14, -0x80000000

    :goto_9
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v6, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_a
    if-ge v9, v6, :cond_11

    aget-object v11, v5, v9

    iget v8, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v8, v14, :cond_10

    iget v8, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-gt v8, v13, :cond_10

    iget v8, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-gt v8, v10, :cond_f

    iget v8, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v8, v10, :cond_10

    iget v8, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v8, v12, :cond_10

    :cond_f
    iget v8, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget v10, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v12, v10

    move v10, v8

    :cond_10
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x1

    goto :goto_a

    :cond_11
    const-string v5, "profile"

    invoke-virtual {v7, v5, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v5

    const/16 v6, 0x17

    if-lt v5, v6, :cond_12

    const-string v5, "level"

    invoke-virtual {v7, v5, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_12
    iget-boolean v5, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->a:Z

    if-eqz v5, :cond_1a

    iget-object v5, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v5, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    if-nez v5, :cond_14

    :cond_13
    :goto_b
    const/4 v5, 0x2

    goto :goto_c

    :cond_14
    sget-object v6, Lcom/tencent/liteav/videoproducer/encoder/af$1;->a:[I

    invoke-virtual {v5}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    const/4 v6, 0x2

    if-eq v5, v6, :cond_16

    const/4 v6, 0x3

    if-eq v5, v6, :cond_15

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    goto :goto_c

    :cond_16
    const/4 v5, 0x1

    :goto_c
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-direct {v1, v5, v6}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z

    move-result v8

    const-string v9, "bitrate-mode"

    if-eqz v8, :cond_17

    invoke-virtual {v7, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_d

    :cond_17
    iget-object v5, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v5, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    invoke-direct {v1, v5, v6}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v7, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_d

    :cond_18
    const/4 v5, 0x2

    invoke-direct {v1, v5, v6}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v7, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_d

    :cond_19
    const/4 v5, 0x2

    invoke-direct {v1, v5, v6}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v7, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1a
    :goto_d
    if-nez v7, :cond_1b

    :goto_e
    const/4 v5, 0x0

    goto :goto_f

    :cond_1b
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1c

    goto :goto_e

    :cond_1c
    invoke-static {v7}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(Landroid/media/MediaFormat;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v8, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->d:Ljava/lang/String;

    invoke-static {v8, v6, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    :goto_f
    if-eqz v5, :cond_1d

    move-object v0, v5

    :cond_1d
    const/4 v5, 0x4

    const-string v6, "MediaFormatBuilder"

    if-eqz v0, :cond_1f

    if-nez v7, :cond_1e

    goto :goto_10

    :cond_1e
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v8

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1f

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v7, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x3

    aput-object v0, v10, v11

    const-string v0, "bitrateRange=(%d, %d),bitrate=%d,clampBitrate=%d"

    invoke-static {v6, v0, v10}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v8, v9, :cond_1f

    invoke-virtual {v7, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1f
    :goto_10
    if-eqz v7, :cond_30

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v4, 0x17

    if-lt v0, v4, :cond_30

    invoke-static {v7}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(Landroid/media/MediaFormat;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v8, 0x3f800000    # 1.0f

    const-string v9, "height"

    const-string/jumbo v10, "width"

    if-eqz v7, :cond_25

    invoke-direct {v1, v4, v0}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    if-eqz v11, :cond_25

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v12

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v11

    if-eqz v12, :cond_25

    if-nez v11, :cond_20

    goto/16 :goto_11

    :cond_20
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v7, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    if-le v13, v14, :cond_21

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v15, v5, :cond_22

    :cond_21
    if-ge v13, v14, :cond_23

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v5, v15, :cond_23

    :cond_22
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v12, v11

    move-object v11, v5

    :cond_23
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v13, :cond_24

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v14, :cond_25

    :cond_24
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    int-to-float v15, v13

    mul-float v17, v15, v8

    div-float v5, v5, v17

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v18, v2

    int-to-float v2, v14

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v19, v2, v17

    div-float v8, v8, v19

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v15, v15, v5

    float-to-int v8, v15

    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    mul-float v5, v5, v2

    float-to-int v2, v5

    invoke-virtual {v7, v9, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v5, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v5, v8

    const/4 v2, 0x2

    aput-object v12, v5, v2

    const/4 v2, 0x3

    aput-object v11, v5, v2

    const-string/jumbo v2, "updateMediaFormatToUpperSize:srcWidth=%d,srcHeight=%d,upperW=%d,upperH=%d"

    invoke-static {v6, v2, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_25
    :goto_11
    move-object/from16 v18, v2

    :goto_12
    if-eqz v7, :cond_2d

    invoke-direct {v1, v4, v0}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v2

    if-eqz v5, :cond_2d

    if-nez v2, :cond_26

    goto/16 :goto_15

    :cond_26
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v8, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->c:Landroid/media/MediaCodec;

    if-nez v8, :cond_27

    :goto_13
    const/16 v16, 0x0

    goto :goto_14

    :cond_27
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v8

    const/16 v11, 0x15

    if-ge v8, v11, :cond_28

    goto :goto_13

    :cond_28
    iget-object v8, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->c:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v8

    iget-object v11, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->d:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    if-nez v8, :cond_29

    goto :goto_13

    :cond_29
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v8

    move-object/from16 v16, v8

    :goto_14
    if-eqz v16, :cond_2a

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v11

    if-eqz v8, :cond_2a

    if-eqz v11, :cond_2a

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_2d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gez v8, :cond_2b

    goto :goto_15

    :cond_2b
    invoke-virtual {v7, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gt v12, v8, :cond_2c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v12, v11, :cond_2d

    :cond_2c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    int-to-float v8, v8

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v14, v8, v13

    div-float/2addr v12, v14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    int-to-float v11, v11

    mul-float v13, v13, v11

    div-float/2addr v14, v13

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    mul-float v8, v8, v12

    float-to-int v8, v8

    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    mul-float v12, v12, v11

    float-to-int v8, v12

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v11, v8

    const/4 v5, 0x1

    aput-object v2, v11, v5

    const-string/jumbo v2, "updateMediaFormatToLowerSize:lowerW=%d,lowerH=%d"

    invoke-static {v6, v2, v11}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    :goto_15
    if-eqz v7, :cond_31

    invoke-direct {v1, v4, v0}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v5, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v5, v11

    const-string/jumbo v8, "widthAlignment=%d,heightAlignment=%d"

    invoke-static {v6, v8, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lt v2, v4, :cond_31

    if-lt v0, v4, :cond_31

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_31

    rem-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_2e

    goto :goto_16

    :cond_2e
    invoke-virtual {v7, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    div-int v8, v4, v2

    mul-int v8, v8, v2

    div-int v11, v5, v0

    mul-int v11, v11, v0

    if-ne v4, v8, :cond_2f

    if-eq v5, v11, :cond_31

    :cond_2f
    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v7, v9, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v9, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v9, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v9, v4

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v2

    const-string/jumbo v0, "updateMediaFormatWithAlignment,srcSize=(%d x %d),fixSize=(%d x %d),widthAlignment=%d,heightAlignment=%d"

    invoke-static {v6, v0, v9}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_30
    move-object/from16 v18, v2

    :cond_31
    :goto_16
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    if-eqz v0, :cond_32

    const/4 v12, 0x0

    :goto_17
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_32

    :try_start_0
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/af;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "setDeviceRelatedParams,index=%d,key=%s,value=%d"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v4, 0x3

    :try_start_1
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v9, 0x0

    :try_start_2
    aput-object v8, v5, v9

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v10, 0x1

    :try_start_3
    aput-object v8, v5, v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v8, v18

    :try_start_4
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v13, 0x2

    :try_start_5
    aput-object v11, v5, v13

    invoke-static {v6, v2, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1c

    :catchall_0
    move-exception v0

    goto :goto_1b

    :catchall_1
    move-exception v0

    goto :goto_1a

    :catchall_2
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_1a

    :catchall_3
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_19

    :catchall_4
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_18

    :catchall_5
    move-exception v0

    move-object/from16 v8, v18

    const/4 v4, 0x3

    :goto_18
    const/4 v9, 0x0

    :goto_19
    const/4 v10, 0x1

    :goto_1a
    const/4 v13, 0x2

    :goto_1b
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "set mediaCodec device related params failed,index="

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v18, v8

    goto :goto_17

    :cond_32
    return-object v7
.end method
