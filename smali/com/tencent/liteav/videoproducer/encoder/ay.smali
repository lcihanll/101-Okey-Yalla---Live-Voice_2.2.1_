.class public final Lcom/tencent/liteav/videoproducer/encoder/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Lcom/tencent/liteav/videobase/frame/PixelFrame;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/tencent/liteav/videobase/utils/k;

.field public final c:Lcom/tencent/liteav/videoproducer/utils/a;

.field public d:Z

.field public e:Lcom/tencent/liteav/base/util/CustomHandler;

.field public f:Z

.field public final g:Z

.field public final h:Lcom/tencent/liteav/videoproducer/encoder/b;

.field private final j:Landroid/os/Bundle;

.field private final k:Lcom/tencent/liteav/base/b/a;

.field private l:Lcom/tencent/liteav/videoproducer/encoder/br;

.field private m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

.field private n:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:Z

.field private final t:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private final u:Lcom/tencent/liteav/videoproducer/encoder/c;

.field private final v:Lcom/tencent/liteav/videoproducer/encoder/bq;

.field private final w:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

.field private final x:Lcom/tencent/liteav/videoproducer/encoder/br$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    sput-object v0, Lcom/tencent/liteav/videoproducer/encoder/ay;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->j:Landroid/os/Bundle;

    new-instance v0, Lcom/tencent/liteav/videoproducer/utils/a;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/utils/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->c:Lcom/tencent/liteav/videoproducer/utils/a;

    new-instance v0, Lcom/tencent/liteav/base/b/a;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->k:Lcom/tencent/liteav/base/b/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->q:J

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->r:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->s:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->f:Z

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/encoder/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->h:Lcom/tencent/liteav/videoproducer/encoder/b;

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ay$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/ay$1;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ay;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->x:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoEncodeController_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->t:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isHWHevcEncodeSupport()Z

    move-result v1

    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isSWHevcEncodeSupport()Z

    move-result v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/c;-><init>(ZZLcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/bq;

    invoke-direct {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/bq;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->v:Lcom/tencent/liteav/videoproducer/encoder/bq;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->w:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iput-boolean p3, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->g:Z

    if-eqz p3, :cond_0

    new-instance p1, Lcom/tencent/liteav/videobase/utils/b;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/liteav/videobase/utils/m;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/m;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->b:Lcom/tencent/liteav/videobase/utils/k;

    return-void
.end method

.method private a(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->o:J

    iput-wide p3, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->p:J

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/ay;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/br;->b()V

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/br;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->e()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/tencent/liteav/videoproducer/encoder/br;->f()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    :goto_0
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-nez v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Lcom/tencent/liteav/videoproducer/encoder/br;->f()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    :goto_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->d()V

    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->n:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isHardwareEncoderAllowed()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_4

    sget-object v6, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v6, p1, :cond_4

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/r;

    iget-object v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->j:Landroid/os/Bundle;

    iget-object v9, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->t:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v10, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->w:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    invoke-direct {v6, v8, v9, v10}, Lcom/tencent/liteav/videoproducer/encoder/r;-><init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v8, "create HardwareVideoEncoder"

    invoke-static {v6, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/at;

    iget-object v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->t:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v9, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->w:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    invoke-direct {v6, v8, v9}, Lcom/tencent/liteav/videoproducer/encoder/at;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v8, "create SoftwareVideoEncoder"

    invoke-static {v6, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    invoke-interface {v6}, Lcom/tencent/liteav/videoproducer/encoder/br;->a()V

    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    iget-object v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->n:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-interface {v6, v8}, Lcom/tencent/liteav/videoproducer/encoder/br;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-virtual {v6}, Lcom/tencent/liteav/videoproducer/encoder/c;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v6

    iget-wide v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->p:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    iget-wide v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->o:J

    const-wide/16 v10, 0x14

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    iget-object v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    iget-object v9, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->x:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    invoke-interface {v8, v6, v9}, Lcom/tencent/liteav/videoproducer/encoder/br;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v7, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->t:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v8, Lcom/tencent/liteav/videobase/videobase/h$b;->q:Lcom/tencent/liteav/videobase/videobase/h$b;

    const-string v9, "start encoder success."

    invoke-interface {v7, v8, v4, v9}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    iput-boolean v7, v4, Lcom/tencent/liteav/videoproducer/encoder/c;->h:Z

    :goto_5
    if-ne p1, v2, :cond_6

    iget-object v2, v6, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v2, v3, :cond_6

    iget-object v2, v6, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    if-eq v2, v5, :cond_8

    :cond_6
    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProperty;

    invoke-virtual {v6}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesRps()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    goto :goto_6

    :cond_7
    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    :goto_6
    iget-object v4, v6, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-direct {v2, p1, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProperty;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;Lcom/tencent/liteav/videobase/common/CodecType;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->t:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/i;->u:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->w:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iget v4, v4, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    invoke-interface {p1, v3, v4, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    :cond_8
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open encoder cost time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->k:Lcom/tencent/liteav/base/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v1, "restartIDRFrame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    invoke-interface {p0}, Lcom/tencent/liteav/videoproducer/encoder/br;->e()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/br;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;II)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/br;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/br;->a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/c;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/encoder/c;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->c:Lcom/tencent/liteav/videoproducer/utils/a;

    iget v1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/utils/a;->a(I)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/br;->d(I)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/br;->c(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)V
    .locals 4

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videoproducer/encoder/c;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iget-wide v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    iget-wide v2, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(JJ)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->c:Lcom/tencent/liteav/videoproducer/utils/a;

    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/utils/a;->a(I)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string p1, "invalid params, Start failed."

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "strategy = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->k:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->setRPSEncodeSupported(Z)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->y:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iget p0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getEncodeAbility()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->n:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ay;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/encoder/ay;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->d()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->b:Lcom/tencent/liteav/videobase/utils/k;

    invoke-interface {v0}, Lcom/tencent/liteav/videobase/utils/k;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->r:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->s:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/c;->b()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->k:Z

    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->l:Z

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->c:J

    const/4 v5, 0x0

    iput v5, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->d:F

    iput v5, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->e:F

    iput v5, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->f:F

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->g:D

    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->h:Z

    sget-object v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    iput-object v5, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->i:Z

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iput v0, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    iput v0, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->p:I

    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->u:Z

    iput v0, v1, Lcom/tencent/liteav/videoproducer/encoder/c;->v:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->v:Lcom/tencent/liteav/videoproducer/encoder/bq;

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->e:J

    iput-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/bq;->d:J

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->h:Lcom/tencent/liteav/videoproducer/encoder/b;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/encoder/ay;I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/br;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/encoder/ay;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v1, "notifyEncodeFail"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$a;->j:Lcom/tencent/liteav/videobase/videobase/h$a;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->t:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$a;->i:Lcom/tencent/liteav/videobase/videobase/h$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "encode fail:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/br;->c()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/br;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->t:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$b;->A:Lcom/tencent/liteav/videobase/videobase/h$b;

    const-string v3, "stop encoder success"

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/encoder/ay;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v1, "encoder receive first frame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->q:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->r:Z

    :cond_0
    return-void
.end method

.method private e()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->l:Lcom/tencent/liteav/videoproducer/encoder/br;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/br;->h()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/encoder/ay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->f:Z

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/c;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/liteav/videoproducer/encoder/ay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->s:Z

    return p0
.end method

.method static synthetic j(Lcom/tencent/liteav/videoproducer/encoder/ay;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->s:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/liteav/videoproducer/encoder/ay;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->q:J

    return-wide v0
.end method

.method static synthetic l(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/bq;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->v:Lcom/tencent/liteav/videoproducer/encoder/bq;

    return-object p0
.end method

.method static synthetic m(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/videoproducer/encoder/b;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->h:Lcom/tencent/liteav/videoproducer/encoder/b;

    return-object p0
.end method

.method static synthetic n(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/base/util/CustomHandler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    return-object p0
.end method

.method static synthetic o(Lcom/tencent/liteav/videoproducer/encoder/ay;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->f:Z

    return v0
.end method

.method static synthetic p(Lcom/tencent/liteav/videoproducer/encoder/ay;)Lcom/tencent/liteav/base/util/CustomHandler;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/liteav/videoproducer/encoder/ay;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->b:Lcom/tencent/liteav/videobase/utils/k;

    invoke-interface {v0}, Lcom/tencent/liteav/videobase/utils/k;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->w:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    sget-object v3, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-eq v2, v3, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getEncodeSize()Lcom/tencent/liteav/base/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "encode size is invalid."

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/c;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v2

    iget v3, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v4, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    iget v4, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    if-eq v3, v4, :cond_3

    :cond_2
    iget v3, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v3, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v1, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    iput v1, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->v:Lcom/tencent/liteav/videoproducer/encoder/bq;

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bq;->f:Lcom/tencent/liteav/base/util/x;

    if-nez v2, :cond_4

    new-instance v2, Lcom/tencent/liteav/base/util/x;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/tencent/liteav/base/util/x;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/x$a;)V

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bq;->f:Lcom/tencent/liteav/base/util/x;

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bq;->f:Lcom/tencent/liteav/base/util/x;

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/base/util/x;->a(II)V

    :cond_4
    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bq;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bq;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Duplicate timestamp!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/bq;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->u:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoproducer/encoder/c;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videoproducer/encoder/c$d;

    move-result-object v1

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/ay$3;->a:[I

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/c$d;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/ay;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eq v0, v1, :cond_6

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_6
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v0, "encode ask instruction return default."

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/ay;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eq v0, v1, :cond_9

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->v:Lcom/tencent/liteav/videoproducer/encoder/bq;

    if-eqz v0, :cond_8

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bq;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/bq;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_9
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/bi;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "onEncodedFail"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void

    :cond_b
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->e()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;)V

    :cond_d
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void

    :cond_e
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_f
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ay$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/ay$2;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ay;)V

    const-string/jumbo v1, "uninitialize"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/az;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "snapshot"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/bk;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "setEncodeStrategy"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/be;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "setServerConfig"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->f:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v0, "runOnEncodeThread before initialize! "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->a:Ljava/lang/String;

    const-string v0, "ignore runnable: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->d:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ay;->b:Lcom/tencent/liteav/videobase/utils/k;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/ay;->i:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videobase/utils/k;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/bj;->a(Lcom/tencent/liteav/videoproducer/encoder/ay;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "Stop"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
