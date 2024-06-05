.class public final Lcom/unity3d/services/core/request/metrics/i;
.super Ljava/lang/Object;
.source "SDKMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/request/metrics/i$a;
    }
.end annotation


# static fields
.field private static a:Lcom/unity3d/services/core/request/metrics/c;

.field private static b:Lcom/unity3d/services/core/request/metrics/g;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/unity3d/services/core/request/metrics/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static declared-synchronized a()Lcom/unity3d/services/core/request/metrics/c;
    .locals 3

    const-class v0, Lcom/unity3d/services/core/request/metrics/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/request/metrics/i;->a:Lcom/unity3d/services/core/request/metrics/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unity3d/services/core/request/metrics/i$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/unity3d/services/core/request/metrics/i$a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/unity3d/services/core/request/metrics/i;->a:Lcom/unity3d/services/core/request/metrics/c;

    :cond_0
    sget-object v1, Lcom/unity3d/services/core/request/metrics/i;->b:Lcom/unity3d/services/core/request/metrics/g;

    if-nez v1, :cond_1

    new-instance v1, Lcom/unity3d/services/core/request/metrics/g;

    sget-object v2, Lcom/unity3d/services/core/request/metrics/i;->a:Lcom/unity3d/services/core/request/metrics/c;

    invoke-direct {v1, v2}, Lcom/unity3d/services/core/request/metrics/g;-><init>(Lcom/unity3d/services/core/request/metrics/c;)V

    sput-object v1, Lcom/unity3d/services/core/request/metrics/i;->b:Lcom/unity3d/services/core/request/metrics/g;

    :cond_1
    sget-object v1, Lcom/unity3d/services/core/request/metrics/i;->b:Lcom/unity3d/services/core/request/metrics/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/Configuration;->getMetricsUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/unity3d/services/core/request/metrics/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "Metrics will not be sent from the device for this session due to misconfiguration"

    invoke-static {p0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/unity3d/services/core/request/metrics/i;->a(Lcom/unity3d/services/core/configuration/Configuration;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/unity3d/services/core/request/metrics/i;->a:Lcom/unity3d/services/core/request/metrics/c;

    instance-of v1, v0, Lcom/unity3d/services/core/request/metrics/f;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/unity3d/services/core/request/metrics/f;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/metrics/f;->c()V

    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/Configuration;->getMetricSampleRate()D

    move-result-wide v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3

    new-instance v0, Lcom/unity3d/services/core/request/metrics/f;

    new-instance v1, Lcom/unity3d/services/core/properties/b;

    invoke-direct {v1}, Lcom/unity3d/services/core/properties/b;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/core/request/metrics/f;-><init>(Lcom/unity3d/services/core/configuration/Configuration;Lcom/unity3d/services/core/properties/b;)V

    sput-object v0, Lcom/unity3d/services/core/request/metrics/i;->a:Lcom/unity3d/services/core/request/metrics/c;

    goto :goto_0

    :cond_3
    const-string p0, "Metrics will not be sent from the device for this session"

    invoke-static {p0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/unity3d/services/core/request/metrics/i$a;

    const-string v0, "nullInstanceMetricsUrl"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/request/metrics/i$a;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/unity3d/services/core/request/metrics/i;->a:Lcom/unity3d/services/core/request/metrics/c;

    :goto_0
    sget-object p0, Lcom/unity3d/services/core/request/metrics/i;->b:Lcom/unity3d/services/core/request/metrics/g;

    if-nez p0, :cond_4

    new-instance p0, Lcom/unity3d/services/core/request/metrics/g;

    sget-object v0, Lcom/unity3d/services/core/request/metrics/i;->a:Lcom/unity3d/services/core/request/metrics/c;

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/request/metrics/g;-><init>(Lcom/unity3d/services/core/request/metrics/c;)V

    sput-object p0, Lcom/unity3d/services/core/request/metrics/i;->b:Lcom/unity3d/services/core/request/metrics/g;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/unity3d/services/core/request/metrics/i;->a:Lcom/unity3d/services/core/request/metrics/c;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/request/metrics/g;->a(Lcom/unity3d/services/core/request/metrics/c;)V

    :goto_1
    sget-object p0, Lcom/unity3d/services/core/request/metrics/i;->b:Lcom/unity3d/services/core/request/metrics/g;

    invoke-virtual {p0}, Lcom/unity3d/services/core/request/metrics/g;->c()V

    return-void
.end method
