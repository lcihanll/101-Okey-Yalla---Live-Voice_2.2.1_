.class public final Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;
.super Lcom/tencent/liteav/videoproducer/capture/ax;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/tencent/liteav/base/util/x$a;
.implements Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;
    }
.end annotation


# instance fields
.field protected f:Lcom/tencent/liteav/videobase/frame/l;

.field private final g:Ljava/lang/String;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

.field private k:Lcom/tencent/liteav/base/util/Size;

.field private l:Lcom/tencent/liteav/base/util/Rotation;

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/SurfaceTexture;

.field private q:Landroid/view/Surface;

.field private r:Lcom/tencent/liteav/videobase/utils/g;

.field private s:Lcom/tencent/liteav/base/util/x;

.field private t:Landroid/media/projection/MediaProjection;

.field private u:Lcom/tencent/liteav/base/util/Rotation;

.field private v:Z

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/tencent/liteav/videoproducer/capture/ax;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ScreenCapturer_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    sget-object p2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:Lcom/tencent/liteav/base/util/Rotation;

    const/4 p2, -0x1

    iput p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:I

    sget-object p2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Lcom/tencent/liteav/base/util/Rotation;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->v:Z

    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Z

    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->x:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string v1, "capture error"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCaptureError()V

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$b;->o:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v1, 0x0

    const-string v2, "screen capture has been interrupted"

    invoke-interface {p0, v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "UpdateParams %s is the same "

    invoke-static {p0, p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string v1, "UpdateParams change from %s to %s"

    invoke-static {v0, v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string p1, "Capturer not started"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->t:Landroid/media/projection/MediaProjection;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h()V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "on Start finish, success: %b, isPermissionDenied: %b"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->v:Z

    if-nez p1, :cond_2

    iput-boolean v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->v:Z

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$b;->m:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start screen capture success params:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$a;->g:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "permission denied, Start screen capture failed, params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$a;->f:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start screen capture failed, params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static a(Lcom/tencent/liteav/base/util/Rotation;)Z
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->c:Lcom/tencent/liteav/base/util/Rotation;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onScreenDisplayOrientationChanged(Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/utils/g;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->b:I

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/utils/g;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Lcom/tencent/liteav/videobase/utils/g;

    new-instance v0, Lcom/tencent/liteav/base/util/x;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/liteav/base/util/x;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/x$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/base/util/x;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/x;->a(II)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string v1, "Resume capture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->p:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    const-string v3, "screen capture has been resumed"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Z

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Lcom/tencent/liteav/videobase/utils/g;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/g;->a()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string v1, "Pause capture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->o:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    const-string v3, "screen capture has been interrupted"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Z

    return-void
.end method

.method private e()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/liteav/videobase/videobase/SystemDisplayInfo;->getDisplayRotationDegree()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Lcom/tencent/liteav/base/util/Rotation;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Lcom/tencent/liteav/base/util/Rotation;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->b(Lcom/tencent/liteav/base/util/Rotation;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f()V

    :goto_0
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->generateTextureOES()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/view/Surface;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Landroid/content/Context;)Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/view/Surface;

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->t:Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-boolean v6, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->g:Z

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Landroid/view/Surface;IILandroid/media/projection/MediaProjection;ZLcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Start virtual display, size: %dx%d"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->c:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->height:I

    if-ge v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->c:I

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v3, v3, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->d:I

    if-eq v1, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    :goto_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateSurfaceSizeByCaptureParams, capture params size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v3, v3, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->c:I

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v4, v4, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->d:I

    invoke-direct {v2, v3, v4}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", surface final size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    invoke-direct {v2, v3, v4}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Lcom/tencent/liteav/base/util/Rotation;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Lcom/tencent/liteav/base/util/Rotation;)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:Lcom/tencent/liteav/base/util/Rotation;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Lcom/tencent/liteav/base/util/Rotation;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateSurfaceSizeByDisplayOrientation, original display size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " original rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , surface final size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/tencent/liteav/base/util/Size;

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    invoke-direct {v2, v3, v4}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->t:Landroid/media/projection/MediaProjection;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Landroid/content/Context;)Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/view/Surface;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/view/Surface;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string v1, "MakeCurrent error!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/l;->b()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    :cond_3
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:I

    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/base/util/x;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/x;->a()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/base/util/x;

    :cond_4
    return-void
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/tencent/liteav/videobase/videobase/SystemDisplayInfo;->getDisplayRotationDegree()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:Lcom/tencent/liteav/base/util/Rotation;

    invoke-static {}, Lcom/tencent/liteav/videobase/videobase/SystemDisplayInfo;->getDisplaySize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:Lcom/tencent/liteav/base/util/Rotation;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Lcom/tencent/liteav/base/util/Rotation;)Z

    move-result v0

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    :goto_0
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get display size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", original rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Start capture %s"

    invoke-static {v0, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->c:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string v0, "Start capture, mEGLCore is null"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-object p1, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->t:Landroid/media/projection/MediaProjection;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->c()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$a;->f:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Start screen capture failed, params:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->e()V

    return-void
.end method

.method protected final b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string v1, "Stop capture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->n:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    const-string v3, "Stop screen capture success"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->x:Z

    return-void
.end method

.method public final onCaptureError()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bg;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onStartFinish(ZZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/bh;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;ZZ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTimeout()V
    .locals 14

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Lcom/tencent/liteav/videobase/utils/g;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget v3, v0, Lcom/tencent/liteav/videobase/utils/g;->a:I

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-wide v10, v0, Lcom/tencent/liteav/videobase/utils/g;->b:J

    cmp-long v3, v10, v6

    if-eqz v3, :cond_1

    iget-wide v10, v0, Lcom/tencent/liteav/videobase/utils/g;->b:J

    sub-long/2addr v1, v10

    iget-wide v10, v0, Lcom/tencent/liteav/videobase/utils/g;->c:J

    add-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    iget v0, v0, Lcom/tencent/liteav/videobase/utils/g;->a:I

    int-to-long v12, v0

    div-long/2addr v10, v12

    cmp-long v0, v1, v10

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Lcom/tencent/liteav/base/util/Rotation;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Lcom/tencent/liteav/base/util/Rotation;)Z

    move-result v0

    invoke-static {}, Lcom/tencent/liteav/videobase/videobase/SystemDisplayInfo;->getDisplayRotationDegree()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Lcom/tencent/liteav/base/util/Rotation;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Lcom/tencent/liteav/base/util/Rotation;)Z

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Lcom/tencent/liteav/base/util/Rotation;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Display orientation changed, rotation: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h()V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->e()V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->c()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Lcom/tencent/liteav/videobase/utils/g;

    iget-wide v1, v0, Lcom/tencent/liteav/videobase/utils/g;->b:J

    cmp-long v3, v1, v6

    if-nez v3, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/utils/g;->b:J

    :cond_9
    iget-wide v1, v0, Lcom/tencent/liteav/videobase/utils/g;->c:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/utils/g;->c:J

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->c:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v0, :cond_a

    goto/16 :goto_5

    :cond_a
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/l;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_3

    :catch_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string v2, "Texture holder pool obtain interrupted."

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    const-string v1, "Texture holder pool obtain null holder."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->e:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->e:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget v5, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    iget v6, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v6, v6

    mul-float v6, v6, v3

    iget v7, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget v7, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    int-to-float v7, v7

    div-float/2addr v1, v7

    goto :goto_4

    :cond_c
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_4
    const v7, 0x8d65

    iget v10, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:I

    iget v11, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iget v12, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    invoke-virtual {v0, v7, v10, v11, v12}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    iget-object v7, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->c:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/tencent/liteav/videobase/frame/l$b;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v10

    if-nez v10, :cond_d

    const/16 v10, 0x10

    new-array v10, v10, [F

    invoke-virtual {v7, v10}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    :cond_d
    iget-object v10, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v10}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v10, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    invoke-static {v4, v2}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {v5, v2}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_e
    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v10

    invoke-static {v10, v8, v4, v5, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_f
    invoke-static {v6, v3}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v1, v3}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v2

    invoke-static {v2, v8, v6, v1, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_11
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->x:Z

    if-nez v1, :cond_12

    iput-boolean v9, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->x:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCaptureFirstFrame()V

    :cond_12
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-interface {v1, p0, v7}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_13
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/l$b;->release()V

    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScreenFrameAvailable mTextureHolderPool = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mEGLCore = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->c:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_6
    return-void
.end method

.method public final pause()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/be;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bf;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bc;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/bd;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->a(Ljava/lang/Runnable;)V

    return-void
.end method
