.class public Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;
.super Ljava/lang/Object;
.source "InitializeEventsMetricSender.java"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;
.implements Lcom/unity3d/services/core/configuration/IInitializationListener;


# static fields
.field private static a:Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->b:J

    iput-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->c:J

    iput-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->d:J

    iput-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->f:I

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->g:I

    iput-boolean v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->h:Z

    iput-boolean v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->i:Z

    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->addListener(Lcom/unity3d/services/core/configuration/IInitializationListener;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->f:I

    return p0
.end method

.method private a()V
    .locals 5

    iget-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "sendTokenResolutionRequestMetricIfNeeded called before didInitStart, skipping metric"

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->tokenDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getRetryTags()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/services/core/request/metrics/j;->e(Ljava/lang/Long;Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->privacyConfigDuration()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/j;->d(Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->privacyConfigDuration()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/j;->c(Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "sendTokenResolutionRequestMetricIfNeeded called before didInitStart, skipping metric"

    invoke-static {p1}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->g:I

    return p0
.end method

.method private b(Z)V
    .locals 5

    iget-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p1, "sendTokenAvailabilityMetricWithConfig called before didInitStart, skipping metric"

    invoke-static {p1}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getRetryTags()Ljava/util/Map;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {v0, v1}, Lcom/unity3d/services/core/request/metrics/j;->c(Ljava/lang/Long;Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/unity3d/services/core/request/metrics/j;->d(Ljava/lang/Long;Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    return-void
.end method

.method public static getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->a:Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;

    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->a:Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->a:Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;

    return-object v0
.end method


# virtual methods
.method public didConfigRequestStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->e:J

    return-void
.end method

.method public didInitStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->f:I

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->g:I

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/j;->b()Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    return-void
.end method

.method public didPrivacyConfigRequestEnd(Z)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->d:J

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->a(Z)V

    return-void
.end method

.method public didPrivacyConfigRequestStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->c:J

    return-void
.end method

.method public duration()Ljava/lang/Long;
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getErrorStateTags(Lcom/unity3d/services/core/configuration/ErrorState;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/configuration/ErrorState;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getRetryTags()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/ErrorState;->getMetricName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "stt"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getRetryTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender$a;

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender$a;-><init>(Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;)V

    return-object v0
.end method

.method public initializationStartTimeStamp()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onRetryConfig()V
    .locals 1

    iget v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->f:I

    return-void
.end method

.method public onRetryWebview()V
    .locals 1

    iget v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->g:I

    return-void
.end method

.method public onSdkInitializationFailed(Ljava/lang/String;Lcom/unity3d/services/core/configuration/ErrorState;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sdkInitializeFailed(Ljava/lang/String;Lcom/unity3d/services/core/configuration/ErrorState;)V

    return-void
.end method

.method public onSdkInitialized()V
    .locals 0

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sdkDidInitialize()V

    return-void
.end method

.method public privacyConfigDuration()Ljava/lang/Long;
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->d:J

    iget-wide v3, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized sdkDidInitialize()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->initializationStartTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "sdkDidInitialize called before didInitStart, skipping metric"

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->duration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getRetryTags()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/services/core/request/metrics/j;->b(Ljava/lang/Long;Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sdkInitializeFailed(Ljava/lang/String;Lcom/unity3d/services/core/configuration/ErrorState;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-string p1, "sdkInitializeFailed called before didInitStart, skipping metric"

    invoke-static {p1}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->h:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->duration()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getErrorStateTags(Lcom/unity3d/services/core/configuration/ErrorState;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unity3d/services/core/request/metrics/j;->a(Ljava/lang/Long;Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sdkTokenDidBecomeAvailableWithConfig(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->b(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->a()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/request/metrics/c;->sendMetric(Lcom/unity3d/services/core/request/metrics/d;)V

    return-void
.end method

.method public tokenDuration()Ljava/lang/Long;
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->e:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
