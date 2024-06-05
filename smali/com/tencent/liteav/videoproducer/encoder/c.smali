.class public final Lcom/tencent/liteav/videoproducer/encoder/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/base/util/x$a;
.implements Lcom/tencent/liteav/videoproducer/encoder/ag$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/encoder/c$c;,
        Lcom/tencent/liteav/videoproducer/encoder/c$a;,
        Lcom/tencent/liteav/videoproducer/encoder/c$b;,
        Lcom/tencent/liteav/videoproducer/encoder/c$e;,
        Lcom/tencent/liteav/videoproducer/encoder/c$d;
    }
.end annotation


# static fields
.field private static final x:Lcom/tencent/liteav/videoproducer/encoder/c$b;


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/tencent/liteav/base/util/x;

.field private D:Z

.field private E:Z

.field private F:I

.field final a:Ljava/lang/String;

.field b:J

.field c:J

.field d:F

.field e:F

.field f:F

.field g:D

.field h:Z

.field i:Z

.field j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

.field k:Z

.field l:Z

.field m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

.field n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

.field o:I

.field p:I

.field q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field final s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field final t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

.field u:Z

.field v:I

.field final w:Lcom/tencent/liteav/videoproducer/encoder/ag;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    sput-object v0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-void
.end method

.method public constructor <init>(ZZLcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->y:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->b:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->z:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->A:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->B:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->d:F

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->e:F

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->f:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->g:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->h:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->i:Z

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->k:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->l:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->p:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->D:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->E:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->u:Z

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->v:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->F:I

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->D:Z

    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->E:Z

    iput-object p4, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    new-instance p1, Lcom/tencent/liteav/videoproducer/encoder/ag;

    invoke-direct {p1, p0, p4}, Lcom/tencent/liteav/videoproducer/encoder/ag;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ag$a;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->w:Lcom/tencent/liteav/videoproducer/encoder/ag;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "EncoderSupervisor_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    const-string v1, "prioritize restart encoder on request."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->l:Z

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/c;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 7

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->B:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->B:J

    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->B:J

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->B:J

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "frame timestamp is rollback, need restart encoder."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->B:J

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_1
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0

    :cond_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setBaseFrameIndex(J)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setBaseGopIndex(J)V

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getReferenceStrategy()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    move-result-object v0

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setEncoderProfile(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getReferenceStrategy()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setReferenceStrategy(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setFps(I)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setBitrate(I)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    :cond_2
    return-object v1
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 3

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->D:Z

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->E:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->i()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object p0

    if-nez p0, :cond_2

    if-nez v0, :cond_2

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    :cond_2
    return-object p0

    :cond_3
    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->E:Z

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v1, v2, :cond_5

    if-eqz v0, :cond_4

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->j:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_6
    if-nez v1, :cond_9

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v1, v2, :cond_8

    if-eqz v0, :cond_7

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_7
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_8
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->j:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkEncodeH265, enable h265 failed because encode strategy conflict, mIsHWSupportH265:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSwSupportH265:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUsingEncodeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUsingEncodeStrategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->d()V

    :cond_a
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->h()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->u:Z

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->v:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->F:I

    iput v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0

    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne p0, v1, :cond_1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    :cond_1
    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->setHwHevcEncodeSupported(Z)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->y:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getEncodeAbility()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->h()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object p0

    return-object p0
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->y:J

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkFrameInOutDifference in frame:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->y:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " out frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->s:Lcom/tencent/liteav/videobase/videobase/h$b;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    const/4 p0, 0x3

    if-lt v0, p0, :cond_0

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    :goto_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->d:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_1
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private g()Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->h:Z

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    const/4 v3, 0x5

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v1, :cond_1

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object v0

    :cond_1
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v2, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v1, v2, :cond_4

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->D:Z

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->d()V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->i()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->i:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    :cond_3
    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->p:I

    if-ge v0, v3, :cond_5

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->i:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->e:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_6
    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->p:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v1, :cond_7

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object v0

    :cond_7
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v2, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v1, v2, :cond_b

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->E:Z

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->D:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    if-gtz v1, :cond_8

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->j:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_8
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->p:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    :cond_9
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->i()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->i:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    :cond_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    if-gtz v0, :cond_c

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->i:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_c
    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->p:I

    if-lt v0, v3, :cond_d

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->e:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_d
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->i:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->g()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object p0

    return-object p0
.end method

.method private h()Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v3, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v4, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->j:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    :cond_6
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->i()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object v1

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_7
    return-object v1
.end method

.method static synthetic h(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->z:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->z:J

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->s:Lcom/tencent/liteav/videobase/videobase/h$b;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    const/4 p0, 0x3

    if-lt v0, p0, :cond_0

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    :goto_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->e:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_1
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->b:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->A:J

    :cond_2
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0
.end method

.method private i()Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->j()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->j()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->i:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->o:I

    if-gtz p0, :cond_0

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->f:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0
.end method

.method private j()Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 6

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    mul-int v0, v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    const/16 v3, 0x2710

    if-eqz v0, :cond_2

    if-gt v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v4, :cond_3

    iget v4, v4, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v5, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    mul-int v4, v4, v5

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    if-gt v4, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez p0, :cond_6

    if-eqz v0, :cond_6

    :cond_5
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->c:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_6
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0
.end method

.method static synthetic k(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0

    :cond_1
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesRps()Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesRps()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eq v1, v2, :cond_7

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->c()V

    :cond_3
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v2, v3, :cond_6

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v2, :cond_4

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->h:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne p0, v0, :cond_5

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->h:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->h:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkRpsStatus, enable rps failed while current encode strategy is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->e:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->h:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setReferenceStrategy(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;)V

    :cond_7
    :goto_1
    return-object v0
.end method

.method private k()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v3, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v3, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v3, :cond_3

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method static synthetic l(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    return-object p0

    :cond_1
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c;->x:Lcom/tencent/liteav/videoproducer/encoder/c$b;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesSvc()Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesSvc()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v2, v3, :cond_5

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v2, :cond_3

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->g:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne p0, v0, :cond_4

    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->g:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->g:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    return-object p0

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    const-string v1, "Can\'t use svc mode in use hardware only strategy!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->g:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setReferenceStrategy(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;)V

    :cond_6
    return-object v0
.end method

.method static synthetic m(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->g()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    :goto_0
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v1
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videoproducer/encoder/c$d;
    .locals 7

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->y:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->y:J

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/tencent/liteav/videoproducer/encoder/c$a;

    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/d;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoproducer/encoder/d;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/j;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoproducer/encoder/j;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/k;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoproducer/encoder/k;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/l;

    invoke-direct {v6, p0}, Lcom/tencent/liteav/videoproducer/encoder/l;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v6, v1, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/m;

    invoke-direct {v6, p0}, Lcom/tencent/liteav/videoproducer/encoder/m;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v6, v1, v2

    const/4 v2, 0x5

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/n;

    invoke-direct {v6, p0}, Lcom/tencent/liteav/videoproducer/encoder/n;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v6, v1, v2

    const/4 v2, 0x6

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/o;

    invoke-direct {v6, p0}, Lcom/tencent/liteav/videoproducer/encoder/o;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v6, v1, v2

    const/4 v2, 0x7

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/p;

    invoke-direct {v6, p0}, Lcom/tencent/liteav/videoproducer/encoder/p;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v6, v1, v2

    const/16 v2, 0x8

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/q;

    invoke-direct {v6, p0}, Lcom/tencent/liteav/videoproducer/encoder/q;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v6, v1, v2

    const/16 v2, 0x9

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/e;

    invoke-direct {v6, p0}, Lcom/tencent/liteav/videoproducer/encoder/e;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v6, v1, v2

    const/16 v2, 0xa

    new-instance v6, Lcom/tencent/liteav/videoproducer/encoder/f;

    invoke-direct {v6, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/f;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    aput-object v6, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq p1, v1, :cond_1

    new-array p1, v5, [Lcom/tencent/liteav/videoproducer/encoder/c$a;

    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/g;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/encoder/g;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v1, p1, v3

    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/h;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/encoder/h;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v1, p1, v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v4, [Lcom/tencent/liteav/videoproducer/encoder/c$a;

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/i;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/i;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V

    aput-object v0, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videoproducer/encoder/c$a;

    invoke-interface {v2}, Lcom/tencent/liteav/videoproducer/encoder/c$a;->a()Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_6

    iget-object v5, v2, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    invoke-static {v5}, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a(Lcom/tencent/liteav/videoproducer/encoder/c$d;)I

    move-result v5

    iget-object v6, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    invoke-static {v6}, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a(Lcom/tencent/liteav/videoproducer/encoder/c$d;)I

    move-result v6

    if-gt v5, v6, :cond_5

    iget-object v5, v2, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    iget-object v6, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    if-ne v5, v6, :cond_4

    iget-object v5, v2, Lcom/tencent/liteav/videoproducer/encoder/c$b;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iget v5, v5, Lcom/tencent/liteav/videoproducer/encoder/c$e;->mPriority:I

    iget-object v6, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iget v6, v6, Lcom/tencent/liteav/videoproducer/encoder/c$e;->mPriority:I

    if-le v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_3

    :cond_6
    move-object v1, v2

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-static {p1, v2}, Lcom/tencent/liteav/base/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "apply pending encoded params: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    :cond_8
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-nez p1, :cond_a

    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v1, p1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    goto :goto_3

    :cond_a
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v1, p1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    :goto_3
    if-nez v1, :cond_b

    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;

    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->a:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-direct {v1, p1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/c$d;Lcom/tencent/liteav/videoproducer/encoder/c$e;)V

    :cond_b
    iput-boolean v3, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->k:Z

    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$d;->c:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    if-ne p1, v2, :cond_e

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq p1, v2, :cond_d

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->mPriority:I

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->mPriority:I

    if-gt p1, v2, :cond_d

    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->f:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    if-ne p1, v2, :cond_c

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$b;->B:Lcom/tencent/liteav/videobase/videobase/h$b;

    invoke-interface {p1, v2, v0, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->c()V

    goto :goto_4

    :cond_d
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    return-object p1

    :cond_e
    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$d;->d:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    if-ne p1, v2, :cond_11

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq p1, v2, :cond_10

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/c$e;->mPriority:I

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->mPriority:I

    if-gt p1, v2, :cond_10

    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->m:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->n:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/c$e;->i:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    if-ne p1, v2, :cond_f

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$b;->C:Lcom/tencent/liteav/videobase/videobase/h$b;

    invoke-interface {p1, v2, v0, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    new-instance p1, Lcom/tencent/liteav/base/util/x;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/liteav/base/util/x;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/x$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->C:Lcom/tencent/liteav/base/util/x;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/x;->a(II)V

    goto :goto_4

    :cond_10
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    return-object p1

    :cond_11
    :goto_4
    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    if-eq p1, v0, :cond_12

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "instruction: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->b:Lcom/tencent/liteav/videoproducer/encoder/c$e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/c$d;->b:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    if-ne p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/c;->b()V

    :cond_13
    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/c$b;->a:Lcom/tencent/liteav/videoproducer/encoder/c$d;

    return-object p1
.end method

.method public final a(D)V
    .locals 2

    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->g:D

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->f:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->s:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->e:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 4

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/c$c;-><init>(B)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    sget-object v3, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    sget-object v3, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->c:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-ne v2, v3, :cond_3

    :cond_0
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c$c;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    goto :goto_0

    :cond_1
    iget-boolean v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    sget-object v3, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->t:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    sget-object v3, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->c:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-ne v2, v3, :cond_3

    :cond_2
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/c$c;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-nez v2, :cond_4

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/c$c;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    :cond_4
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->u:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->v:I

    iput v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    :cond_5
    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->F:I

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->r:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    return-void
.end method

.method final b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->b:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->y:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->A:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->z:J

    return-void
.end method

.method public final onTimeout()V
    .locals 8

    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v0

    const-string v1, "Video"

    const-string v2, "SWToHWThreshold_CheckCount"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->c:J

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    invoke-static {}, Lcom/tencent/liteav/base/util/u;->a()[I

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->c:J

    iget v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->d:F

    const/4 v3, 0x0

    aget v3, v1, v3

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->d:F

    iget v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->e:F

    aget v0, v1, v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->e:F

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->q:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->f:F

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->g:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v0, v1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->f:F

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->d:F

    long-to-float v2, v2

    div-float/2addr v4, v2

    iget v3, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->f:F

    div-float/2addr v3, v2

    iget v5, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->e:F

    div-float/2addr v5, v2

    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    const-string v6, "SWToHWThreshold_CPU_MAX"

    invoke-virtual {v2, v1, v6}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v2, v6

    cmpl-float v2, v4, v2

    if-gez v2, :cond_2

    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    const-string v4, "SWToHWThreshold_FPS_MIN"

    invoke-virtual {v2, v1, v4}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v2, v6

    cmpg-float v2, v3, v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    const-string v4, "SWToHWThreshold_CPU"

    invoke-virtual {v2, v1, v4}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v2, v6

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_3

    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    const-string v4, "SWToHWThreshold_FPS"

    invoke-virtual {v2, v1, v4}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    long-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_3

    :cond_2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->i:Z

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->C:Lcom/tencent/liteav/base/util/x;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/x;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->C:Lcom/tencent/liteav/base/util/x;

    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->d:F

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->e:F

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->f:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/c;->g:D

    return-void
.end method
