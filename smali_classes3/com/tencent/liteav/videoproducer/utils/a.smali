.class public final Lcom/tencent/liteav/videoproducer/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FpsThrottler_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->b:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->c:J

    return-void
.end method

.method public final declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->b:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->a:Ljava/lang/String;

    const-string v1, "update fps to "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoproducer/utils/a;->b:I

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/utils/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(J)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/utils/a;->c:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    iget v5, p0, Lcom/tencent/liteav/videoproducer/utils/a;->b:I

    int-to-double v5, v5

    div-double/2addr v2, v5

    sub-long/2addr p1, v0

    long-to-double p1, p1

    div-double/2addr p1, v2

    double-to-int p1, p1

    iget p2, p0, Lcom/tencent/liteav/videoproducer/utils/a;->d:I

    add-int/lit8 v0, p2, 0xa

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/utils/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :cond_1
    if-ge p2, p1, :cond_2

    add-int/2addr p2, v4

    :try_start_1
    iput p2, p0, Lcom/tencent/liteav/videoproducer/utils/a;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v4

    :cond_2
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/utils/a;->a()V

    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/utils/a;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
