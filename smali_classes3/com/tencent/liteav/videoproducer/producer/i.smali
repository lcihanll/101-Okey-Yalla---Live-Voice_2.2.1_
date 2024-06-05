.class public final Lcom/tencent/liteav/videoproducer/producer/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;
.implements Lcom/tencent/liteav/videoproducer/preprocessor/ah;
.implements Lcom/tencent/liteav/videoproducer/producer/d$a;
.implements Lcom/tencent/rtmp/ui/a;
.implements Lcom/tencent/rtmp/ui/b;


# instance fields
.field private volatile A:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private B:Lcom/tencent/liteav/videoconsumer/renderer/r;

.field private C:Lcom/tencent/liteav/videoconsumer/consumer/a;

.field private final D:Landroid/content/BroadcastReceiver;

.field private E:Lcom/tencent/liteav/videoproducer/producer/a;

.field private F:Lcom/tencent/liteav/videobase/videobase/a;

.field private G:Lcom/tencent/liteav/videobase/videobase/a;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private final L:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private final M:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field final a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field final c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

.field final d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

.field e:Lcom/tencent/liteav/base/util/CustomHandler;

.field volatile f:Z

.field private final g:Lcom/tencent/liteav/videoconsumer/renderer/s;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/tencent/liteav/base/b/b;

.field private j:Lcom/tencent/liteav/videobase/egl/EGLCore;

.field private k:Ljava/lang/Object;

.field private l:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field private m:Lcom/tencent/liteav/videoproducer/producer/d;

.field private volatile n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

.field private o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

.field private p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

.field private q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private final r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

.field private final s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

.field private final t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

.field private final u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

.field private v:Lorg/json/JSONArray;

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;",
            "Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;",
            "Lcom/tencent/liteav/videoproducer/encoder/ay;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

