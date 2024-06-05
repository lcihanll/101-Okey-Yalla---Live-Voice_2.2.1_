.class public final Lcom/tencent/liteav/videoproducer/producer/a;
.super Lcom/tencent/liteav/videobase/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/d$a;


# instance fields
.field final b:Lcom/tencent/liteav/videobase/utils/d;

.field c:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

.field d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field e:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field f:Z

.field private final g:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private final h:Lcom/tencent/liteav/base/util/Size;

.field private final i:Lcom/tencent/liteav/base/b/a;

.field private j:J

.field private k:J

.field private l:Lcom/tencent/liteav/videobase/frame/l;

.field private m:Lcom/tencent/liteav/videobase/videobase/d;

.field private n:Lcom/tencent/liteav/videobase/frame/j;

.field private o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private r:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private s:Z

.field private t:I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/a;-><init>()V

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/base/util/Size;

    new-instance v0, Lcom/tencent/liteav/videobase/utils/d;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->b:Lcom/tencent/liteav/videobase/utils/d;

    new-instance v0, Lcom/tencent/liteav/base/b/a;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->i:Lcom/tencent/liteav/base/b/a;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/producer/a;->j:J

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/producer/a;->k:J

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->f:Z

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->t:I

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setData([B)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    :cond_0
    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->t:I

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    iput v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->t:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(JLcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p3

    const-string v9, "CustomVideoProcessListenerAdapter"

    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/producer/a;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/d;->a()V

    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/producer/a;->c:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v0, v1, v12

    const-string v0, "TextureHolderPool obtain interrupted."

    invoke-static {v9, v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v10

    :goto_0
    if-nez v0, :cond_1

    return-object v8

    :cond_1
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/base/util/Size;

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/base/util/Size;

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iget-boolean v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->f:Z

    const/16 v13, 0x1908

    if-nez v2, :cond_4

    if-eqz v1, :cond_7

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/videobase/d;

    if-eqz v3, :cond_5

    const/16 v4, 0x65

    invoke-virtual {v3, v4, p0}, Lcom/tencent/liteav/videobase/videobase/d;->a(ILcom/tencent/liteav/videobase/videobase/d$a;)V

    new-instance v3, Lcom/tencent/liteav/videobase/videobase/a;

    invoke-direct {v3, v1, v2}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/videobase/d;

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/producer/a;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->e:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/16 v6, 0x65

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/videobase/videobase/d;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/d$a;)V

    :cond_5
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v10, v7, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/j;

    :cond_6
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/a;->c()V

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    invoke-static {v1, v2, v13, v13}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTexture(IIII)I

    move-result v1

    iput v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->t:I

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    iput-boolean v12, v7, Lcom/tencent/liteav/videoproducer/producer/a;->f:Z

    :cond_7
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v3

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/producer/a;->e:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    invoke-virtual {v1, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    const/4 v14, -0x1

    if-ne v5, v6, :cond_8

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v6

    if-ne v6, v14, :cond_8

    invoke-static {v2, v3, v13, v13}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTexture(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->getCurrentContext()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-eq v4, v6, :cond_9

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-eq v4, v6, :cond_9

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne v4, v6, :cond_c

    :cond_9
    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    mul-int v2, v2, v3

    if-ne v4, v6, :cond_a

    mul-int/lit8 v2, v2, 0x4

    goto :goto_3

    :cond_a
    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    :goto_3
    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v5, v3, :cond_b

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v3

    if-nez v3, :cond_b

    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/j;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setData([B)V

    goto :goto_4

    :cond_b
    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v5, v3, :cond_c

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_c

    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    :cond_c
    :goto_4
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isFrameDataValid()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l$b;->release()V

    return-object v8

    :cond_d
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/videobase/d;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3, v8}, Lcom/tencent/liteav/videobase/videobase/d;->a(JLcom/tencent/liteav/videobase/frame/d;)V

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-nez v1, :cond_e

    const-string v1, "mInputFrame is null"

    invoke-static {v9, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l$b;->release()V

    return-object v8

    :cond_e
    iget-object v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->copy(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->r:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->copy(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->c:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/producer/a;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->r:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-interface {v3, v4, v5}, Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;->onProcessFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/producer/a;->r:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_13

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_13

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v6

    if-ne v5, v6, :cond_13

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v3

    if-ne v5, v3, :cond_13

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v3

    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v3, v5, :cond_f

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v3

    if-eq v3, v14, :cond_11

    :cond_f
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v3

    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v3, v5, :cond_10

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_11

    :cond_10
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v3

    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v3, v5, :cond_12

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_11

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    goto :goto_6

    :cond_12
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-nez v3, :cond_14

    :cond_13
    const-string v3, "custom video preprocess receive bad data."

    invoke-static {v9, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_14
    if-nez v11, :cond_15

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l$b;->release()V

    move-object v0, v8

    goto/16 :goto_9

    :cond_15
    iget v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->t:I

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/producer/a;->r:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    const/16 v9, 0xde1

    if-eq v5, v6, :cond_17

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->e:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne v5, v6, :cond_17

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v5, v6, :cond_16

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_7

    :cond_16
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_7
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v11

    invoke-static {v13, v5, v6, v11, v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->loadTexture(ILjava/nio/Buffer;III)I

    move-result v3

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    invoke-virtual {v0, v9, v3, v5, v4}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    goto :goto_8

    :cond_17
    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v5, :cond_18

    new-instance v5, Lcom/tencent/liteav/videobase/frame/j;

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v11

    invoke-direct {v5, v6, v11}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/j;

    :cond_18
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v6

    invoke-virtual {v0, v9, v3, v5, v6}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    :goto_8
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->d()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/liteav/videobase/frame/l$b;->e:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->e()Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/liteav/videobase/frame/l$b;->f:Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->f()Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/liteav/videobase/frame/l$b;->g:Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->j:J

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->j:J

    iget-wide v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->k:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->k:J

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->i:Lcom/tencent/liteav/base/b/a;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-wide v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->k:J

    const-wide/16 v5, 0x0

    cmp-long v8, v1, v5

    if-lez v8, :cond_1a

    iget-wide v8, v7, Lcom/tencent/liteav/videoproducer/producer/a;->j:J

    cmp-long v11, v8, v5

    if-gtz v11, :cond_19

    goto :goto_a

    :cond_19
    add-long/2addr v8, v1

    sub-long/2addr v8, v3

    div-long/2addr v8, v1

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/i;->t:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    :cond_1a
    :goto_a
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    iput-object v10, v7, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-object v0
.end method

.method public final a(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "CustomVideoProcessListenerAdapter"

    const-string v0, "Receive frame converted, but identity is invalid(%d)"

    invoke-static {p1, v0, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->s:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;->onGLContextCreated()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->s:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/l;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->r:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/videobase/d;->a()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/videobase/d;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/base/util/Size;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/d;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->c:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/a;->b(Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V

    return-void
.end method

.method public final b(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/base/util/Size;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    new-instance v0, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/l;

    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->r:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    new-instance v0, Lcom/tencent/liteav/videobase/videobase/d;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/videobase/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/videobase/d;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/c;->a(Lcom/tencent/liteav/videoproducer/producer/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b(Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->s:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;->onGLContextDestroy()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->s:Z

    :cond_0
    return-void
.end method
