.class public final Lcom/tencent/liteav/videoconsumer/renderer/k;
.super Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;
.source "SourceFile"


# instance fields
.field a:Landroid/view/TextureView;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final d:Lcom/tencent/liteav/base/b/b;

.field private final e:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

.field private final f:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private final g:Lcom/tencent/liteav/base/util/Size;

.field private h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:Z

.field private k:Landroid/graphics/Matrix;

.field private l:Landroid/graphics/SurfaceTexture;

.field private final m:Lcom/tencent/liteav/base/util/Size;

.field private final n:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/view/TextureView;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextureViewRenderHelper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    new-instance v2, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v2}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/base/b/b;

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Lcom/tencent/liteav/base/util/Size;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->k:Landroid/graphics/Matrix;

    new-instance v3, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v3}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->m:Lcom/tencent/liteav/base/util/Size;

    new-instance v3, Lcom/tencent/liteav/videoconsumer/renderer/k$1;

    invoke-direct {v3, p0}, Lcom/tencent/liteav/videoconsumer/renderer/k$1;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/k;)V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/view/TextureView$SurfaceTextureListener;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-nez p1, :cond_0

    const-string/jumbo p1, "textureView is null."

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "construct,textureView="

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/m;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/view/TextureView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextureViewRenderHelper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    new-instance v2, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v2}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/base/b/b;

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Lcom/tencent/liteav/base/util/Size;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->k:Landroid/graphics/Matrix;

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->m:Lcom/tencent/liteav/base/util/Size;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/k$1;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/renderer/k$1;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/k;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/view/TextureView$SurfaceTextureListener;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-nez p1, :cond_0

    const-string/jumbo p1, "txCloudVideoView is null."

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "construct,txCloudVideoView="

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/view/TextureView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/l;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    const-string v2, "error setting saved SurfaceTexture."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;

    :cond_1
    :goto_1
    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->l:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;->onSurfaceDestroy()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/TextureView;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    const-string v0, "setup,textureView is null."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup,textureView="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    const-string v1, "setup,textureView not available."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Landroid/view/TextureView;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Landroid/view/TextureView;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/view/TextureView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/view/TextureView;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/k;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->addView(Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)V

    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/view/TextureView;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/k;Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release,mTextureView="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/view/TextureView$SurfaceTextureListener;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "clearLastImage="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mHasFirstFrameRendered="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->removeView(Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;Z)V

    :cond_3
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    return-void
.end method

.method private b(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->l:Landroid/graphics/SurfaceTexture;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->l:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;->onSurfaceChanged(Landroid/view/Surface;Z)V

    :cond_1
    return-void
.end method

.method private declared-synchronized b(Landroid/view/TextureView;)V
    .locals 11

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v3}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v3, v1

    if-gez v7, :cond_3

    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v7, v8, :cond_2

    :goto_0
    div-double/2addr v3, v1

    move-wide v1, v5

    move-wide v5, v3

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v7, v8, :cond_5

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v7, v8, :cond_4

    :goto_1
    div-double/2addr v1, v3

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v7, v8, :cond_5

    goto :goto_0

    :cond_5
    move-wide v1, v5

    :goto_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    double-to-float v4, v5

    double-to-float v7, v1

    iget v8, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v10, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    invoke-virtual {v3, v4, v7, v8, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v4}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->postInvalidate()V

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v7, "updateTextureViewMatrix"

    invoke-virtual {v4, v7}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    const-string/jumbo v8, "view: %s, scaleX: %.2f, scaleY: %.2f, frame: %s, view: %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 p1, 0x1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v9, p1

    const/4 p1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, p1

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Lcom/tencent/liteav/base/util/Size;

    aput-object v1, v9, p1

    const/4 p1, 0x4

    aput-object v0, v9, p1

    invoke-static {v4, v7, v8, v9}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->k:Landroid/graphics/Matrix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    const-string/jumbo v0, "view is not available when textureView is null"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    aput-object v4, v3, v2

    invoke-virtual {v4}, Landroid/view/TextureView;->isAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->isShown()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "%s is not available when surface available:%b, isShown:%b"

    invoke-static {v0, p0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/view/TextureView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Landroid/view/TextureView;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/b/b;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/base/b/b;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoconsumer/renderer/k;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->m:Lcom/tencent/liteav/base/util/Size;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    invoke-interface {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;->onRequestRedraw(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/liteav/videoconsumer/renderer/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    return p0
.end method

.method static synthetic j(Lcom/tencent/liteav/videoconsumer/renderer/k;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/CustomHandler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    return-object p0
.end method

.method static synthetic l(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->removeDeprecatedViews(Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final checkViewAvailability()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/o;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getTransformMatrix(II)Landroid/graphics/Matrix;
    .locals 3

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->k:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    int-to-float p2, p2

    div-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object v0
.end method

.method public final isUsingTextureView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final release(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/n;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized updateVideoFrameInfo(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;IIZ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne p4, p1, :cond_0

    iget-object p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Lcom/tencent/liteav/base/util/Size;

    iget p4, p4, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne p2, p4, :cond_0

    iget-object p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Lcom/tencent/liteav/base/util/Size;

    iget p4, p4, Lcom/tencent/liteav/base/util/Size;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, p4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
