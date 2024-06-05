.class public final Lcom/tencent/liteav/videoproducer/encoder/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private final D:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private final F:Ljava/util/concurrent/atomic/AtomicLong;

.field private final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Ljava/util/concurrent/atomic/AtomicLong;

.field private final I:Ljava/lang/Runnable;

.field public a:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field private b:Ljava/lang/String;

.field private final c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private final d:Landroid/os/Bundle;

.field private e:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final f:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

.field private g:[B

.field private h:Z

.field private i:Landroid/media/MediaCodec;

.field private j:Lcom/tencent/liteav/videoproducer/encoder/br$a;

.field private k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private l:J

.field private m:Lcom/tencent/liteav/base/util/x;

.field private n:J

.field private o:J

.field private p:J

.field private q:I

.field private final r:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:D

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->g:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->h:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->l:J

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->m:Lcom/tencent/liteav/base/util/x;

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->n:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->o:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->q:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->r:Ljava/util/Deque;

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->s:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->t:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->u:J

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->v:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->w:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->x:D

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->y:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->z:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->A:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->B:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->C:J

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->D:Ljava/util/Deque;

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->E:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->F:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->G:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->H:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/av;->a(Lcom/tencent/liteav/videoproducer/encoder/au;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->I:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->d:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->f:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SurfaceInputVideoEncoder_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->g:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->h:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->l:J

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->m:Lcom/tencent/liteav/base/util/x;

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->n:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->o:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->q:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->r:Ljava/util/Deque;

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->s:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->t:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->u:J

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->v:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->w:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->x:D

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->y:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->z:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->A:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->B:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->C:J

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->D:Ljava/util/Deque;

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->E:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->F:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->G:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->H:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/aw;->a(Lcom/tencent/liteav/videoproducer/encoder/au;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->I:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->d:Landroid/os/Bundle;

    sget-object p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->f:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SurfaceInputVideoEncoder_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Landroid/view/Surface;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->l:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->v:J

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    mul-int v0, v0, v1

    iget v1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    iget v2, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-wide v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->n:J

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-wide v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->o:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v0, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "video/hevc"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "video/avc"

    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->a:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isHardwareEncoderHighProfileAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    if-nez v0, :cond_8

    new-instance v0, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string v1, "com.liteav.storage.global"

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    const-string v1, "Liteav.Video.android.local.rtc.enable.high.profile"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/storage/PersistStorage;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable high profile from persist storage:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    :cond_8
    :goto_2
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->b(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/af;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->a:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-direct {v2, v1, p1, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/af;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    const/4 p1, 0x1

    iput-boolean p1, v2, Lcom/tencent/liteav/videoproducer/encoder/af;->a:Z

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/af;->a()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_a

    iput-boolean v5, v2, Lcom/tencent/liteav/videoproducer/encoder/af;->b:Z

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/af;->a()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :cond_a
    :goto_3
    if-eqz p1, :cond_d

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const-string/jumbo v4, "width"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const-string v4, "height"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const-string v4, "bitrate"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    iput v4, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v4

    const/16 v5, 0x1e

    if-gt v4, v5, :cond_b

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v5, "resetBitrateAfterApiLevel30,bitrate="

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/media/MediaCodec;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v5, "MediaFormat get key fail"

    invoke-static {v4, v5, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v4, "start MediaCodec with format: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    return-object p1

    :catchall_1
    move-exception v2

    move-object v7, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v7

    goto :goto_5

    :cond_d
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string v2, "configure encoder failed."

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, v1

    move-object v1, v0

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_e
    invoke-direct {p0, v2}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/media/MediaCodec;)V

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->c:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start encoder failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v3

    const/16 v4, 0x17

    if-lt v3, v4, :cond_f

    instance-of v3, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_f

    move-object v3, p1

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x44c

    if-ne v3, v4, :cond_f

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Insufficient resource, Start encoder failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_f
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v4, Lcom/tencent/liteav/videobase/videobase/i;->z:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->f:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    iget v5, v5, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    iget v6, v1, Lcom/tencent/liteav/videobase/videobase/h$c;->mValue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-interface {v3, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start MediaCodec failed,encode params:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Landroid/media/MediaCodec;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v2, "destroy mediaCodec stop failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v1, "destroy mediaCodec release failed."

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v0, "destroy mediaCodec"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/media/MediaCodec;I)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "video-bitrate"

    mul-int/lit16 p2, p2, 0x400

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string/jumbo v0, "updateBitrateToMediaCodec failed."

    invoke-static {p2, v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->w:Z

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->v:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->v:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-wide v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v2, "has B frame,isEnablesBframe=%b,mLastPresentationTimestamp=%d,packet.pts=%d"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->w:Z

    new-instance v0, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string v1, "com.liteav.storage.global"

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    const-string v1, "Liteav.Video.android.local.rtc.enable.high.profile"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->j:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->a()V

    :cond_0
    iget-wide v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->v:J

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/au;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->j:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v1, "onRequestRestart"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->j:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->a()V

    :cond_0
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/au;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "modifyEncodedData return null byte array"

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v3, v2

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v3, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v3, :cond_5

    iget-boolean v3, v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    if-eqz v3, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->nativeGetSpsPps([BZZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->g:[B

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->g:[B

    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->h:Z

    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->g:[B

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->a([B)[B

    move-result-object p1

    goto :goto_4

    :cond_9
    const-string v0, "mSpsPps is null."

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/au;->a([BLandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->q:I

    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->q:I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    mul-int v0, v0, v1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/au;->e()V

    :cond_1
    return-void
.end method

.method private a(ZJ)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->B:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v2

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->C:J

    long-to-double v4, v4

    const-wide v6, 0x40bf400000000000L    # 8000.0

    mul-double v4, v4, v6

    sub-long v2, v0, v2

    long-to-double v2, v2

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v2

    double-to-long v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->A:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->C:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->B:J

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/au;->j()V

    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->C:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->C:J

    return-void
.end method

.method private a([BLandroid/media/MediaCodec$BufferInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v3}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Z)V

    array-length v6, v1

    int-to-long v6, v6

    invoke-direct {v0, v3, v6, v7}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(ZJ)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoproducer/encoder/au;->h()V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    if-eqz v3, :cond_1

    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->o:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->o:J

    iput-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    goto :goto_1

    :cond_1
    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    :goto_1
    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->n:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->n:J

    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoproducer/encoder/au;->i()J

    move-result-wide v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v13, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    iget-wide v14, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->s:J

    cmp-long v16, v14, v6

    if-nez v16, :cond_2

    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->s:J

    :cond_2
    iget-wide v14, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->t:J

    cmp-long v16, v14, v6

    if-nez v16, :cond_3

    iput-wide v12, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->t:J

    :cond_3
    iget-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->s:J

    iget-wide v14, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->t:J

    sub-long/2addr v6, v14

    add-long/2addr v12, v6

    iget-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->u:J

    cmp-long v14, v10, v6

    if-gtz v14, :cond_4

    add-long v10, v6, v8

    :cond_4
    cmp-long v6, v10, v12

    if-lez v6, :cond_5

    move-wide v10, v12

    :cond_5
    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->u:J

    new-instance v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-direct {v6}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;-><init>()V

    iget-object v7, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesUnlimitedGop()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v3, :cond_6

    sget-object v7, Lcom/tencent/liteav/videobase/common/c;->b:Lcom/tencent/liteav/videobase/common/c;

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/tencent/liteav/videobase/common/c;->e:Lcom/tencent/liteav/videobase/common/c;

    :goto_2
    iput-object v7, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/c;

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    sget-object v7, Lcom/tencent/liteav/videobase/common/c;->b:Lcom/tencent/liteav/videobase/common/c;

    goto :goto_3

    :cond_8
    sget-object v7, Lcom/tencent/liteav/videobase/common/c;->c:Lcom/tencent/liteav/videobase/common/c;

    :goto_3
    iput-object v7, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/c;

    :goto_4
    array-length v7, v1

    invoke-static {v7}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    iget-object v7, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-nez v7, :cond_9

    const-string v1, "allocate direct buffer for nal failed"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v7, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    iput-wide v12, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-object v2, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->o:J

    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    if-eqz v3, :cond_a

    iget-wide v7, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    goto :goto_5

    :cond_a
    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->p:J

    sub-long v7, v10, v8

    :goto_5
    iput-wide v7, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    sget-object v1, Lcom/tencent/liteav/videobase/common/d;->b:Lcom/tencent/liteav/videobase/common/d;

    iput-object v1, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/d;

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    iput-object v1, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iput v1, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    iput v1, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoproducer/encoder/au;->f()V

    goto :goto_6

    :cond_b
    invoke-direct {v0, v6}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    const/4 v4, 0x0

    :goto_6
    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/au;->j:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v6, v4}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_c
    return-void
.end method

.method private a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v2, "configure format: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v1, v2, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v1, "configure failed."

    invoke-static {p2, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private a([B)[B
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->g:[B

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/j;->a(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->g:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->g:[B

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v0, "add spspps for I frame, allocate buffer failed."

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private b(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v2, "mediaCodec getName failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "codecName="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "OMX.google.h264.encoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "will be destroyed codecName="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/media/MediaCodec;)V

    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "this is a Google H264 soft encoder. cancel use MediaCodec."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    return-object p1
.end method

.method private b(I)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->D:Ljava/util/Deque;

    mul-int/lit16 v4, v2, 0x7d0

    int-to-long v4, v4

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->E:I

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B
    .locals 2

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/j;->a(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->b([B)[B

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->c([B)[B

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private static b([B)[B
    .locals 5

    array-length v0, p0

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    const/4 v0, 0x0

    aget-byte v2, p0, v0

    if-nez v2, :cond_6

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    if-nez v3, :cond_6

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    if-nez v3, :cond_6

    const/4 v3, 0x4

    aget-byte v3, p0, v3

    if-nez v3, :cond_6

    aget-byte v1, p0, v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v1, 0x3

    array-length v4, p0

    if-ge v3, v4, :cond_3

    aget-byte v4, p0, v1

    if-nez v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    if-nez v4, :cond_1

    aget-byte v3, p0, v3

    if-eq v3, v2, :cond_4

    :cond_1
    aget-byte v3, p0, v1

    if-nez v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    array-length v2, p0

    sub-int/2addr v2, v1

    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/j;->a(I)[B

    move-result-object v2

    if-nez v2, :cond_5

    return-object p0

    :cond_5
    array-length v3, v2

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_6
    :goto_2
    return-object p0
.end method

.method private static c([B)[B
    .locals 12

    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    const/4 v7, 0x1

    if-gt v3, v0, :cond_5

    add-int/lit8 v8, v3, 0x2

    const/4 v9, 0x3

    if-ge v8, v0, :cond_0

    aget-byte v10, p0, v3

    if-nez v10, :cond_0

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, p0, v10

    if-nez v10, :cond_0

    aget-byte v10, p0, v8

    if-ne v10, v7, :cond_0

    const/4 v8, 0x3

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v3, 0x3

    if-ge v10, v0, :cond_1

    aget-byte v11, p0, v3

    if-nez v11, :cond_1

    add-int/lit8 v11, v3, 0x1

    aget-byte v11, p0, v11

    if-nez v11, :cond_1

    aget-byte v8, p0, v8

    if-nez v8, :cond_1

    aget-byte v8, p0, v10

    if-ne v8, v7, :cond_1

    const/4 v8, 0x4

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    :goto_1
    if-eq v8, v9, :cond_2

    if-eq v8, v6, :cond_2

    if-ne v3, v0, :cond_4

    :cond_2
    if-eq v5, v3, :cond_3

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v2

    aput v3, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v5, v3, v5

    add-int/2addr v4, v5

    :cond_3
    add-int v5, v3, v8

    :cond_4
    add-int/2addr v3, v8

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v4, v0

    invoke-static {v4}, Lcom/tencent/liteav/videobase/utils/j;->a(I)[B

    move-result-object v0

    if-nez v0, :cond_6

    return-object p0

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v5, v4, v7

    aget v8, v4, v2

    sub-int/2addr v5, v8

    new-array v8, v6, [B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-static {v8, v2, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v4, v4, v2

    add-int/2addr v3, v6

    invoke-static {p0, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->m:Lcom/tencent/liteav/base/util/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v1, "stopEosTimer"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->m:Lcom/tencent/liteav/base/util/x;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/x;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->m:Lcom/tencent/liteav/base/util/x;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->r:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    const/16 v0, 0x1f4

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    div-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/tencent/liteav/base/util/CustomHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method private h()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->y:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->z:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->z:J

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->z:J

    long-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v6

    iget-wide v6, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->y:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->x:D

    iput-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->z:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->y:J

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->G:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    move-wide v0, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->H:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private i()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->r:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->D:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->x:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->D:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->D:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->E:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->A:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restart hardware encoder because real bitrate is too low.expectBitrate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", realBitrate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->d:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "need_restart_when_down_bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->I:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->D:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;",
            "Lcom/tencent/liteav/videoproducer/encoder/br$a;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Lcom/tencent/liteav/base/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->j:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Landroid/view/Surface;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v0, "startCodecInternal success"

    invoke-static {p2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/tencent/liteav/base/util/Size;

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    invoke-direct {p2, v0, v1}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v1, "signalEndOfStream"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v2, "signalEndOfStream failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->m:Lcom/tencent/liteav/base/util/x;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/liteav/base/util/x;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ax;->a(Lcom/tencent/liteav/videoproducer/encoder/au;)Lcom/tencent/liteav/base/util/x$a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/util/x;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/x$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->m:Lcom/tencent/liteav/base/util/x;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/x;->a(II)V

    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoder not started yet. set bitrate to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " kbps will not take effect."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set bitrate to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " kbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->d:Landroid/os/Bundle;

    const-string v2, "need_restart_when_down_bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->b(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iput p1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->l:J

    sub-long/2addr v0, v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->I:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->I:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    sub-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Lcom/tencent/liteav/base/util/CustomHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/media/MediaCodec;I)V

    :cond_6
    return-void
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->r:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->r:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    const/16 p2, 0xa

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final a(Landroid/os/Looper;)V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/au$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/au$1;-><init>(Lcom/tencent/liteav/videoproducer/encoder/au;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "notifyEncodeError message = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->j:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$a;->j:Lcom/tencent/liteav/videobase/videobase/h$a;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/au;->f()V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/au;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/media/MediaCodec;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    return-void
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v1, "encoder output buffers changed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->j:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v2, "encoder output format changed: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v2, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOutputFormat failed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    if-gez v1, :cond_4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dequeueOutputBuffer return "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->G:Ljava/util/List;

    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v2

    const/16 v4, 0x15

    if-lt v2, v4, :cond_5

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v2, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    if-eqz v2, :cond_7

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_6

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0, v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_3

    :cond_7
    :goto_2
    const-string v0, "size is zero, but it isn\'t end of stream"

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    if-nez v0, :cond_8

    return-void

    :cond_8
    :try_start_3
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseOutputBuffer failed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOutputBuffer failed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    goto :goto_4

    :catchall_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dequeueOutputBuffer failed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Ljava/lang/String;)V

    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/au;->g()V

    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/au;->b:Ljava/lang/String;

    const-string v2, "requestSyncFrame failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
