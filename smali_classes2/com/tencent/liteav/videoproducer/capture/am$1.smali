.class final Lcom/tencent/liteav/videoproducer/capture/am$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/capture/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/capture/am;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/capture/am;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/am$1;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/am;->g(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videobase/utils/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->a()V

    return-void
.end method


# virtual methods
.method public final onCameraTouchEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCameraTouchEnable(Z)V

    :cond_0
    return-void
.end method

.method public final onCameraZoomEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCameraZoomEnable(Z)V

    :cond_0
    return-void
.end method

.method public final onCaptureError()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCaptureError()V

    :cond_0
    return-void
.end method

.method public final onCaptureFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/am;->e(Lcom/tencent/liteav/videoproducer/capture/am;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/am;->f(Lcom/tencent/liteav/videoproducer/capture/am;)Z

    const-string p1, "CaptureController"

    const-string v0, "CaptureController received first frame."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Lcom/tencent/liteav/videoproducer/capture/am$1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-interface {p1, v0, p2}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_2
    return-void
.end method

.method public final onScreenDisplayOrientationChanged(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onScreenDisplayOrientationChanged(Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_0
    return-void
.end method

.method public final onStartFinish(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/am$1;->a:Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/am;->d(Lcom/tencent/liteav/videoproducer/capture/am;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onStartFinish(Z)V

    :cond_0
    return-void
.end method
