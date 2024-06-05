.class public final Lcom/tencent/liteav/videoproducer/encoder/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/d$a;
.implements Lcom/tencent/liteav/videoproducer/encoder/br;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/tencent/liteav/base/b/b;

.field private final c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

.field private d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private e:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field private f:Lcom/tencent/liteav/videobase/frame/j;

.field private g:Lcom/tencent/liteav/videobase/frame/e;

.field private h:Lcom/tencent/liteav/videobase/videobase/d;

.field private final i:Lcom/tencent/liteav/videobase/utils/n;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->b:Lcom/tencent/liteav/base/b/b;

    new-instance v0, Lcom/tencent/liteav/videobase/utils/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "softenc"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/utils/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->i:Lcom/tencent/liteav/videobase/utils/n;

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-direct {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SoftwareVideoEncoder_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/16 v2, 0x80

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v3, v2, v2}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/tencent/liteav/videobase/frame/j;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->f:Lcom/tencent/liteav/videobase/frame/j;

    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->g:Lcom/tencent/liteav/videobase/frame/e;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->i:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/utils/n;->a()V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->i:Lcom/tencent/liteav/videobase/utils/n;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videobase/utils/n;->a(II)V

    new-instance p1, Lcom/tencent/liteav/videobase/videobase/d;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/videobase/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->h:Lcom/tencent/liteav/videobase/videobase/d;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->g:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/videobase/d;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->h:Lcom/tencent/liteav/videobase/videobase/d;

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/a;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getHeight()I

    move-result v0

    invoke-direct {v2, p1, v0}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/videobase/videobase/d;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/d$a;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->b:Lcom/tencent/liteav/base/b/b;

    const-string v2, "initGL"

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->a:Ljava/lang/String;

    const-string v3, "initializeEGL failed."

    invoke-static {v0, v2, v3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->initialize()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->setRPSIFrameFPS(I)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->ackRPSRecvFrameIndex(II)V

    return-void
.end method

.method public final a(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->encodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->i:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/n;->a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getEncodeRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->postRotate(Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/at;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->g:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v3}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videobase/frame/d;->a(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result p1

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v3, p1, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->i:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/utils/n;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->f:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->h:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/tencent/liteav/videobase/videobase/d;->a(JLcom/tencent/liteav/videobase/frame/d;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->release()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->b:Lcom/tencent/liteav/base/b/b;

    const-string v1, "makeCurrentError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->a:Ljava/lang/String;

    const-string v2, "makeCurrent failed."

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->start(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->signalEndOfStream()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->setRPSNearestREFSize(I)V

    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->stopSync(J)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->b:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v2, "uninitGL"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->a:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "uninitializeOpenGLComponents"

    invoke-static {v1, v2, v5, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->h:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v1, v3, p0}, Lcom/tencent/liteav/videobase/videobase/d;->a(ILcom/tencent/liteav/videobase/videobase/d$a;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->h:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/videobase/d;->a()V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->i:Lcom/tencent/liteav/videobase/utils/n;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/utils/n;->b()V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->f:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->f:Lcom/tencent/liteav/videobase/frame/j;

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->g:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->g:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->g:Lcom/tencent/liteav/videobase/frame/e;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->b:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v3, "unintError"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->a:Ljava/lang/String;

    const-string v4, "makeCurrent failed."

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->e:Lcom/tencent/liteav/videobase/egl/EGLCore;

    :cond_2
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->setBitrate(I)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setBitrate(I)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->setFps(I)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setFps(I)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->restartIDRFrame()V

    return-void
.end method

.method public final f()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 2

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/at;->c:Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareEncoderWrapper;->uninitialize()V

    return-void
.end method

.method public final h()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    return-object v0
.end method
