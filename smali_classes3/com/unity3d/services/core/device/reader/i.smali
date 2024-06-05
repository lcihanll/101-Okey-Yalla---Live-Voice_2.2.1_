.class public Lcom/unity3d/services/core/device/reader/i;
.super Ljava/lang/Object;
.source "DeviceInfoReaderWithMetrics.java"

# interfaces
.implements Lcom/unity3d/services/core/device/reader/p;


# instance fields
.field private final a:Lcom/unity3d/services/core/device/reader/p;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/device/reader/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/i;->a:Lcom/unity3d/services/core/device/reader/p;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "unifiedconfig.data.gameSessionId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object p1

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/j;->c()Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/services/core/request/metrics/c;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    :cond_0
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

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/i;->a:Lcom/unity3d/services/core/device/reader/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/unity3d/services/core/device/reader/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/device/reader/i;->a(Ljava/util/Map;)V

    return-object v0
.end method
