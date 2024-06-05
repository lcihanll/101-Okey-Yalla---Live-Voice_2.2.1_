.class public Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

.field private mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceTextureHolder_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mTag:Ljava/lang/String;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p2, :cond_0

    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method static synthetic lambda$onFrameAvailable$0(Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTransformMatrix(ZFFFF)[F
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mTag:Ljava/lang/String;

    const-string p2, "getTransformMatrix, surface texture is released!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p3, p1}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {v1, v2, p2, p3, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p4, p1}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p5, p1}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    invoke-static {v1, v2, p4, p5, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_4
    return-object v1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videobase/utils/s;->a(Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;Landroid/graphics/SurfaceTexture;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mTag:Ljava/lang/String;

    const-string p2, "setDefaultBufferSize, surface texture is released!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mTag:Ljava/lang/String;

    const-string p2, "setOnFrameAvailableListener, surface texture is released!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v0, p2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result p1

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mCallbackHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public updateTexImage()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/SurfaceTextureHolder;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "updateTexImage, surface texture is released!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method
