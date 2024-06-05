.class public final Lcom/tencent/liteav/videoproducer/encoder/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/encoder/br;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field final c:Lcom/tencent/liteav/base/util/Size;

.field final d:Lcom/tencent/liteav/videoproducer/encoder/au;

.field final e:Lcom/tencent/liteav/base/b/b;

.field final f:Lcom/tencent/liteav/videobase/utils/k;

.field g:Landroid/view/Surface;

.field h:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field i:Lcom/tencent/liteav/videobase/frame/j;

.field j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field k:J

.field volatile l:Lcom/tencent/liteav/base/util/CustomHandler;

.field volatile m:Lcom/tencent/liteav/videoproducer/encoder/br$a;

.field n:Lcom/tencent/liteav/videobase/egl/c;

.field final o:Lcom/tencent/liteav/videobase/utils/n;

.field final p:Lcom/tencent/liteav/videoproducer/encoder/br$a;

.field private final q:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->e:Lcom/tencent/liteav/base/b/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->k:J

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/r$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/r$1;-><init>(Lcom/tencent/liteav/videoproducer/encoder/r;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->p:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/encoder/au;-><init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/n;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "hwEn"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/liteav/videobase/utils/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->o:Lcom/tencent/liteav/videobase/utils/n;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->q:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "HardwareVideoEncoder_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/m;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/m;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->f:Lcom/tencent/liteav/videobase/utils/k;

    return-void
.end method

.method private a(Ljava/lang/Runnable;J)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->l:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/base/util/CustomHandler;->runAndWaitDone(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "hw-video-encoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->l:Lcom/tencent/liteav/base/util/CustomHandler;

    new-instance v1, Lcom/tencent/liteav/videobase/egl/c;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videobase/egl/c;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->n:Lcom/tencent/liteav/videobase/egl/c;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/os/Looper;)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(II)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/aa;->a(Lcom/tencent/liteav/videoproducer/encoder/r;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->f:Lcom/tencent/liteav/videobase/utils/k;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videobase/utils/k;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(Lcom/tencent/liteav/videoproducer/encoder/r;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/s;->a(Lcom/tencent/liteav/videoproducer/encoder/r;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->l:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)Z
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/t;->a(Lcom/tencent/liteav/videoproducer/encoder/r;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->g:Landroid/view/Surface;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final a(Ljava/lang/Object;Landroid/view/Surface;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->e:Lcom/tencent/liteav/base/b/b;

    const-string p2, "SurfaceNull"

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "init opengl: surface is null."

    invoke-static {p1, p2, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->e:Lcom/tencent/liteav/base/b/b;

    const-string v2, "initGL"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "initOpenGLComponents"

    invoke-static {v1, v2, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget v2, v2, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->o:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/utils/n;->a()V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->o:Lcom/tencent/liteav/videobase/utils/n;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget p2, p2, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/videobase/utils/n;->a(II)V

    new-instance p1, Lcom/tencent/liteav/videobase/frame/j;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget p2, p2, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {p1, p2, v0}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->i:Lcom/tencent/liteav/videobase/frame/j;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$c;->a:Lcom/tencent/liteav/videobase/videobase/h$c;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoEncode: create EGLCore failed, EGLCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/tencent/liteav/videobase/egl/f;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/egl/f;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/i;->z:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->q:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iget v3, v3, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    iget p2, p2, Lcom/tencent/liteav/videobase/videobase/h$c;->mValue:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, v2, v3, p2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/egl/f;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->e:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initError"

    invoke-virtual {p2, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const-string v2, "create EGLCore failed."

    invoke-static {p2, v1, v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/v;->a(Lcom/tencent/liteav/videoproducer/encoder/au;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Lcom/tencent/liteav/videoproducer/encoder/r;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/y;->a(Lcom/tencent/liteav/videoproducer/encoder/r;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final d()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->e:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "uninitOpenGLComponents"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->i:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->i:Lcom/tencent/liteav/videobase/frame/j;

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->o:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/utils/n;->b()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->e:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v3, "uninitError"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const-string v4, "makeCurrent failed."

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->h:Lcom/tencent/liteav/videobase/egl/EGLCore;

    return-void
.end method

.method public final d(I)V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/x;->a(Lcom/tencent/liteav/videoproducer/encoder/au;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 2

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/z;->a(Lcom/tencent/liteav/videoproducer/encoder/r;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    return-object v0
.end method
