.class public Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mCallerEGLContext:Landroid/opengl/EGLContext;

.field private mCallerEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mCallerEGLDrawSurface:Landroid/opengl/EGLSurface;

.field private mCallerEGLReadSurface:Landroid/opengl/EGLSurface;

.field private mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private final mLastFrameSize:Lcom/tencent/liteav/base/util/Size;

.field private mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

.field private mRenderEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field private mSharedEGLContext:Ljava/lang/Object;

.field private final mTAG:Ljava/lang/String;

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PixelFrameFactory_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mTAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mSharedEGLContext:Ljava/lang/Object;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLContext:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLReadSurface:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLDrawSurface:Landroid/opengl/EGLSurface;

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mLastFrameSize:Lcom/tencent/liteav/base/util/Size;

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    return-void
.end method

.method private copyTexture(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mLastFrameSize:Lcom/tencent/liteav/base/util/Size;

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mLastFrameSize:Lcom/tencent/liteav/base/util/Size;

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mLastFrameSize:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mLastFrameSize:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v1, :cond_4

    new-instance v1, Lcom/tencent/liteav/videobase/frame/j;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/d;->release()V

    return-object p1
.end method

.method private deepCopyDataToPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 3

    instance-of v0, p2, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/j;->a(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setData([B)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    return-object p1
.end method

.method private deepCopyTextureToPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 3

    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->saveCallerEGLContext()V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mSharedEGLContext:Ljava/lang/Object;

    invoke-static {v0, p2}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->uninitOpenGLComponents()V

    invoke-direct {p0, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->initRenderEGLContext(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->makeCurrent()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v0, "makeCurrent"

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mTAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "use origin texture when makeCurrent error"

    invoke-static {p2, v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->copyTexture(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->restoreCallerEGLContext()V

    return-object p1
.end method

.method private initRenderEGLContext(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mRenderEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mTAG:Ljava/lang/String;

    const-string v1, "initRenderEGLContext"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mSharedEGLContext:Ljava/lang/Object;

    new-instance v0, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mRenderEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/16 v1, 0x80

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2, v1, v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mRenderEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initEGLCore"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mTAG:Ljava/lang/String;

    const-string v2, "create EGLCore failed."

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private makeCurrent()Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mRenderEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v2, "makeCurrentNull"

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mTAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "makeCurrent on mEGLCore is null"

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v3, "makeCurrentError"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mTAG:Ljava/lang/String;

    const-string v4, "make current failed."

    invoke-static {v2, v3, v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private restoreCallerEGLContext()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLDrawSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLReadSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void

    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method private saveCallerEGLContext()V
    .locals 3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLContext:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLDisplay:Landroid/opengl/EGLDisplay;

    const/16 v0, 0x305a

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLReadSurface:Landroid/opengl/EGLSurface;

    const/16 v0, 0x3059

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mCallerEGLDrawSurface:Landroid/opengl/EGLSurface;

    :cond_1
    return-void
.end method

.method private shallowCopyDataToPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 1

    instance-of v0, p2, [B

    if-eqz v0, :cond_0

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setData([B)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    return-object p1
.end method


# virtual methods
.method public declared-synchronized create(IIIJIIILjava/lang/Object;Ljava/lang/Object;Z)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    invoke-static {p3}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    invoke-virtual {v0, p4, p5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    invoke-virtual {v0, p9}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    invoke-virtual {v0, p8}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    invoke-static {p6}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    invoke-static {p7}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object p1

    sget-object p2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq p1, p2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object p1

    sget-object p2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p9}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->deepCopyTextureToPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p11, :cond_2

    invoke-direct {p0, v0, p10}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->deepCopyDataToPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p10}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->shallowCopyDataToPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized uninitOpenGLComponents()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mRenderEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "uninitOpenGLComponents"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->makeCurrent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    iput-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mRenderEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    iput-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrameFactory;->mRenderEGLCore:Lcom/tencent/liteav/videobase/egl/EGLCore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
