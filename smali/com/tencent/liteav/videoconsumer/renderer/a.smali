.class public final Lcom/tencent/liteav/videoconsumer/renderer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/base/util/Size;

.field final c:Lcom/tencent/liteav/videobase/frame/e;

.field d:Lcom/tencent/liteav/videobase/b/b;

.field e:Ljava/nio/FloatBuffer;

.field f:Ljava/nio/FloatBuffer;

.field g:Lcom/tencent/liteav/videobase/frame/j;

.field h:Landroid/graphics/Matrix;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field k:Z


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/e;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostProcessor_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->c:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    return-void
.end method

.method private static a(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/4 p1, 0x2

    new-array v1, p1, [F

    new-array p1, p1, [F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aput v2, p1, v3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aput p0, p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance p0, Landroid/graphics/PointF;

    aget p1, v1, v3

    aget v0, v1, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->width:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->h:Landroid/graphics/Matrix;

    invoke-static {v3, v1}, Lcom/tencent/liteav/videoconsumer/renderer/a;->a(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->height:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/j;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/b;->uninitialize()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    :cond_1
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

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->i:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->j:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    return-void
.end method

.method final b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoconsumer/renderer/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p2, p1}, Lcom/tencent/liteav/videobase/b/c;->a(Lcom/tencent/liteav/videobase/b/b;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/b/b;->runOnDraw(Ljava/lang/Runnable;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
