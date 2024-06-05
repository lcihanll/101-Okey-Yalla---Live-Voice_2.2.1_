.class public final Lcom/tencent/liteav/videoproducer/capture/am;
.super Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/am$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

.field private b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

.field private c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

.field private d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

.field private e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

.field private final f:Landroid/os/Looper;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private i:Ljava/lang/Object;

.field private j:Z

.field private final k:Lcom/tencent/liteav/base/util/CustomHandler;

.field private l:Lcom/tencent/liteav/videoproducer/capture/am$a;

.field private m:Z

.field private final n:Lcom/tencent/liteav/videobase/utils/f;

.field private o:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field private final p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->j:Z

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/am$a;->a:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->m:Z

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/am$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/am$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/am;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->f:Landroid/os/Looper;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/am;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance p1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->k:Lcom/tencent/liteav/base/util/CustomHandler;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/f;

    new-instance p2, Lcom/tencent/liteav/videoproducer/capture/an;

    invoke-direct {p2, p0}, Lcom/tencent/liteav/videoproducer/capture/an;-><init>(Lcom/tencent/liteav/videoproducer/capture/am;)V

    const-string p3, "CaptureController"

    invoke-direct {p1, p3, p2}, Lcom/tencent/liteav/videobase/utils/f;-><init>(Ljava/lang/String;Lcom/tencent/liteav/videobase/utils/f$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->n:Lcom/tencent/liteav/videobase/utils/f;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/am;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/am$a;->a:Lcom/tencent/liteav/videoproducer/capture/am$a;

    if-ne v0, v1, :cond_0

    const-string p0, "CaptureController"

    const-string v0, "Stop capture but mStatus is stoped"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/am$a;->a:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->stop()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->stop()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->m:Z

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->n:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/am;D)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->b:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/am;Landroid/graphics/Bitmap;III)V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iput-object p1, v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->a:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iput p2, p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->b:I

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iput p3, p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->d:I

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iput p4, p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->c:I

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->stop()V

    :cond_0
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->f:Landroid/os/Looper;

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/am;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p1, p2, p3}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/am;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/am$a;->b:Lcom/tencent/liteav/videoproducer/capture/am$a;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/am$a;->c:Lcom/tencent/liteav/videoproducer/capture/am$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/am;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/am$a;->a:Lcom/tencent/liteav/videoproducer/capture/am$a;

    const-string v2, "CaptureController"

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Start capture but mStatus is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->n:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/am$a;->b:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    instance-of v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/t;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->f:Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/capture/t;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->f:Landroid/os/Looper;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/am;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    goto :goto_0

    :cond_2
    const-string v0, "initCaptureSource\uff1a param is VirtualCameraParams"

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->o:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    :cond_3
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/am;->i:Ljava/lang/Object;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-virtual {p2, p3, p1, p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/am;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->o:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/capture/am;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/am$a;->c:Lcom/tencent/liteav/videoproducer/capture/am$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resume capture but mStatus is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CaptureController"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/am$a;->b:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    :cond_1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->resume()V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/capture/am;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/am$a;->b:Lcom/tencent/liteav/videoproducer/capture/am$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pause capture but mStatus is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CaptureController"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/am$a;->c:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->l:Lcom/tencent/liteav/videoproducer/capture/am$a;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->pause()V

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/am;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v3, v3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Landroid/graphics/Bitmap;III)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->f:Landroid/os/Looper;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->i:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/am;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->n:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/capture/am;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->m:Z

    return p0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/capture/am;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videobase/utils/f;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->n:Lcom/tencent/liteav/videobase/utils/f;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVirtualCameraParams fps = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureController"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p4, p3}, Lcom/tencent/liteav/videoproducer/capture/ao;->a(Lcom/tencent/liteav/videoproducer/capture/am;Landroid/graphics/Bitmap;III)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/am;->k:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->k:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final pause()V
    .locals 2

    const-string v0, "CaptureController"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/aq;->a(Lcom/tencent/liteav/videoproducer/capture/am;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resume()V
    .locals 2

    const-string v0, "CaptureController"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/ar;->a(Lcom/tencent/liteav/videoproducer/capture/am;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/au;->a(Lcom/tencent/liteav/videoproducer/capture/am;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start params = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", glContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureController"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2, p3, p1}, Lcom/tencent/liteav/videoproducer/capture/ap;->a(Lcom/tencent/liteav/videoproducer/capture/am;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    const-string v0, "CaptureController"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/as;->a(Lcom/tencent/liteav/videoproducer/capture/am;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/at;->a(Lcom/tencent/liteav/videoproducer/capture/am;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Ljava/lang/Runnable;)V

    return-void
.end method
