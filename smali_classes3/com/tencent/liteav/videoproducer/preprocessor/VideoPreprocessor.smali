.class public Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor$a;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPreprocessor"


# instance fields
.field private final mAverageCostCalculator:Lcom/tencent/liteav/videobase/utils/a;

.field private final mConvertParamsList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/liteav/videobase/videobase/a;",
            ">;"
        }
    .end annotation
.end field

.field private mLastProcessTimestamp:J

.field private final mLoadFrameCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private mLookupMixLevel:F

.field private final mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

.field private mSourceType:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

.field private mTotalFrameCount:J

.field private final mVideoReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mLoadFrameCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mConvertParamsList:Landroid/util/SparseArray;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mLookupMixLevel:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mTotalFrameCount:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mLastProcessTimestamp:J

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mSourceType:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    new-instance v0, Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/preprocessor/h;-><init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mVideoReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-virtual {p2, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->setBeautyManagerStatusListener(Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor$a;)V

    invoke-static {p3}, Lcom/tencent/liteav/beauty/a;->a(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    new-instance p1, Lcom/tencent/liteav/videobase/utils/a;

    new-instance p2, Lcom/tencent/liteav/videoproducer/preprocessor/q;

    invoke-direct {p2, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/q;-><init>(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;)V

    const-string p3, "preprocess"

    invoke-direct {p1, p3, p2}, Lcom/tencent/liteav/videobase/utils/a;-><init>(Ljava/lang/String;Lcom/tencent/liteav/videobase/utils/a$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mAverageCostCalculator:Lcom/tencent/liteav/videobase/utils/a;

    return-void
.end method

.method private applyMetaData(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getPreprocessorRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->postRotate(Lcom/tencent/liteav/base/util/Rotation;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isPreprocessorMirrorHorizontal()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isPreprocessorMirrorVertical()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getRenderSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget v1, p1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget p1, p1, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(II)V

    :cond_1
    return-void
.end method

.method private getScaleTypeFromMetaData(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mSourceType:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    return-object p1

    :cond_0
    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getPreprocessorScaleType()Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$new$0(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;D)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mVideoReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->c:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$processFrame$2(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 9

    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->applyMetaData(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->getScaleTypeFromMetaData(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    iput-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->l:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a()V

    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v6

    const-string v3, "set unique eglcore: %s"

    invoke-static {v4, v3, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->h:Lcom/tencent/liteav/base/b/b;

    const-string v7, "initGL"

    invoke-virtual {v4, v7}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    iget-object v7, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a:Ljava/lang/String;

    const-string v8, "initialize internal, eglContextFromPixelFrame: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v7, v8, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v4}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/4 v5, 0x0

    const/16 v7, 0x80

    invoke-virtual {v4, v3, v5, v7, v7}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    new-instance v3, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v3}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->n:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/videobase/d;

    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->n:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/videobase/d;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->f:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->n:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->b()V

    :cond_1
    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/utils/d;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/utils/d;->a()V

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v3, :cond_2

    new-instance v3, Lcom/tencent/liteav/videobase/frame/j;

    iget v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->i:I

    iget v5, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:I

    invoke-direct {v3, v4, v5}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:Lcom/tencent/liteav/videobase/frame/j;

    :cond_2
    iget v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->i:I

    iget v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:I

    invoke-static {v6, v6, v3, v4}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    iget v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:I

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    iget v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->i:I

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v3

    sget-object v4, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v3

    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    move-object v2, v0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->n:Lcom/tencent/liteav/videobase/frame/e;

    iget v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->i:I

    iget v5, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->m:Lcom/tencent/liteav/videobase/frame/j;

    invoke-virtual {v4, v0, v2, v3}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->k:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/d;->release()V

    :goto_1
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    iget-object v5, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->g:Lcom/tencent/liteav/videobase/a/h;

    invoke-virtual {v5, v3, v4}, Lcom/tencent/liteav/videobase/a/h;->setTimestamp(J)V

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->n:Lcom/tencent/liteav/videobase/frame/e;

    iget v4, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->i:I

    iget v5, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->j:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/frame/d;->a(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getProducerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/frame/d;->a(Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getConsumerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/liteav/videobase/frame/d;->a(Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;)V

    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->g:Lcom/tencent/liteav/videobase/a/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v4

    iget-object v5, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->c:Ljava/nio/FloatBuffer;

    iget-object v7, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v3, v5, v7}, Lcom/tencent/liteav/videobase/a/h;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/d;->release()V

    :goto_2
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->h:Lcom/tencent/liteav/base/b/b;

    const-string v3, "processFrame"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GL error occurred when preprocess frame, error :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->h:Lcom/tencent/liteav/base/b/b;

    const-string v3, "make"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initializeEGL failed. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/f;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a()V

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mVideoReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p3, Lcom/tencent/liteav/videobase/videobase/i;->r:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->reportProcessFrameRate()V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic lambda$registerVideoProcessedListener$3(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)V
    .locals 9

    iget-object v7, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    new-instance v8, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoproducer/preprocessor/h$c;-><init>(Lcom/tencent/liteav/videoproducer/preprocessor/h;ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    if-nez p5, :cond_0

    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Ljava/util/List;

    invoke-static {v8, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h$c;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h;->s:Ljava/util/List;

    invoke-static {v8, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h$c;Ljava/util/List;)V

    :goto_0
    invoke-virtual {v7}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->c()V

    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 p3, 0x2

    aput-object p4, v1, p3

    const/4 p3, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, v1, p3

    const/4 p3, 0x4

    aput-object p6, v1, p3

    const-string p3, "register listener, identity:%d, bufferType:%s, formatType:%s, withWatermark:%b, listener:%s"

    invoke-static {v0, p3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mConvertParamsList:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->recalculateProcessSizeInternal()V

    return-void
.end method

.method static synthetic lambda$setFilterGroupImages$9(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;FLandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;F)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(FLandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;F)V

    return-void
.end method

.method static synthetic lambda$setFilterMixLevel$7(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;F)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/m;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;F)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$setGaussianBlurLevel$12(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;F)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/l;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;F)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$setGreenScreenFile$5(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/o;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$setGreenScreenParam$6(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Z)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/p;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Z)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$setInterceptorBeforeWatermark$14(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Lcom/tencent/liteav/videobase/a/a;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/i;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Lcom/tencent/liteav/videobase/a/a;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$setLookupImage$8(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget v3, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mLookupMixLevel:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(FLandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;F)V

    return-void
.end method

.method static synthetic lambda$setSourceType$1(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mSourceType:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    return-void
.end method

.method static synthetic lambda$setWatermark$10(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Landroid/graphics/Bitmap;FFF)V
    .locals 4

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "setWatermark xOffsetRatio: %.2f, yOffsetRatio: %.2f, widthRatio: %.2f"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoproducer/preprocessor/j;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Landroid/graphics/Bitmap;FFF)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$setWatermarkList$11(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->e:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/k;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$unregisterVideoProcessedListener$4(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->r:Ljava/util/List;

    invoke-static {p1, p2, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(ILcom/tencent/liteav/videoproducer/preprocessor/ah;Ljava/util/List;)Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->s:Ljava/util/List;

    invoke-static {p1, p2, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(ILcom/tencent/liteav/videoproducer/preprocessor/ah;Ljava/util/List;)Lcom/tencent/liteav/videoproducer/preprocessor/h$c;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->p:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v2, p1, v1}, Lcom/tencent/liteav/videobase/videobase/d;->a(ILcom/tencent/liteav/videobase/videobase/d$a;)V

    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/d;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->q:Lcom/tencent/liteav/videobase/videobase/d;

    invoke-virtual {v2, p1, v1}, Lcom/tencent/liteav/videobase/videobase/d;->a(ILcom/tencent/liteav/videobase/videobase/d$a;)V

    :cond_1
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "unregister listener: identity: %d, listener: %s"

    invoke-static {v0, p2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mConvertParamsList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->recalculateProcessSizeInternal()V

    return-void
.end method

.method static synthetic lambda$updateHomeOrientation$13(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->f:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->setHomeOrientation(I)V

    return-void
.end method

.method private recalculateProcessSizeInternal()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mConvertParamsList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mConvertParamsList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mConvertParamsList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/liteav/videobase/videobase/a;

    iget-object v5, v4, Lcom/tencent/liteav/videobase/videobase/a;->c:Lcom/tencent/liteav/base/util/Rotation;

    sget-object v6, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    iget-object v5, v4, Lcom/tencent/liteav/videobase/videobase/a;->c:Lcom/tencent/liteav/base/util/Rotation;

    sget-object v6, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_3

    iget v6, v4, Lcom/tencent/liteav/videobase/videobase/a;->b:I

    goto :goto_3

    :cond_3
    iget v6, v4, Lcom/tencent/liteav/videobase/videobase/a;->a:I

    :goto_3
    if-eqz v5, :cond_4

    iget v4, v4, Lcom/tencent/liteav/videobase/videobase/a;->a:I

    goto :goto_4

    :cond_4
    iget v4, v4, Lcom/tencent/liteav/videobase/videobase/a;->b:I

    :goto_4
    mul-int v5, v2, v4

    mul-int v8, v3, v6

    if-eq v5, v8, :cond_5

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const-string v7, "VideoPreprocessor"

    const-string/jumbo v8, "video preprocessor has different w/h ratio: %dx%d vs %dx%d"

    invoke-static {v7, v8, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    mul-int v5, v6, v4

    mul-int v7, v2, v3

    if-le v5, v7, :cond_6

    move v3, v4

    move v2, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(II)V

    return-void
.end method

.method private reportProcessFrameRate()V
    .locals 8

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mTotalFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mTotalFrameCount:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mLastProcessTimestamp:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v2

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mTotalFrameCount:J

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    sub-long v2, v0, v2

    long-to-double v2, v2

    div-double/2addr v4, v2

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mVideoReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/i;->d:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mTotalFrameCount:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mLastProcessTimestamp:J

    :cond_0
    return-void
.end method


# virtual methods
.method public getBeautyProcessor()Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/preprocessor/h;->f:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    const-string v0, "VideoPreprocessor"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "video-preprocessor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method public onBeautyStatsChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mVideoReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->s:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method public postTaskToGlThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized processFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getProducerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    move-result-object v2

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->setPreprocessTimestamp(J)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/aa;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Lcom/tencent/liteav/videobase/frame/PixelFrame;J)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerVideoProcessedListener(ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)V
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static/range {p0 .. p6}, Lcom/tencent/liteav/videoproducer/preprocessor/ab;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runTaskInGlThreadAndWaitDone(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->runAndWaitDone(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFilterGroupImages(FLandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;F)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/tencent/liteav/videoproducer/preprocessor/r;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;FLandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->postTaskToGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFilterMixLevel(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFilterMixLevel: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPreprocessor"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mLookupMixLevel:F

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/af;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setGaussianBlurLevel(F)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/u;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setGreenScreenFile(Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setGreenScreenFile: path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPreprocessor"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/ad;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setGreenScreenParam(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/ae;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setInterceptorBeforeWatermark(Lcom/tencent/liteav/videobase/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/y;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Lcom/tencent/liteav/videobase/a/a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLookupImage(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setLookupImage: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPreprocessor"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/ag;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/z;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWatermark(Landroid/graphics/Bitmap;FFF)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoproducer/preprocessor/s;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Landroid/graphics/Bitmap;FFF)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWatermarkList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/beauty/b/o;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/t;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public uninitialize()V
    .locals 2

    const-string v0, "VideoPreprocessor"

    const-string v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mAverageCostCalculator:Lcom/tencent/liteav/videobase/utils/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/a;->a()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/preprocessor/w;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->quitLooper()V

    :cond_0
    return-void
.end method

.method public uninitializeGLComponents()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mPreprocessor:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/preprocessor/x;->a(Lcom/tencent/liteav/videoproducer/preprocessor/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/ac;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;ILcom/tencent/liteav/videoproducer/preprocessor/ah;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateHomeOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/v;->a(Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
