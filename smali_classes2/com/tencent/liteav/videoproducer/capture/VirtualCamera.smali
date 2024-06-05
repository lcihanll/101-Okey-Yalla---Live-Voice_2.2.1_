.class public final Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;
.super Lcom/tencent/liteav/videoproducer/capture/ax;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;
    }
.end annotation


# instance fields
.field private f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private g:Lcom/tencent/liteav/base/util/x;

.field private h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

.field private i:Z

.field private j:Z

.field private final k:Lcom/tencent/liteav/base/util/x$a;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/ax;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->i:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->j:Z

    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$1;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->k:Lcom/tencent/liteav/base/util/x$a;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget p1, p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->c:I

    div-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->d:I

    div-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    rem-int/2addr v1, v0

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-object p0
.end method

.method private e()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->c:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const-string v1, "VirtualCameraImpl"

    if-nez v0, :cond_0

    const-string v0, "Start virtual camera, mEGLCore is null!"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->i:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "virtual camera is started."

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->i:Z

    new-instance v2, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->c:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget v3, v3, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->c:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget v3, v3, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->d:I

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->c:I

    const/4 v4, 0x1

    const/16 v5, 0x40

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->d:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget-object v2, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    new-instance v2, Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;-><init>()V

    invoke-virtual {v2, v4}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setIsBlackFrame(Z)V

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v5, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMetaData(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget-object v5, v5, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    const-string v6, "Create new bitmap from bitmap fail "

    invoke-static {v1, v6, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Start virtual camera, bitmap:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->a:Landroid/graphics/Bitmap;

    if-eq v2, v1, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    new-instance v1, Lcom/tencent/liteav/base/util/x;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v2}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->k:Lcom/tencent/liteav/base/util/x$a;

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/base/util/x;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/x$a;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->g:Lcom/tencent/liteav/base/util/x;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->b:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->g:Lcom/tencent/liteav/base/util/x;

    const/16 v3, 0x3e8

    div-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/tencent/liteav/base/util/x;->a(II)V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "VirtualCameraImpl"

    const-string v1, "Stop virtual camera"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->g:Lcom/tencent/liteav/base/util/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/x;->a()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->g:Lcom/tencent/liteav/base/util/x;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->i:Z

    return-void
.end method


# virtual methods
.method protected final a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 3

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->e()V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$b;->v:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start virtual camera success params:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final b()V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->j:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->w:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    const-string v3, "Stop virtual camera success"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final pause()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f()V

    return-void
.end method

.method public final resume()V
    .locals 5

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->e()V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->j:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->u:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start virtual camera success params:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 4

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->i:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->j:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->f()V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->e()V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$b;->u:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start virtual camera success params:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->h:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
