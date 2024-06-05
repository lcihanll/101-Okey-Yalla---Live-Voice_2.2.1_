.class public final Lcom/tencent/liteav/base/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/base/util/r$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field final c:Lcom/tencent/liteav/base/util/l;

.field final d:Lcom/tencent/liteav/base/util/r$a;

.field e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/base/util/l;Lcom/tencent/liteav/base/util/r$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/base/util/r;->b:Z

    new-instance v0, Lcom/tencent/liteav/base/util/r$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/base/util/r$1;-><init>(Lcom/tencent/liteav/base/util/r;)V

    iput-object v0, p0, Lcom/tencent/liteav/base/util/r;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tencent/liteav/base/util/r;->c:Lcom/tencent/liteav/base/util/l;

    iput-object p2, p0, Lcom/tencent/liteav/base/util/r;->d:Lcom/tencent/liteav/base/util/r$a;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/base/util/r;->c:Lcom/tencent/liteav/base/util/l;

    iget-object v1, p0, Lcom/tencent/liteav/base/util/r;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/l;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/base/util/r;->b:Z
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
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/base/util/r;->a()V

    iput p2, p0, Lcom/tencent/liteav/base/util/r;->a:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tencent/liteav/base/util/r;->b:Z

    iget-object p2, p0, Lcom/tencent/liteav/base/util/r;->c:Lcom/tencent/liteav/base/util/l;

    iget-object v0, p0, Lcom/tencent/liteav/base/util/r;->e:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lcom/tencent/liteav/base/util/l;->b(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