.field private z:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoProducer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->i:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->f:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->k:Ljava/lang/Object;

    sget-object v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    new-instance v2, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-direct {v2}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    new-instance v2, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-direct {v2}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    new-instance v2, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-direct {v2}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    new-instance v2, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-direct {v2}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->v:Lorg/json/JSONArray;

    new-instance v2, Lcom/tencent/liteav/videoproducer/producer/i$1;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoproducer/producer/i$1;-><init>(Lcom/tencent/liteav/videoproducer/producer/i;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->w:Ljava/util/Map;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->z:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    new-instance v1, Lcom/tencent/liteav/videoproducer/producer/i$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/producer/i$2;-><init>(Lcom/tencent/liteav/videoproducer/producer/i;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->D:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/tencent/liteav/videobase/videobase/a;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/videobase/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->F:Lcom/tencent/liteav/videobase/videobase/a;

    new-instance v1, Lcom/tencent/liteav/videobase/videobase/a;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/videobase/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->G:Lcom/tencent/liteav/videobase/videobase/a;

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->H:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->I:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->J:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->K:Z

    new-instance v0, Lcom/tencent/liteav/videoproducer/producer/i$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/producer/i$3;-><init>(Lcom/tencent/liteav/videoproducer/producer/i;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->L:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    new-instance v0, Lcom/tencent/liteav/videoproducer/producer/i$4;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/producer/i$4;-><init>(Lcom/tencent/liteav/videoproducer/producer/i;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->M:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/s;

    invoke-direct {v0, p3}, Lcom/tencent/liteav/videoconsumer/renderer/s;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->g:Lcom/tencent/liteav/videoconsumer/renderer/s;

    new-instance v0, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;-><init>(Landroid/content/Context;ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    new-instance p2, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-direct {p2, p1, v0, p3}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;-><init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Lcom/tencent/liteav/videoproducer/capture/t;
    .locals 2

    instance-of v0, p0, Lcom/tencent/liteav/videoproducer/capture/am;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Lcom/tencent/liteav/videoproducer/capture/am;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/am;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    instance-of v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    check-cast p0, Lcom/tencent/liteav/videoproducer/capture/t;

    return-object p0
.end method

.method public static a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;
    .locals 1

    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getEncodeAbility()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 8

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v4

    iget v4, v4, Lcom/tencent/liteav/base/util/Rotation;->mValue:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    rsub-int v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v5, v3}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setFront(Z)V

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v6

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setCaptureMirror(ZZ)V

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v5, v4}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setCaptureRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v5, v3}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setFront(Z)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setCaptureRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v5, v2}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->getPreprocessorRotation(Z)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setPreprocessRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6, v4, v2}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setRealCaptureFrameSize(IILcom/tencent/liteav/base/util/Rotation;Z)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6, v4, v2}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->setRealCaptureFrameSize(IILcom/tencent/liteav/base/util/Rotation;Z)V

    new-instance v3, Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    invoke-direct {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;-><init>()V

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v4}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->getPreprocessorMirrorInfo()Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setPreprocessorMirror(Lcom/tencent/liteav/videobase/frame/MirrorInfo;)V

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v4, v1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->getPreprocessorRotation(Z)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setPreprocessorRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v4, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v1, v4, :cond_2

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    :goto_2
    invoke-virtual {v3, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setPreprocessorScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v4, v2}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->getPreprocessorRotation(Z)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->getRenderMirrorInfo(Lcom/tencent/liteav/base/util/Rotation;)Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setRenderMirror(Lcom/tencent/liteav/videobase/frame/MirrorInfo;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->getRenderRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setRenderRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->getRenderSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setRenderSize(Lcom/tencent/liteav/base/util/Size;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->getEncodeMirrorInfo()Lcom/tencent/liteav/videobase/frame/MirrorInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setEncodeMirror(Lcom/tencent/liteav/videobase/frame/MirrorInfo;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->getEncodeRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setEncodeRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->getEncodeSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setEncodeSize(Lcom/tencent/liteav/base/util/Size;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isBlackFrame()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setIsBlackFrame(Z)V

    :cond_3
    invoke-virtual {p1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMetaData(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    return-void
.end method

.method private static a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/r;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setDisplayView "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->J:Z

    invoke-static {p1, v0, p0}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->setTouchToFocusEnabled(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/a;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->K:Z

    invoke-static {p1, v0, p0}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->setZoomEnabled(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/b;)V

    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoconsumer/renderer/r;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Lcom/tencent/liteav/videoconsumer/renderer/r;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    instance-of v0, p1, Lcom/tencent/liteav/videoconsumer/consumer/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->M:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->L:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->z:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->g:Lcom/tencent/liteav/videoconsumer/renderer/s;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/s;->a(Z)V

    :cond_1
    return-void
.end method

.method private a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->getCaptureSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v2, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iget v2, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iput v0, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    instance-of v0, p3, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setScreenAutoRotateEnable(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->setCameraCaptureMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setCameraCaptureMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    sget-object p2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;->d:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->setCameraCaptureMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    sget-object p2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;->d:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setCameraCaptureMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    iget p2, p3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget p3, p3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->setManualCaptureSize(II)V

    :cond_3
    return-void
.end method

.method private a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 4

    sget-object v0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-eq p1, v0, :cond_5

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->getCaptureSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iput v0, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    const/4 p1, 0x1

    :cond_2
    iget v0, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    if-le v0, v1, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget p2, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iput p2, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    goto :goto_0

    :cond_3
    move v3, p1

    :goto_0
    if-eqz v3, :cond_5

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {p1, p3}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->setResolutionMode(Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {p1, p3}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setResolutionMode(Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {p1, p3}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setResolutionMode(Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {p1, p3}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setResolutionMode(Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    iget p3, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v0, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-virtual {p1, p3, v0}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->setEncodeSize(II)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    iget p3, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget p2, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-virtual {p1, p3, p2}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setEncodeSize(II)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "Stop custom capture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;F)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Lcom/tencent/liteav/videoproducer/capture/t;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v0

    iget v1, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/tencent/liteav/videoproducer/producer/i;->onTap(IIII)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/encoder/ay;->h:Lcom/tencent/liteav/videoproducer/encoder/b;

    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getProducerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    move-result-object v2

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->setEncodeTimestamp(J)V

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_3
    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/encoder/bg;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/tencent/liteav/videoproducer/encoder/ay;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/tencent/liteav/videoproducer/encoder/ay;->g:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/encoder/ay;->c:Lcom/tencent/liteav/videoproducer/utils/a;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/utils/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/encoder/ay;->b:Lcom/tencent/liteav/videobase/utils/k;

    invoke-interface {v0, p2}, Lcom/tencent/liteav/videobase/utils/k;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/encoder/bh;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "encodeFrameInternal"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    invoke-static {p2, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/r;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-static {p2, p0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/r;)V

    :cond_6
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;ILcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setRPSNearestREFSize: %d"

    invoke-static {v0, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, "setRPSNearestREFSize with stream type: %s, but can\'t find matched videoEncodeController."

    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/bb;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;I)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "setRPSNearestREFSize"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Landroid/graphics/Bitmap;FFF)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setWatermark(Landroid/graphics/Bitmap;FFF)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Landroid/graphics/Bitmap;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x40

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    instance-of v3, v2, Lcom/tencent/liteav/videoproducer/capture/am;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/tencent/liteav/videoproducer/capture/am;->a(Landroid/graphics/Bitmap;III)V

    return-void

    :cond_3
    instance-of p1, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string p1, "setPausedImage in Start param."

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string p1, "setPausedImage failed!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Landroid/graphics/Point;IIII)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Lcom/tencent/liteav/videoproducer/capture/t;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/t;->a()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(II)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    invoke-static {p0, p2, p3, p4, p5}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->showFocusView(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setScreenDisplayRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/base/util/Rotation;Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "onOrientationChanged, sensorRotation=%s, displayRotation=%s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setSensorRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setDisplayRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setSensorRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {p0, p2}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setDisplayRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->z:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setRenderScaleType: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->z:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoconsumer/renderer/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setRenderMirrorMode: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setRenderMirrorModeByUser(Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCustomRenderListener PixelFormatType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  PixelBufferType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->A:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->A:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    if-nez p3, :cond_0

    new-instance p3, Lcom/tencent/liteav/videoconsumer/consumer/a;

    sget v1, Lcom/tencent/liteav/videoconsumer/consumer/a$a;->b:I

    invoke-direct {p3, v1}, Lcom/tencent/liteav/videoconsumer/consumer/a;-><init>(I)V

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    :cond_0
    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-direct {p0, p3}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoconsumer/renderer/r;)V

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Z)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->g:Lcom/tencent/liteav/videoconsumer/renderer/s;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/s;->b(Z)V

    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->g:Lcom/tencent/liteav/videoconsumer/renderer/s;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->A:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/s;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCustomVideoProcessListener PixelFormatType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",  PixelBufferType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " listener= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->E:Lcom/tencent/liteav/videoproducer/producer/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/videoproducer/producer/a;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/a;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->E:Lcom/tencent/liteav/videoproducer/producer/a;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->E:Lcom/tencent/liteav/videoproducer/producer/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomVideoProcessListenerAdapter"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/producer/a;->b:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/b;->a(Lcom/tencent/liteav/videoproducer/producer/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->E:Lcom/tencent/liteav/videoproducer/producer/a;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setInterceptorBeforeWatermark(Lcom/tencent/liteav/videobase/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/common/SnapshotSourceType;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "takeSnapshotInternal sourceType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/liteav/videobase/common/SnapshotSourceType;->a:Lcom/tencent/liteav/videobase/common/SnapshotSourceType;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/tencent/liteav/videobase/common/SnapshotSourceType;->b:Lcom/tencent/liteav/videobase/common/SnapshotSourceType;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string p1, "takeSnapshotInternal return null, no match render."

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->o:Lcom/tencent/liteav/videobase/videobase/i;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->n:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->k:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->d()V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->processFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->n:Lcom/tencent/liteav/videobase/videobase/i;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->H:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->k:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    const-string v3, "capture first frame"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "receive first capture frame! "

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-static {p2}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Lcom/tencent/liteav/videoproducer/capture/t;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/t;->b()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->processFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCaptureParams "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setCaptureParamInternal "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, p1, :cond_0

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "setCaptureParamInternal sourcetype not match: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , current is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    sget-object v1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;

    if-ne p2, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->setPerformanceMode(Z)V

    instance-of v0, p3, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    move-object v1, p3

    check-cast v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    goto :goto_1

    :cond_3
    instance-of v0, p3, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    move-object v1, p3

    check-cast v1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    goto :goto_1

    :cond_4
    instance-of v0, p3, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    move-object v1, p3

    check-cast v1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    goto :goto_1

    :cond_5
    instance-of v0, p3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-direct {v0, p3}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    :cond_6
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->b(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    return-void

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setCaptureParamInternal capturesource is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setServerConfig="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->l:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    :cond_2
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->m:Lcom/tencent/liteav/videoproducer/producer/d;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->l:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getGsensorRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videoproducer/producer/d;->a(Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setGSensorMode: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setGSensorMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setGSensorMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setGSensorMode(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setHomeOrientation: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setHomeOrientation(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setHomeOrientation(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setHomeOrientation(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "requestKeyFrame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "requestKeyFrame with stream type: %s, but can\'t find matched videoEncodeController."

    invoke-static {p0, p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/bl;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "restartIDRFrame"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "ackRPSRecvFrameIndex with stream type: %s, but can\'t find matched videoEncodeController."

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v0, p2, p3}, Lcom/tencent/liteav/videoproducer/encoder/bc;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;II)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "ackRPSRecvFrameIndex"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/tencent/liteav/videoproducer/encoder/bd;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Ljava/lang/Runnable;

    move-result-object p1

    const-string p2, "reconfig"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string p2, "%s video encoder is started"

    new-array p3, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p0, p2, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startEncodeStreamInternal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videobase/base/GLConstants$ResolutionMode;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->v:Lorg/json/JSONArray;

    iput-object v0, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-virtual {p2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode()Z

    move-result v3

    invoke-direct {v0, v2, p1, v3}, Lcom/tencent/liteav/videoproducer/encoder/ay;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Z)V

    monitor-enter v0

    :try_start_0
    iget-boolean v2, v0, Lcom/tencent/liteav/videoproducer/encoder/ay;->f:Z

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v2, "already initialzied"

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v3, "initialzie"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "video-encoder"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ay;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    iput-boolean v1, v0, Lcom/tencent/liteav/videoproducer/encoder/ay;->f:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->l:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->w:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p2, p3}, Lcom/tencent/liteav/videoproducer/encoder/bf;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "Start"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V
    .locals 3

    sget-object v0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setEncodeStrategy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->w:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "setHWEncoderDeviceRelatedParams: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->v:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setHWEncoderDeviceRelatedParams error "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/i;Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->K:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-static {v0, p1, p0}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->setZoomEnabled(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/b;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->k:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->d()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->i:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "initOpenGLComponents"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->k:Ljava/lang/Object;

    new-instance v0, Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    const/16 v1, 0x80

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2, v1, v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->initialize(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->i:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGLError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v2, "EGLCore create failed."

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "stopCaptureInternal"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videoconsumer/renderer/r;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Z)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->g:Lcom/tencent/liteav/videoconsumer/renderer/s;

    instance-of v2, v2, Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/videoconsumer/renderer/s;->b(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->c()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->m:Lcom/tencent/liteav/videoproducer/producer/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/d;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->m:Lcom/tencent/liteav/videoproducer/producer/d;

    :cond_2
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->H:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->I:Z

    new-instance v0, Lcom/tencent/liteav/videobase/videobase/a;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/videobase/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->F:Lcom/tencent/liteav/videobase/videobase/a;

    new-instance v0, Lcom/tencent/liteav/videobase/videobase/a;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/videobase/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->G:Lcom/tencent/liteav/videobase/videobase/a;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->d()V

    return-void
.end method

.method private b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 9

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getRenderSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getEncodeSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getEncodeRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v8

    sget-object v2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setEncodeRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->F:Lcom/tencent/liteav/videobase/videobase/a;

    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/a;->a:I

    iget v2, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->F:Lcom/tencent/liteav/videobase/videobase/a;

    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/a;->b:I

    iget v2, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->G:Lcom/tencent/liteav/videobase/videobase/a;

    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/a;->a:I

    iget v2, v7, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->G:Lcom/tencent/liteav/videobase/videobase/a;

    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/a;->b:I

    iget v2, v7, Lcom/tencent/liteav/base/util/Size;->height:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->G:Lcom/tencent/liteav/videobase/videobase/a;

    iget-object v0, v0, Lcom/tencent/liteav/videobase/videobase/a;->c:Lcom/tencent/liteav/base/util/Rotation;

    if-ne v0, v8, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/a;

    iget v0, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v2, v0, v1}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->F:Lcom/tencent/liteav/videobase/videobase/a;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v1, 0x2

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->registerVideoProcessedListener(ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/a;

    iget v0, v7, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v1, v7, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v2, v0, v1, v8}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(IILcom/tencent/liteav/base/util/Rotation;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->G:Lcom/tencent/liteav/videobase/videobase/a;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v1, 0x1

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->registerVideoProcessedListener(ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static b(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 1

    instance-of v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->b()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->b()V

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->c()V

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string/jumbo v1, "videoproducer already uninitialize."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/i;->a()Lcom/tencent/liteav/videobase/utils/i;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/utils/i;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->uninitialize()V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->uninitialize()V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->uninitialize()V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->uninitialize()V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->uninitialize()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    :cond_3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->d()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->quitLooper()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/i;ILcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setRPSIFrameFPS: %d"

    invoke-static {v0, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, "setRPSIFrameFPS with stream type: %s, but can\'t find matched videoEncodeController."

    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ba;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;I)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "setRPSIFrameFPS"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setRenderRotation: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setRenderRotationByUser(Lcom/tencent/liteav/base/util/Rotation;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startCaptureInternal sourceType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",captureParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ba;->a()Lcom/tencent/liteav/videoproducer/capture/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ba;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    sget-object v1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->setPerformanceMode(Z)V

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    sget-object p2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, p2, :cond_3

    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/am;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->h:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/liteav/videoproducer/capture/am;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->m:Lcom/tencent/liteav/videoproducer/producer/d;

    if-nez p1, :cond_2

    new-instance p1, Lcom/tencent/liteav/videoproducer/producer/d;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->h:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/tencent/liteav/videoproducer/producer/d;-><init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/producer/d$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->m:Lcom/tencent/liteav/videoproducer/producer/d;

    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->m:Lcom/tencent/liteav/videoproducer/producer/d;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/d;->enable()V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->l:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->m:Lcom/tencent/liteav/videoproducer/producer/d;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getGsensorRotationCorrection()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videoproducer/producer/d;->a(Lcom/tencent/liteav/base/util/Rotation;)V

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, p2, :cond_4

    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/am;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->h:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/liteav/videoproducer/capture/am;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, p2, :cond_5

    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p1, p2, v0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->l:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/egl/EGLCore;->getEglContext()Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2, p3, p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoconsumer/renderer/r;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoconsumer/renderer/r;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->b(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    return-void

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "can\'t Start when sourceType isn\'t NONE. current is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->b()V

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->c()V

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a()V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/i;Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->J:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->y:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-static {v0, p1, p0}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->setTouchToFocusEnabled(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/a;)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->stop()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    :cond_0
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->p:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setEncodeRotation: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->setEncodeRotationByUser(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->setEncodeRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->setEncodeRotation(Lcom/tencent/liteav/base/util/Rotation;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/producer/i;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setEncodeMirrorEnabled: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->setEncodeMirrorByUser(Z)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/producer/i;)Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-object p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->i:Lcom/tencent/liteav/base/b/b;

    const-string v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "uninitOpenGLComponents"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->j:Lcom/tencent/liteav/videobase/egl/EGLCore;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->uninitializeGLComponents()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/producer/i;)Lcom/tencent/liteav/videoconsumer/renderer/s;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->g:Lcom/tencent/liteav/videoconsumer/renderer/s;

    return-object p0
.end method

.method private e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videoconsumer/renderer/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/producer/i;)Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->A:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->r:Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/decider/CaptureResolutionDecider;->initialize()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->t:Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/decider/VideoMirrorDecider;->initialize()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->s:Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/decider/VideoRotationDecider;->initialize()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->u:Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/decider/ResolutionDecider;->initialize()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->initialize()V

    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/t;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/t;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/i;->a()Lcom/tencent/liteav/videobase/utils/i;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->D:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.liteav.video.action.OUT_OF_MEMORY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/tencent/liteav/videobase/utils/i;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic h(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->b()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "pauseCaptureInternal"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v0, "ignore invoking pauseCapture() when using custom input"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->pause()V

    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "resumeCaptureInternal"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v0, "ignore invoking resumeCapture() when using custom input"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->resume()V

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v0, "can\'t Start when sourceType isn\'t NONE"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "Start custom capture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ba;->a()Lcom/tencent/liteav/videoproducer/capture/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ba;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/i;->c()V

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$CameraCaptureMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->n:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->B:Lcom/tencent/liteav/videoconsumer/renderer/r;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoconsumer/renderer/r;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->C:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Lcom/tencent/liteav/videoconsumer/renderer/r;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->I:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->I:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "preprocess first frame out!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/ar;->a(Lcom/tencent/liteav/videoproducer/producer/i;ILcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/tencent/liteav/base/util/Rotation;Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/as;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/base/util/Rotation;Lcom/tencent/liteav/base/util/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Ljava/lang/Runnable;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->f:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method final a(Ljava/lang/Runnable;J)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/i;->f:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/base/util/CustomHandler;->runAndWaitDone(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onCameraTouchEnable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCameraTouchEnable enableTouch:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/an;->a(Lcom/tencent/liteav/videoproducer/producer/i;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCameraZoomEnable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCameraZoomEnable enableZoom:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/ao;->a(Lcom/tencent/liteav/videoproducer/producer/i;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCaptureError()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    const-string v1, "onCaptureError"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCaptureFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getProducerChainTimestamp()Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;

    move-result-object v0

    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->setCaptureTimestamp(J)V

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_1
    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/videoproducer/producer/ap;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_2
    return-void
.end method

.method public final onScreenDisplayOrientationChanged(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onScreenDisplayOrientationChanged rotation:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/am;->a(Lcom/tencent/liteav/videoproducer/producer/i;Lcom/tencent/liteav/base/util/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStartFinish(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onStartFinish success:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTap(IIII)V
    .locals 11

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/i;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/i;->q:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v4, p3, p4}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    invoke-static {v0, v2, v3, v4, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->reverseMappingPoint(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/base/util/Rotation;Landroid/graphics/Point;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/base/util/Size;)Landroid/graphics/Point;

    move-result-object v6

    move-object v5, p0

    move v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-static/range {v5 .. v10}, Lcom/tencent/liteav/videoproducer/producer/at;->a(Lcom/tencent/liteav/videoproducer/producer/i;Landroid/graphics/Point;IIII)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onZoom(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/au;->a(Lcom/tencent/liteav/videoproducer/producer/i;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/i;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
