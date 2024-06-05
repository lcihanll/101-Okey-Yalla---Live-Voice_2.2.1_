.class public final Lcom/tencent/liteav/base/util/x;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/base/util/x$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private final c:Lcom/tencent/liteav/base/util/x$a;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/x$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/liteav/base/util/x;->b:Z

    iput-object p2, p0, Lcom/tencent/liteav/base/util/x;->c:Lcom/tencent/liteav/base/util/x$a;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/base/util/x;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/base/util/x;->removeMessages(I)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/tencent/liteav/base/util/x;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/base/util/x;->a()V

    iput p2, p0, Lcom/tencent/liteav/base/util/x;->a:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tencent/liteav/base/util/x;->b:Z

    const/4 p2, 0x0

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Lcom/tencent/liteav/base/util/x;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/tencent/liteav/base/util/x;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/base/util/x;->removeMessages(I)V

    iget v0, p0, Lcom/tencent/liteav/base/util/x;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/liteav/base/util/x;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/base/util/x;->c:Lcom/tencent/liteav/base/util/x$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/tencent/liteav/base/util/x$a;->onTimeout()V
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
