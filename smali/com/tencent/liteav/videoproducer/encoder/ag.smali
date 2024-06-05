.class public final Lcom/tencent/liteav/videoproducer/encoder/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/encoder/ag$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:D

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:Lcom/tencent/liteav/videoproducer/encoder/ag$a;

.field i:I

.field j:I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ag$a;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->b:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->c:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->d:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->e:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->f:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->g:J

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->h:Lcom/tencent/liteav/videoproducer/encoder/ag$a;

    const/16 p1, 0x3e8

    invoke-static {p1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->i:I

    invoke-static {p1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->j:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "RealFpsAndBitrateCaculate_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->a:Ljava/lang/String;

    return-void
.end method
