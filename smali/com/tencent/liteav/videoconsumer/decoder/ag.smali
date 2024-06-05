.class public final Lcom/tencent/liteav/videoconsumer/decoder/ag;
.super Lcom/tencent/liteav/videoconsumer/decoder/ad;
.source "SourceFile"


# instance fields
.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/tencent/liteav/videoconsumer/decoder/ad;-><init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->i:I

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->j:I

    const-string p1, "MediaCodecOutputBufferDecoder"

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private static a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->nativeCopyYuvFromByteBufferToByteBuffer(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected final a(Landroid/media/MediaCodec;)V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/media/MediaFormat;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "decode output format changed: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->i:I

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->j:I

    const-string/jumbo v2, "stride"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->i:I

    :cond_0
    const-string v2, "slice-height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->j:I

    :cond_1
    iget p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->i:I

    iget p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->j:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->j:I

    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;I)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a:Ljava/lang/String;

    const-string v4, "meet end of stream."

    invoke-static {v2, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    invoke-interface {v2, v7, v6}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Z)V

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v1, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v15

    const-string v14, "color-format"

    invoke-virtual {v15, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    const/16 v13, 0x13

    if-nez v4, :cond_2

    :goto_0
    move-object v4, v7

    move-object v6, v14

    const/16 v7, 0x13

    goto/16 :goto_2

    :cond_2
    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v9, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->c:Lcom/tencent/liteav/base/util/Size;

    iget v9, v9, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v10, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->c:Lcom/tencent/liteav/base/util/Size;

    iget v10, v10, Lcom/tencent/liteav/base/util/Size;->height:I

    mul-int v9, v9, v10

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    if-nez v16, :cond_3

    goto :goto_0

    :cond_3
    if-ne v8, v13, :cond_4

    iget-object v8, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->c:Lcom/tencent/liteav/base/util/Size;

    iget v12, v8, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v8, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->c:Lcom/tencent/liteav/base/util/Size;

    iget v11, v8, Lcom/tencent/liteav/base/util/Size;->height:I

    iget v10, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->i:I

    iget v9, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->j:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v4

    move/from16 v19, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move-object/from16 v10, v16

    move/from16 v20, v11

    move/from16 v11, v18

    move/from16 v18, v12

    move/from16 v12, v17

    const/16 v7, 0x13

    move/from16 v13, v18

    move-object v6, v14

    move/from16 v14, v20

    invoke-static/range {v8 .. v14}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    mul-int v19, v19, v17

    add-int/lit8 v21, v19, 0x0

    mul-int v22, v18, v20

    add-int/lit8 v23, v22, 0x0

    div-int/lit8 v17, v17, 0x2

    div-int/lit8 v18, v18, 0x2

    div-int/lit8 v20, v20, 0x2

    move/from16 v9, v21

    move/from16 v11, v23

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v20

    invoke-static/range {v8 .. v14}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    div-int/lit8 v19, v19, 0x4

    add-int v9, v21, v19

    div-int/lit8 v22, v22, 0x4

    add-int v11, v23, v22

    invoke-static/range {v8 .. v14}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    goto :goto_1

    :cond_4
    move-object v6, v14

    const/16 v7, 0x13

    const/16 v9, 0x15

    if-ne v8, v9, :cond_5

    iget-object v8, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->c:Lcom/tencent/liteav/base/util/Size;

    iget v14, v8, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v8, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->c:Lcom/tencent/liteav/base/util/Size;

    iget v13, v8, Lcom/tencent/liteav/base/util/Size;->height:I

    iget v12, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->i:I

    iget v11, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->j:I

    const/4 v9, 0x0

    const/16 v17, 0x0

    move-object v8, v4

    move-object/from16 v10, v16

    move/from16 v18, v11

    move/from16 v11, v17

    move/from16 v17, v12

    move/from16 v19, v13

    move v13, v14

    move/from16 v20, v14

    move/from16 v14, v19

    invoke-static/range {v8 .. v14}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    mul-int v12, v17, v18

    add-int/lit8 v9, v12, 0x0

    mul-int v14, v20, v19

    add-int/lit8 v11, v14, 0x0

    div-int/lit8 v14, v19, 0x2

    move/from16 v12, v17

    move/from16 v13, v20

    invoke-static/range {v8 .. v14}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v4, v16

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_6

    return v5

    :cond_6
    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(I)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    new-instance v10, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v10}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iget-object v11, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->c:Lcom/tencent/liteav/base/util/Size;

    iget v11, v11, Lcom/tencent/liteav/base/util/Size;->width:I

    invoke-virtual {v10, v11}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    iget-object v11, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->c:Lcom/tencent/liteav/base/util/Size;

    iget v11, v11, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v10, v11}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v10, v8, v9}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v10, v8}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    invoke-virtual {v10, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    if-ne v2, v7, :cond_8

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    :goto_3
    invoke-virtual {v10, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    const-string v2, "color-range"

    invoke-static {v15, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    goto :goto_4

    :cond_9
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    :goto_4
    invoke-virtual {v10, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setColorRange(Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;)V

    const-string v2, "color-standard"

    invoke-static {v15, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_a

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    goto :goto_5

    :cond_a
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    :goto_5
    invoke-virtual {v10, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setColorSpace(Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V

    move-object v7, v10

    :goto_6
    if-eqz v7, :cond_b

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    invoke-interface {v2, v7, v5}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Z)V

    goto :goto_7

    :cond_b
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v15, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "output color format(%d) is unknown"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->g:Lcom/tencent/liteav/base/b/b;

    const-string v6, "handleOutputBuffer"

    invoke-virtual {v4, v6}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    iget-object v6, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v2, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/ag;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    sget-object v6, Lcom/tencent/liteav/videobase/videobase/h$c;->t:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-interface {v4, v6, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v1, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v5
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
    .locals 2

    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    const-string v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v1, "color-format"

    invoke-virtual {p2, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/videoconsumer/decoder/am;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
