.class public abstract Lcom/tencent/liteav/videobase/videobase/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/IVideoReporter;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeVideoReporter"


# instance fields
.field protected mNativeVideoReporter:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract nativeNotifyError(JILjava/lang/String;)V
.end method

.method protected abstract nativeNotifyEvent(JILjava/lang/Object;Ljava/lang/String;)V
.end method

.method protected abstract nativeNotifyKeyEvent(JIILjava/lang/String;)V
.end method

.method protected abstract nativeNotifyKeyWarning(JIILjava/lang/String;)V
.end method

.method protected abstract nativeNotifyWarning(JILjava/lang/String;)V
.end method

.method protected abstract nativeUpdateKeyStatus(JIID)V
.end method

.method protected abstract nativeUpdateKeyStatusObject(JIILjava/lang/Object;)V
.end method

.method protected abstract nativeUpdateStatus(JID)V
.end method

.method protected abstract nativeUpdateStatusObject(JILjava/lang/Object;)V
.end method

.method protected abstract nativeUpdateStatusString(JILjava/lang/String;)V
.end method

.method public declared-synchronized notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$a;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/tencent/liteav/videobase/videobase/e;->nativeNotifyError(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p2, "NativeVideoReporter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyError error code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not need transfer to LiteAvCode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
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

.method public declared-synchronized notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;ILjava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$b;)I

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->b(Lcom/tencent/liteav/videobase/videobase/h$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v6, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    move-object v5, p0

    move v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/liteav/videobase/videobase/e;->nativeNotifyKeyWarning(JIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-wide v6, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    move-object v5, p0

    move v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/liteav/videobase/videobase/e;->nativeNotifyKeyEvent(JIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    const-string p2, "NativeVideoReporter"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "notifyEvent event code:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not need transfer to LiteAvCode:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$b;)I

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->b(Lcom/tencent/liteav/videobase/videobase/h$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    invoke-virtual {p0, p1, p2, v8, p3}, Lcom/tencent/liteav/videobase/videobase/e;->nativeNotifyWarning(JILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-wide v6, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    move-object v5, p0

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/liteav/videobase/videobase/e;->nativeNotifyEvent(JILjava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    const-string p2, "NativeVideoReporter"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "notifyEvent event code:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not need transfer to LiteAvCode:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$c;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/tencent/liteav/videobase/videobase/e;->nativeNotifyWarning(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p2, "NativeVideoReporter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyWarning warning code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", do not need transfer to LiteAvCode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
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

.method public declared-synchronized updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    iget v0, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->n:Lcom/tencent/liteav/videobase/videobase/i;

    iget v1, v1, Lcom/tencent/liteav/videobase/videobase/i;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateKeyStatus(JIID)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double v5, p3

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateKeyStatus(JIID)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-double v5, p3

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateKeyStatus(JIID)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v7, v0

    iget-wide v3, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v5, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateKeyStatus(JIID)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_5
    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateKeyStatusObject(JIILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    iget v0, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->n:Lcom/tencent/liteav/videobase/videobase/i;

    iget v1, v1, Lcom/tencent/liteav/videobase/videobase/i;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateStatus(JID)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v4, p2

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateStatus(JID)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v6, v0

    iget-wide v3, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v5, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateStatus(JID)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double v4, p2

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget v3, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateStatus(JID)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/String;

    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget p1, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateStatusString(JILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_6
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/videobase/e;->mNativeVideoReporter:J

    iget p1, p1, Lcom/tencent/liteav/videobase/videobase/i;->value:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/tencent/liteav/videobase/videobase/e;->nativeUpdateStatusObject(JILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
