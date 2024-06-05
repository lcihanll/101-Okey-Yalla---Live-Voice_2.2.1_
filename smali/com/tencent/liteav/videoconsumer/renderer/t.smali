.class public final Lcom/tencent/liteav/videoconsumer/renderer/t;
.super Lcom/tencent/liteav/videoconsumer/renderer/r;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;


# instance fields
.field private final A:Lcom/tencent/liteav/base/util/Size;

.field private B:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

.field private C:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private D:Z

.field private E:Landroid/graphics/Bitmap;

.field private final F:Lcom/tencent/liteav/base/b/a;

.field private G:Lcom/tencent/liteav/videoconsumer/renderer/a;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private final e:Lcom/tencent/liteav/base/util/l;

.field private final f:Lcom/tencent/liteav/base/util/l;

.field private final g:Lcom/tencent/liteav/base/b/b;

.field private final h:Lcom/tencent/liteav/base/util/Size;

.field private i:Landroid/view/Surface;

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field private final m:Lcom/tencent/liteav/videobase/frame/c;

.field private n:Lcom/tencent/liteav/videobase/frame/j;

.field private final o:Lcom/tencent/liteav/videobase/utils/m;

.field private p:Lcom/tencent/liteav/videobase/frame/e;

.field private q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private r:Lcom/tencent/liteav/base/util/Rotation;

.field private s:Z

.field private t:Z

.field private u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

.field private v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

.field private final w:Lcom/tencent/liteav/base/util/Size;

.field private volatile x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/r;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoRenderer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->b:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/liteav/base/util/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->f:Lcom/tencent/liteav/base/util/l;

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->j:Z

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    new-instance v2, Lcom/tencent/liteav/videobase/frame/c;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->m:Lcom/tencent/liteav/videobase/frame/c;

    new-instance v2, Lcom/tencent/liteav/videobase/utils/m;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/utils/m;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->o:Lcom/tencent/liteav/videobase/utils/m;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->r:Lcom/tencent/liteav/base/util/Rotation;

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->s:Z

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->t:Z

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->w:Lcom/tencent/liteav/base/util/Size;

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->x:Z

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->y:Z

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->z:Z

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->A:Lcom/tencent/liteav/base/util/Size;

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->D:Z

    new-instance v1, Lcom/tencent/liteav/base/b/a;

    const-wide/16 v2, 0x1388

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->F:Lcom/tencent/liteav/base/b/a;

    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v1, p1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->e:Lcom/tencent/liteav/base/util/l;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/base/util/l;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/r;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoRenderer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->b:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/liteav/base/util/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->f:Lcom/tencent/liteav/base/util/l;

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->j:Z

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    new-instance v2, Lcom/tencent/liteav/videobase/frame/c;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->m:Lcom/tencent/liteav/videobase/frame/c;

    new-instance v2, Lcom/tencent/liteav/videobase/utils/m;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/utils/m;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->o:Lcom/tencent/liteav/videobase/utils/m;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->r:Lcom/tencent/liteav/base/util/Rotation;

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->s:Z

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->t:Z

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->w:Lcom/tencent/liteav/base/util/Size;

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->x:Z

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->y:Z

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->z:Z

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->A:Lcom/tencent/liteav/base/util/Size;

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->D:Z

    new-instance v1, Lcom/tencent/liteav/base/b/a;

    const-wide/16 v2, 0x1388

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->F:Lcom/tencent/liteav/base/b/a;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->e:Lcom/tencent/liteav/base/util/l;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->E:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->E:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    aput-object v5, v2, v3

    const-string/jumbo v3, "uninitializeEGL %d %s"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string v2, "makeCurrentError"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "uninitializeEGL EGLCore makeCurrent failed."

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->d()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->n:Lcom/tencent/liteav/videobase/frame/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->n:Lcom/tencent/liteav/videobase/frame/j;

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->m:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->d()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->p:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->p:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->p:Lcom/tencent/liteav/videobase/frame/e;

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    return-void
.end method

