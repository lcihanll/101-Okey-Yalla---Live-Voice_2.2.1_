.class public final Lcom/tencent/liteav/videoconsumer/consumer/a;
.super Lcom/tencent/liteav/videoconsumer/renderer/r;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/consumer/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field c:Ljava/lang/Object;

.field private final d:Lcom/tencent/liteav/base/b/b;

.field private e:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field private f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field private g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field private h:Lcom/tencent/liteav/videobase/videobase/d;

.field private i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private j:Lcom/tencent/liteav/videobase/frame/j;

.field private k:Lcom/tencent/liteav/videobase/frame/e;

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/tencent/liteav/base/util/Rotation;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/r;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomRenderProcess_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:I

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->o:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->p:Z

    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Lcom/tencent/liteav/base/util/Rotation;

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->b:I

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string v3, "makeCurrentError"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "customRenderFrame makeCurrent error "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    const-string v1, "Uninit Opengl Components"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->d()V

    return-void
.end method

.method public final a(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->getGLErrorCount()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    sget-object p2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->a:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    invoke-direct {p0, v1, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string p2, "renderFailed"

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "render frame failed."

    invoke-static {p1, p2, v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->c:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    invoke-direct {p0, v1, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRenderRotation "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Lcom/tencent/liteav/base/util/Rotation;

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setScaleType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not support"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:Z

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "set custom render type pixelFormatType = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " pixelBufferType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 11

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string v1, "renderFrame"

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "renderFrame: pixelFrame is null."

    invoke-static {p1, v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v1, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getRenderRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorHorizontal()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->o:Z

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorVertical()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->p:Z

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    iget p1, p1, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Lcom/tencent/liteav/base/util/Rotation;

    iget v2, v2, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    add-int/2addr p1, v2

    rem-int/lit16 p1, p1, 0x168

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->o:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    :cond_3
    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->p:Z

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Lcom/tencent/liteav/base/util/Rotation;

    sget-object v3, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    if-eq p1, v3, :cond_5

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->q:Lcom/tencent/liteav/base/util/Rotation;

    sget-object v3, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-ne p1, v3, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    :cond_6
    iget p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->b:I

    sget v3, Lcom/tencent/liteav/videoconsumer/consumer/a$a;->a:I

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string v1, "contextCompare"

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "EGLCore context is not equal frame context or eglcore is null"

    invoke-static {p1, v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    iget p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->b:I

    sget v3, Lcom/tencent/liteav/videoconsumer/consumer/a$a;->a:I

    if-eq p1, v3, :cond_a

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v3

    if-eq p1, v3, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string v3, "recreateEGLCore"

    invoke-virtual {p1, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "recreate EGLCore."

    invoke-static {p1, v3, v5, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->d()V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->c()V

    :cond_a
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->e()Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->a:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    invoke-direct {p0, v1, p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    return-void

    :cond_b
    iget p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    if-ne p1, v3, :cond_c

    iget p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:I

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    if-eq p1, v3, :cond_d

    :cond_c
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:I

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:Z

    :cond_d
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videobase/frame/j;

    if-nez p1, :cond_e

    new-instance p1, Lcom/tencent/liteav/videobase/frame/j;

    iget v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:I

    iget v4, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    invoke-direct {p1, v3, v4}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videobase/frame/j;

    :cond_e
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videobase/frame/j;

    iget v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:I

    iget v4, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    invoke-virtual {p1, v3, v4}, Lcom/tencent/liteav/videobase/frame/j;->a(II)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    if-nez p1, :cond_f

    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    :cond_f
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    iget v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:I

    iget v4, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    invoke-virtual {p1, v3, v4}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p1

    new-instance v3, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v3, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    if-nez p1, :cond_10

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v4

    sget-object v5, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v4, v5, :cond_10

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v4

    sget-object v5, Lcom/tencent/liteav/base/util/Rotation;->c:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v4, v5, :cond_10

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v4

    iget v4, v4, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    sget-object v5, Lcom/tencent/liteav/base/util/Rotation;->c:Lcom/tencent/liteav/base/util/Rotation;

    iget v5, v5, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_10
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v4, :cond_11

    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v4, v3, v5, p1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    :cond_11
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getConsumerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/liteav/videobase/frame/d;->a(Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    if-nez v1, :cond_12

    new-instance v1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    :cond_12
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/videobase/d;

    if-nez v1, :cond_13

    new-instance v1, Lcom/tencent/liteav/videobase/videobase/d;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/videobase/d;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/videobase/d;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videobase/videobase/d;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:Z

    :cond_13
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:Z

    if-eqz v1, :cond_14

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->n:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v1, v0, p0}, Lcom/tencent/liteav/videobase/videobase/d;->a(ILcom/tencent/liteav/videobase/videobase/d$a;)V

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/videobase/d;

    new-instance v6, Lcom/tencent/liteav/videobase/videobase/a;

    iget v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->l:I

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->m:I

    invoke-direct {v6, v0, v1}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v8, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v9, 0x0

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/liteav/videobase/videobase/d;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/d$a;)V

    :cond_14
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v0, v3, v4, p1}, Lcom/tencent/liteav/videobase/videobase/d;->a(JLcom/tencent/liteav/videobase/frame/d;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->release()V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    const-string p2, "setDisplayView not support"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    const-string v0, "Stop"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/tencent/liteav/videoconsumer/consumer/a$a;->a:I

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->o:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setHorizontalMirror "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->o:Z

    return-void
.end method

.method final c()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string v2, "initGL"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "egl init sharedContext = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->c:Ljava/lang/Object;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string v3, "initError"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    const-string v4, "egl initialize failed."

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    return-void
.end method

.method final d()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string v3, "make"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "uninitializedEGL makeCurrent error "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->d:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v2, "uninitGL"

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->a:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "egl uninitializedEGL"

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videobase/frame/j;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->j:Lcom/tencent/liteav/videobase/frame/j;

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->k:Lcom/tencent/liteav/videobase/frame/e;

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/videobase/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1, p0}, Lcom/tencent/liteav/videobase/videobase/d;->a(ILcom/tencent/liteav/videobase/videobase/d$a;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/d;->a()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->h:Lcom/tencent/liteav/videobase/videobase/d;

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/a;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
