.class public Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mDecodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mDeliverTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private mRenderFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDeliverTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDecodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mRenderFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public copy(Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;)V
    .locals 1

    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDeliverTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDeliverTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDecodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDecodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p1, p1, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mRenderFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mRenderFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public getDecodeFinishTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDecodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeliverTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDeliverTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRenderFinishTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mRenderFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDecodeFinishTimestamp(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDecodeFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setDeliverTimestamp(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mDeliverTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public setRenderFinishTimestamp(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/ConsumerChainTimestamp;->mRenderFinishTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
