.class public final Lcom/tencent/liteav/videoproducer/encoder/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/base/util/x$a;


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:J

.field f:Lcom/tencent/liteav/base/util/x;

.field private final g:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

.field private h:J


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->c:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->d:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->e:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->h:J

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->g:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "VECStatistics_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->g:Lcom/tencent/liteav/videobase/videobase/i;

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->d:J

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/bq;->e:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
