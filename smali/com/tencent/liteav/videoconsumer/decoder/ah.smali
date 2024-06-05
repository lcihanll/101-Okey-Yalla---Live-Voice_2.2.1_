.class public final Lcom/tencent/liteav/videoconsumer/decoder/ah;
.super Lcom/tencent/liteav/videoconsumer/decoder/ad;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private i:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field private j:I

.field private k:Lcom/tencent/liteav/videobase/frame/l;

.field private l:Landroid/graphics/SurfaceTexture;

.field private m:Landroid/view/Surface;

.field private n:Lcom/tencent/liteav/videobase/frame/j;

.field private o:Lcom/tencent/liteav/videobase/frame/e;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/tencent/liteav/videoconsumer/decoder/ad;-><init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->j:I

    const-string p1, "MediaCodecOutputOESTextureDecoder"

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/decoder/ah;Landroid/graphics/SurfaceTexture;)V
    .locals 10

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->l:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_8

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ah;->c()Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->k:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/l;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    const-string/jumbo v2, "textureholderpool obtain interrupted."

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    const v2, 0x8d65

    iget v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->j:I

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->c:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->c:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->i:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/l$b;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0x10

    new-array v3, v3, [F

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->g:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v6, "updateImage"

    invoke-virtual {v5, v6}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "updateTexImage exception: "

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->d:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result p1

    const/16 v6, 0x16

    if-gt p1, v6, :cond_7

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p1

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v7, :cond_4

    new-instance v8, Lcom/tencent/liteav/base/util/Size;

    iget v9, v7, Lcom/tencent/liteav/videobase/frame/j;->a:I

    iget v7, v7, Lcom/tencent/liteav/videobase/frame/j;->b:I

    invoke-direct {v8, v9, v7}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iget v7, v8, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne v7, p1, :cond_3

    iget v7, v8, Lcom/tencent/liteav/base/util/Size;->height:I

    if-eq v7, v6, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->n:Lcom/tencent/liteav/videobase/frame/j;

    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->n:Lcom/tencent/liteav/videobase/frame/j;

    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    invoke-direct {v0, p1, v6}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->n:Lcom/tencent/liteav/videobase/frame/j;

    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->o:Lcom/tencent/liteav/videobase/frame/e;

    if-nez v0, :cond_6

    new-instance v0, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->o:Lcom/tencent/liteav/videobase/frame/e;

    :cond_6
    invoke-static {v3, v3, p1, v6}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->o:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, p1, v6}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->n:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v0, v2, v6, p1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->i:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->release()V

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    move-object v2, v0

    :cond_7
    invoke-virtual {v2, v4, v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    invoke-interface {p0, v2, v3}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Z)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/l$b;->release()V

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_8
    :goto_2
    return-void
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "initGL"

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->i:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    const-string v0, "Decoder already started."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v1, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->i:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3, v4, v4}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->i:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->generateTextureOES()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->j:I

    new-instance p1, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->k:Lcom/tencent/liteav/videobase/frame/l;

    :try_start_1
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->j:I

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->l:Landroid/graphics/SurfaceTexture;

    new-instance p1, Landroid/view/Surface;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->l:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->m:Landroid/view/Surface;

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->l:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->g:Lcom/tencent/liteav/base/b/b;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "initialize gl components"

    invoke-static {p1, v0, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->g:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "surface"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    const-string v2, "create SurfaceTexture failed."

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->k:Lcom/tencent/liteav/videobase/videobase/h$c;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoDecode: insufficient resource, Start decoder failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Surface$OutOfResourcesException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->f:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->H:Lcom/tencent/liteav/videobase/videobase/i;

    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/h$c;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return v5

    :catch_1
    move-exception p1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->g:Lcom/tencent/liteav/base/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    const-string v2, "create EGLCore failed."

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->h:Lcom/tencent/liteav/videobase/videobase/h$c;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoDecode: create EGLCore failed errorCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/egl/f;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->f:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->H:Lcom/tencent/liteav/videobase/videobase/i;

    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/h$c;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return v5
.end method

.method private c()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->i:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->g:Lcom/tencent/liteav/base/b/b;

    const-string v2, "makeCurrent"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    const-string v3, "makeCurrent failed."

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a(Landroid/media/MediaCodec;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->m:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    const-string p2, "meet end of stream."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcom/tencent/liteav/videoconsumer/decoder/ad$b;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Z)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->m:Landroid/view/Surface;

    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/videoconsumer/decoder/am;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "configure mediacodec with "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->m:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ah;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->b()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize gl components"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->k:Lcom/tencent/liteav/videobase/frame/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->m:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->m:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->l:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->l:Landroid/graphics/SurfaceTexture;

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->o:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->o:Lcom/tencent/liteav/videobase/frame/e;

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->n:Lcom/tencent/liteav/videobase/frame/j;

    :cond_4
    iget v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->j:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->j:I

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->i:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ah;->i:Lcom/tencent/liteav/videobase/egl/EGLCore;

    :cond_5
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ai;->a(Lcom/tencent/liteav/videoconsumer/decoder/ah;Landroid/graphics/SurfaceTexture;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a(Ljava/lang/Runnable;)V

    return-void
.end method