.method private a(Landroid/view/Surface;Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string/jumbo p2, "updateSurface same surface!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a()V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->C:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderSurfaceChanged(Landroid/view/Surface;)V

    :cond_2
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    :cond_3
    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->j:Z

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->A:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v2}, Lcom/tencent/liteav/base/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->A:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v3}, Lcom/tencent/liteav/base/util/Size;->getHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->z:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->updateVideoFrameInfo(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;IIZ)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    instance-of v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/k;

    if-eqz v0, :cond_2

    sget-object p2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->H:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->I:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->b(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/a;

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->p:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v0, v3, v4, v5}, Lcom/tencent/liteav/videoconsumer/renderer/a;-><init>(Lcom/tencent/liteav/videobase/frame/e;II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->H:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->I:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/liteav/videoconsumer/renderer/a;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v6, v6, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, v5, v6}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->getTransformMatrix(II)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v5, v4, Lcom/tencent/liteav/videoconsumer/renderer/a;->h:Landroid/graphics/Matrix;

    invoke-static {v5, v0}, Lcom/tencent/liteav/base/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iput-object v0, v4, Lcom/tencent/liteav/videoconsumer/renderer/a;->h:Landroid/graphics/Matrix;

    iput-boolean v3, v4, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    iget-object v6, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v6, v6, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne v6, v4, :cond_5

    iget-object v6, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v6, v6, Lcom/tencent/liteav/base/util/Size;->height:I

    if-eq v6, v5, :cond_6

    :cond_5
    iget-object v6, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v6, v4, v5}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    iput-boolean v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    :cond_6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v3}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create PixelFrameRenderer, size ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/tencent/liteav/videobase/frame/j;

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v3, v4, v5}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/j;

    :cond_7
    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-static {v2, v2, v3, v4}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    iget-object v3, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->c:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/j;

    iget-object v5, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v6, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->b:Lcom/tencent/liteav/base/util/Size;

    iget v6, v6, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/tencent/liteav/videobase/frame/j;->a(II)V

    iget-object v4, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->g:Lcom/tencent/liteav/videobase/frame/j;

    invoke-virtual {v4, p1, p2, v3}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    if-nez p1, :cond_9

    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    if-nez p1, :cond_9

    new-instance p1, Lcom/tencent/liteav/videobase/b/b;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/b/b;-><init>()V

    iput-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    iget-object p2, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->c:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/b/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_8

    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->f:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_9

    :cond_8
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createNormalCubeVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:Ljava/nio/FloatBuffer;

    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    invoke-static {p1, v2, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/base/util/Rotation;ZZ)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->f:Ljava/nio/FloatBuffer;

    :cond_9
    iget-boolean p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    if-eqz p1, :cond_a

    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->i:Ljava/util/List;

    iget-object p2, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->j:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/a;->b(Ljava/util/List;Ljava/util/List;)V

    iput-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->k:Z

    :cond_a
    iget-object p1, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->d:Lcom/tencent/liteav/videobase/b/b;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p2

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->e:Ljava/nio/FloatBuffer;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/renderer/a;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/tencent/liteav/videobase/b/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/d;->release()V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-static {v2, v2, v0, v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->n:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create PixelFrameRenderer, surfaceSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v2, v2, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v0, v2, v3}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->n:Lcom/tencent/liteav/videobase/frame/j;

    :cond_d
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->n:Lcom/tencent/liteav/videobase/frame/j;

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v2, v2, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/videobase/frame/j;->a(II)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->n:Lcom/tencent/liteav/videobase/frame/j;

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->C:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceDestroy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->j:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Landroid/view/Surface;Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "onSurfaceChanged surface: %s, oldSurface: %s, isNeedRelease: %b"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->r:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRenderRotation "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->r:Lcom/tencent/liteav/base/util/Rotation;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setScaleType "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string/jumbo v1, "takeSnapshot "

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->B:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/t;->b(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;Ljava/nio/ByteBuffer;IILcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 8

    instance-of v0, p1, Lcom/tencent/liteav/videoconsumer/renderer/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/liteav/videoconsumer/renderer/k;

    iget-object p1, p1, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Landroid/view/TextureView;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    :goto_1
    move-object v6, v1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->f:Lcom/tencent/liteav/base/util/l;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/tencent/liteav/videoconsumer/renderer/ab;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->x:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string p1, "renderer is started!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->x:Z

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->C:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderSurfaceChanged(Landroid/view/Surface;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->b(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    :cond_2
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->F:Lcom/tencent/liteav/base/b/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/base/b/a;->a:J

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    int-to-float p3, p3

    div-float/2addr p3, v2

    invoke-virtual {p4, p1, v1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 p1, 0x1

    invoke-static {v0, p4, p1}, Lcom/tencent/liteav/videobase/utils/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string p2, "build snapshot bitmap failed."

    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    invoke-interface {p5, p0}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->H:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->I:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/t;->b(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->d()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/a;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/t;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->z:Z

    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getSurfaceSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v2, "updateSurfaceSize"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "surface size changed,old size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",new size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/util/Size;->set(Lcom/tencent/liteav/base/util/Size;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->j:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v2, v2, Lcom/tencent/liteav/base/util/Size;->width:I

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->C:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v2, v2, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderTargetSizeChanged(II)V

    :cond_3
    return-void
.end method

.method private b(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplayViewInternal="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",clearLastImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string/jumbo p2, "view is equal and RenderViewHelper is created."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->D:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->hideAll()V

    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoconsumer/renderer/t;->c(Z)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->showAll()V

    invoke-static {p1, p0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->create(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;)Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/t;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->createFromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->b()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->c()Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/t;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->s:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setHorizontalMirror "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->s:Z

    return-void
.end method

.method private b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->k:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a()V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string v0, "initGLNoSurface"

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Initialize EGL failed because surface is null"

    invoke-static {p1, v0, v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initializeEGL surface="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v5, v5, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->k:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->p:Lcom/tencent/liteav/videobase/frame/e;

    if-nez p1, :cond_3

    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->p:Lcom/tencent/liteav/videobase/frame/e;

    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->m:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGLError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string v4, "initializeEGL failed."

    invoke-static {v0, v1, v4, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->e:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "VideoRender: create EGLCore fail:"

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez p1, :cond_5

    return v3

    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_1
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string v1, "makeCurrentForFrameError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "EGLCore makeCurrent failed."

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/t;)V
    .locals 14

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->o:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/m;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string v0, "renderFrameInternal pixelFrame is null!"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->w:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getRenderRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->r:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorHorizontal()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->s:Z

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorVertical()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->t:Z

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->w:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getCaptureRealSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/base/util/Size;->set(Lcom/tencent/liteav/base/util/Size;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->F:Lcom/tencent/liteav/base/b/a;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->checkViewAvailability()V

    :cond_2
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->z:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    iget-boolean v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->z:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->updateVideoFrameInfo(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;IIZ)V

    :cond_3
    sget-object v1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->d:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-nez v1, :cond_5

    sget-object v1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->c:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    sget-object v1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->a:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string v3, "makeCurrent"

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "make current failed."

    invoke-static {v1, p0, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->b()V

    new-instance v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->s:Z

    iget-boolean v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->t:Z

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->r:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v6

    iget v6, v6, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    iget v7, v5, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    add-int/2addr v6, v7

    rem-int/lit16 v6, v6, 0x168

    invoke-static {v6}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    :cond_8
    sget-object v3, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v5, v3, :cond_9

    sget-object v3, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-ne v5, v3, :cond_a

    :cond_9
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    :cond_a
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    sget-object v4, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v3, v4, :cond_b

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    sget-object v4, Lcom/tencent/liteav/base/util/Rotation;->c:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v3, v4, :cond_b

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    iget v3, v3, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    sget-object v4, Lcom/tencent/liteav/base/util/Rotation;->c:Lcom/tencent/liteav/base/util/Rotation;

    iget v4, v4, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x168

    invoke-static {v3}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_b
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->A:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->A:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->q:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-direct {p0, v1, v3}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->B:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    const v1, 0x8d40

    invoke-static {v1, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindFramebuffer(II)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    iget v11, v4, Lcom/tencent/liteav/base/util/Size;->height:I

    iget-object v12, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->B:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    if-eqz v12, :cond_d

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->B:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    mul-int v4, v1, v11

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    if-nez v13, :cond_c

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string v4, "snapshotVideoFrameFromFrameBuffer, allocate direct buffer failed."

    invoke-static {v1, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_c
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move v6, v1

    move v7, v11

    move-object v10, v13

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    iget-object v10, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->b:Landroid/os/Handler;

    move-object v4, p0

    move-object v6, v13

    move v7, v1

    move v8, v11

    move-object v9, v12

    invoke-static/range {v4 .. v9}, Lcom/tencent/liteav/videoconsumer/renderer/x;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;Ljava/nio/ByteBuffer;IILcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->getGLErrorCount()I

    move-result v1

    if-gtz v1, :cond_e

    sget-object v1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->b:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->D:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v4, Lcom/tencent/liteav/videobase/videobase/h$b;->i:Lcom/tencent/liteav/videobase/videobase/h$b;

    invoke-interface {v1, v4, v0, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->D:Z

    goto :goto_1

    :cond_e
    sget-object v1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;->a:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string v3, "renderFailed"

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "render frame failed."

    invoke-static {v1, p0, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_1
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/t;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stop,clearLastImage="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->x:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string p1, "renderer is not started!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->x:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->B:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->c(Z)V

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->u:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->hideAll()V

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->o:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/utils/m;->b()V

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a()V

    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->j:Z

    :cond_2
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->i:Landroid/view/Surface;

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->w:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->y:Z

    return-void
.end method

.method private c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;->release(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->v:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->l:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->swapBuffers()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->g:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v2, "swapBuffers"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EGLCore swapBuffers failed."

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->d:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->g:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VideoRender: swapBuffer error:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    return v4
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/renderer/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->G:Lcom/tencent/liteav/videoconsumer/renderer/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ah;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/base/util/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ag;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ae;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->x:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string v0, "renderFrame pixelFrame is null!"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->y:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->y:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->a:Ljava/lang/String;

    const-string v1, "VideoRender receive first frame!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->o:Lcom/tencent/liteav/videobase/utils/m;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/m;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/v;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/ad;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/u;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->e:Lcom/tencent/liteav/base/util/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

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

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/af;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ac;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/ai;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRequestRedraw(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/z;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/Surface;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/y;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;Landroid/view/Surface;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSurfaceDestroy()V
    .locals 5

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/aa;->a(Lcom/tencent/liteav/videoconsumer/renderer/t;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->e:Lcom/tencent/liteav/base/util/l;

    const-wide/16 v2, 0x7d0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v4}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/t;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/liteav/base/util/CustomHandler;->runAndWaitDone(Ljava/lang/Runnable;J)Z

    return-void
.end method
