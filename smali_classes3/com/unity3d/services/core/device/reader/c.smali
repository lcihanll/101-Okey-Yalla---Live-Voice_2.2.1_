.class public Lcom/unity3d/services/core/device/reader/c;
.super Ljava/lang/Object;
.source "DeviceInfoReaderCompressorWithMetrics.java"

# interfaces
.implements Lcom/unity3d/services/core/device/reader/n;


# instance fields
.field private final a:Lcom/unity3d/services/core/device/reader/n;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/device/reader/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/c;->a:Lcom/unity3d/services/core/device/reader/n;

    return-void
.end method

.method private b()J
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/unity3d/services/core/device/reader/c;->d:J

    iget-wide v3, p0, Lcom/unity3d/services/core/device/reader/c;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private d()J
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/unity3d/services/core/device/reader/c;->c:J

    iget-wide v3, p0, Lcom/unity3d/services/core/device/reader/c;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/c;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/request/metrics/j;->a(Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/metrics/c;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/c;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/request/metrics/j;->b(Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/request/metrics/c;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/c;->a:Lcom/unity3d/services/core/device/reader/n;

    invoke-interface {v0}, Lcom/unity3d/services/core/device/reader/o;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/device/reader/c;->c:J

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/c;->a:Lcom/unity3d/services/core/device/reader/n;

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/device/reader/n;->a(Ljava/util/Map;)[B

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/device/reader/c;->d:J

    return-object p1
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/c;->a:Lcom/unity3d/services/core/device/reader/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/device/reader/c;->b:J

    invoke-virtual {p0}, Lcom/unity3d/services/core/device/reader/c;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/device/reader/c;->a(Ljava/util/Map;)[B

    move-result-object v0

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/c;->e()V

    return-object v0
.end method
