.class public Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public copy(Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;)V
    .locals 1

    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p1, p1, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public getCaptureTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEncodeFinishTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEncodeTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreprocessTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public setCaptureTimestamp(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mCaptureTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setEncodeFinishTimestamp(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setEncodeTimestamp(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mEncodeTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setPreprocessTimestamp(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ProducerChainTimestamp;->mPreprocessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
