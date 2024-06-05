.class final Lcom/tencent/liteav/videoconsumer/renderer/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/renderer/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoconsumer/renderer/k;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/k$1;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->l(Lcom/tencent/liteav/videoconsumer/renderer/k;)V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->c(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/b/b;

    move-result-object v0

    const-string/jumbo v1, "surfaceCreate"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->d(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "onSurfaceTextureAvailable, size: %dx%d"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->e(Lcom/tencent/liteav/videoconsumer/renderer/k;)Landroid/view/TextureView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/view/TextureView;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->f(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/Size;

    move-result-object p1

    iput p2, p1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->f(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/Size;

    move-result-object p1

    iput p3, p1, Lcom/tencent/liteav/base/util/Size;->height:I

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->d(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->h(Lcom/tencent/liteav/videoconsumer/renderer/k;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->e(Lcom/tencent/liteav/videoconsumer/renderer/k;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->c(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->c(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/b/b;

    move-result-object v0

    const-string/jumbo v1, "surfaceSizeChanged"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->d(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "onSurfaceTextureSizeChanged, size: %dx%d"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->e(Lcom/tencent/liteav/videoconsumer/renderer/k;)Landroid/view/TextureView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Lcom/tencent/liteav/videoconsumer/renderer/k;Landroid/view/TextureView;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->f(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/Size;

    move-result-object p1

    iget p1, p1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->f(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-le p2, p3, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eq p1, v4, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->g(Lcom/tencent/liteav/videoconsumer/renderer/k;)V

    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->f(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/Size;

    move-result-object p1

    iput p2, p1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->f(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/Size;

    move-result-object p1

    iput p3, p1, Lcom/tencent/liteav/base/util/Size;->height:I

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->i(Lcom/tencent/liteav/videoconsumer/renderer/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->j(Lcom/tencent/liteav/videoconsumer/renderer/k;)Z

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k$1;->a:Lcom/tencent/liteav/videoconsumer/renderer/k;

    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->k(Lcom/tencent/liteav/videoconsumer/renderer/k;)Lcom/tencent/liteav/base/util/CustomHandler;

    move-result-object p1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/q;->a(Lcom/tencent/liteav/videoconsumer/renderer/k$1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
