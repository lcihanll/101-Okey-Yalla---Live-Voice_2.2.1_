.class public final Lcom/tencent/liteav/videoconsumer/renderer/f;
.super Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final c:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

.field private d:Landroid/view/SurfaceView;

.field private final e:Lcom/tencent/liteav/base/util/Size;

.field private final f:Lcom/tencent/liteav/base/util/Size;

.field private g:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private h:Z

.field private final i:Landroid/view/SurfaceHolder$Callback;

.field private final j:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceViewRenderHelper_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/base/util/Size;

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->f:Lcom/tencent/liteav/base/util/Size;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->g:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->h:Z

    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/f$1;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/renderer/f$1;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/f;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->i:Landroid/view/SurfaceHolder$Callback;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/f$2;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/renderer/f$2;-><init>(Lcom/tencent/liteav/videoconsumer/renderer/f;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->j:Landroid/view/View$OnLayoutChangeListener;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->c:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    if-nez p1, :cond_0

    const-string/jumbo p1, "surfaceView is null."

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/g;->a(Lcom/tencent/liteav/videoconsumer/renderer/f;Landroid/view/SurfaceView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->c:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;->onSurfaceDestroy()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->c:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;->onSurfaceChanged(Landroid/view/Surface;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/f;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/f;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/f;->a(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/f;Landroid/view/SurfaceView;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "construct,surface=%s,Size(%dx%d)"

    invoke-static {v2, v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/f;->a(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    const-string v1, "construct,surfaceView not valid."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->i:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private b()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    new-instance v1, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v2}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->f:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v2}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->j:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->f:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/Size;->set(Lcom/tencent/liteav/base/util/Size;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->g:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, v8, :cond_3

    :goto_0
    div-double/2addr v4, v2

    move-wide v2, v6

    move-wide v6, v4

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->g:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, v8, :cond_6

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->g:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, v8, :cond_5

    :goto_1
    div-double/2addr v2, v4

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->g:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, v8, :cond_6

    goto :goto_0

    :cond_6
    move-wide v2, v6

    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, v6

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->getHeight()I

    move-result v1

    int-to-double v4, v1

    mul-double v4, v4, v2

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_7
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "adjust view size to %d*%d"

    invoke-static {v1, v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/f;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    const-string/jumbo v0, "view is not available when surfaceView is null"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    aput-object p0, v4, v2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isShown()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v1

    const/4 p0, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, p0

    const-string p0, "%s is not available when isShown:%b, surface isValid:%b"

    invoke-static {v3, p0, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/f;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release,mSurfaceView="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/f;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->i:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->d:Landroid/view/SurfaceView;

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoconsumer/renderer/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoconsumer/renderer/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/f;->a()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/videoconsumer/renderer/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->h:Z

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoconsumer/renderer/f;)Lcom/tencent/liteav/base/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->f:Lcom/tencent/liteav/base/util/Size;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/liteav/videoconsumer/renderer/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/f;->b()V

    return-void
.end method


# virtual methods
.method public final checkViewAvailability()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/i;->a(Lcom/tencent/liteav/videoconsumer/renderer/f;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getTransformMatrix(II)Landroid/graphics/Matrix;
    .locals 3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

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

    const/4 v0, 0x0

    return v0
.end method

.method public final release(Z)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/h;->a(Lcom/tencent/liteav/videoconsumer/renderer/f;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateVideoFrameInfo(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->g:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->h:Z

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput-boolean p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->h:Z

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->g:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->e:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->h:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/f;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/j;->a(Lcom/tencent/liteav/videoconsumer/renderer/f;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
