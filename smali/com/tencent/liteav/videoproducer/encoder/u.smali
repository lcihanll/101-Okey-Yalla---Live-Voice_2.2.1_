.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/r;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/r;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/u;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/u;-><init>(Lcom/tencent/liteav/videoproducer/encoder/r;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->f:Lcom/tencent/liteav/videobase/utils/k;

    invoke-interface {v1}, Lcom/tencent/liteav/videobase/utils/k;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->n:Lcom/tencent/liteav/videobase/egl/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, v2, Lcom/tencent/liteav/videobase/egl/c;->c:Ljava/lang/Object;

    invoke-static {v6, v3}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    iput-object v3, v2, Lcom/tencent/liteav/videobase/egl/c;->c:Ljava/lang/Object;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/r;->d()V

    :cond_2
    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->g:Landroid/view/Surface;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Object;Landroid/view/Surface;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/au;->d()V

    :try_start_0
    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->o:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/videobase/utils/n;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    new-instance v2, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v2, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getEncodeRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->postRotate(Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_4
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    sget-object v6, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v3, v6, :cond_7

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    sget-object v6, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-ne v3, v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2, v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    goto :goto_5

    :cond_7
    :goto_3
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v2, v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    :goto_5
    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v5, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-static {v4, v4, v3, v5}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->i:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->i:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    :cond_9
    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(J)V

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->k:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_a

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "timestamp is not increase. pre: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->k:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", cur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->k:J

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/liteav/videobase/egl/EGLCore;->setPresentationTime(J)V

    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/egl/EGLCore;->swapBuffers()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$c;->d:Lcom/tencent/liteav/videobase/videobase/h$c;

    iget-object v4, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VideoEncode: swapBuffer error, EGLCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/tencent/liteav/videobase/egl/f;->mErrorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/egl/f;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/egl/f;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->e:Lcom/tencent/liteav/base/b/b;

    const-string v4, "EGLError"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const-string v4, "makeCurrent failed."

    invoke-static {v3, v0, v4, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_c
    return-void
.end method
