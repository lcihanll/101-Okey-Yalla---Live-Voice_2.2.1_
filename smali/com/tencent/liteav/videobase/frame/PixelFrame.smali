.class public Lcom/tencent/liteav/videobase/frame/PixelFrame;
.super Lcom/tencent/liteav/videobase/frame/k;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field protected mBuffer:Ljava/nio/ByteBuffer;

.field private mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

.field private mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

.field protected mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

.field protected mData:[B

.field protected mGLContext:Ljava/lang/Object;

.field protected mHeight:I

.field private mIsMirrorHorizontal:Z

.field private mIsMirrorVertical:Z

.field private mMatrix:[F

.field protected mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

.field protected mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field protected mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field protected mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

.field private mRotation:Lcom/tencent/liteav/base/util/Rotation;

.field protected mTextureId:I

.field private mTimestamp:J

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videobase/frame/k;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    sget-object v2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    iput-boolean v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    new-instance v0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    new-instance v0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7

    invoke-static {p4}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v5

    invoke-static {p5}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/g;IIILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videobase/frame/k;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    sget-object v2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    iput-boolean v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    new-instance v0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    new-instance v0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->copy(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method protected constructor <init>(Lcom/tencent/liteav/videobase/frame/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/g<",
            "+",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videobase/frame/k;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/g;IIILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/g<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;III",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videobase/frame/k;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    iput p2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iput p3, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    iput-object p6, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iput-object p5, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne p5, p1, :cond_0

    invoke-static {p4}, Lcom/tencent/liteav/videobase/utils/j;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    return-void

    :cond_0
    invoke-static {p4}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/g;IILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/g<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;II",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne p5, v0, :cond_0

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    :goto_0
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/g;IIILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    return-void
.end method

.method public static createFromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    return-object v1
.end method

.method private getColorRangeValue()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->getValue()I

    move-result v0

    return v0
.end method

.method private getColorSpaceValue()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->getValue()I

    move-result v0

    return v0
.end method

.method private getPixelBufferTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget v0, v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->mValue:I

    return v0
.end method

.method private getPixelFormatTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->getValue()I

    move-result v0

    return v0
.end method

.method private getRotationValue()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    iget v0, v0, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    return v0
.end method

.method public static releasePixelFrames(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4

    iget-wide v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    iget v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iput v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iget v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    iput v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    iget-boolean v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    iget-boolean v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    iget v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    iput v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    iget-object p1, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getColorRange()Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    return-object v0
.end method

.method public getColorSpace()Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    return-object v0
.end method

.method public getConsumerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    return-object v0
.end method

.method public getGLContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getGLContextNativeHandle()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->getGLContextNativeHandle(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    return v0
.end method

.method public getMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    return-object v0
.end method

.method public getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    return-object v0
.end method

.method public getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    return-object v0
.end method

.method public getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    return-object v0
.end method

.method public getProducerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    return-object v0
.end method

.method public getRotation()Lcom/tencent/liteav/base/util/Rotation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    return v0
.end method

.method public hasTransformParams()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    sget-object v1, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFrameDataValid()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isMirrorHorizontal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    return v0
.end method

.method public isMirrorVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    return v0
.end method

.method public postRotate(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 1

    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->swapWidthHeight()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    iget v0, v0, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    iget p1, p1, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    invoke-static {v0}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-void
.end method

.method protected reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    return-void
.end method

.method public retain()I
    .locals 1

    invoke-super {p0}, Lcom/tencent/liteav/videobase/frame/k;->retain()I

    move-result v0

    return v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setColorRange(Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorRange:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    return-void
.end method

.method public setColorSpace(Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mColorSpace:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    return-void
.end method

.method public setConsumerChainTimestamp(Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mConsumerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    return-void
.end method

.method public setGLContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    return-void
.end method

.method public setMatrix([F)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    return-void
.end method

.method public setMetaData(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    return-void
.end method

.method public setMirrorHorizontal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    return-void
.end method

.method public setMirrorVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    return-void
.end method

.method public setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    return-void
.end method

.method public setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    return-void
.end method

.method public setProducerChainTimestamp(Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mProducerChainTimestamp:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    return-void
.end method

.method public setRotation(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/base/util/Rotation;

    return-void
.end method

.method public setTextureId(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    return-void
.end method

.method public swapWidthHeight()V
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iget v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iput v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    return-void
.end method
