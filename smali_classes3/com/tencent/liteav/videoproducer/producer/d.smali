.class public final Lcom/tencent/liteav/videoproducer/producer/d;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/base/util/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/producer/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/producer/d$a;

.field private final b:Landroid/os/Handler;

.field private c:I

.field private d:Lcom/tencent/liteav/base/util/Rotation;

.field private e:Lcom/tencent/liteav/base/util/Rotation;

.field private f:Lcom/tencent/liteav/base/util/x;

.field private g:Lcom/tencent/liteav/base/util/Rotation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/producer/d$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->b:Landroid/os/Handler;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->c:I

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/d;->a:Lcom/tencent/liteav/videoproducer/producer/d$a;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->g:Lcom/tencent/liteav/base/util/Rotation;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->d:Lcom/tencent/liteav/base/util/Rotation;

    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->a:Lcom/tencent/liteav/videoproducer/producer/d$a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/d;->e:Lcom/tencent/liteav/base/util/Rotation;

    invoke-interface {v1, v0, v2}, Lcom/tencent/liteav/videoproducer/producer/d$a;->a(Lcom/tencent/liteav/base/util/Rotation;Lcom/tencent/liteav/base/util/Rotation;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/d;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->f:Lcom/tencent/liteav/base/util/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/x;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->f:Lcom/tencent/liteav/base/util/x;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/d;Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->d:Lcom/tencent/liteav/base/util/Rotation;

    invoke-static {}, Lcom/tencent/liteav/videobase/videobase/SystemDisplayInfo;->getDisplayRotationDegree()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->e:Lcom/tencent/liteav/base/util/Rotation;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/d;->a()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/d;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->f:Lcom/tencent/liteav/base/util/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/base/util/x;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/liteav/base/util/x;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/x$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->f:Lcom/tencent/liteav/base/util/x;

    const/4 p0, 0x0

    const/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1}, Lcom/tencent/liteav/base/util/x;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/d;Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->g:Lcom/tencent/liteav/base/util/Rotation;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/d;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/base/util/Rotation;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->b:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/g;->a(Lcom/tencent/liteav/videoproducer/producer/d;Lcom/tencent/liteav/base/util/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized disable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->b:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/producer/d;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized enable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->b:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/e;->a(Lcom/tencent/liteav/videoproducer/producer/d;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->c:I

    if-eq v1, v0, :cond_1

    sub-int v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->c:I

    const/16 v0, 0x2d

    if-le p1, v0, :cond_4

    const/16 v0, 0x87

    if-gt p1, v0, :cond_2

    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    goto :goto_0

    :cond_2
    const/16 v0, 0xe1

    if-gt p1, v0, :cond_3

    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->c:Lcom/tencent/liteav/base/util/Rotation;

    goto :goto_0

    :cond_3
    const/16 v0, 0x13b

    if-gt p1, v0, :cond_4

    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->b:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/h;->a(Lcom/tencent/liteav/videoproducer/producer/d;Lcom/tencent/liteav/base/util/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTimeout()V
    .locals 2

    invoke-static {}, Lcom/tencent/liteav/videobase/videobase/SystemDisplayInfo;->getDisplayRotationDegree()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/base/util/Rotation;->a(I)Lcom/tencent/liteav/base/util/Rotation;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->e:Lcom/tencent/liteav/base/util/Rotation;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->e:Lcom/tencent/liteav/base/util/Rotation;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/d;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    sget-object v1, Lcom/tencent/liteav/videoproducer/producer/d$1;->a:[I

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Rotation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->c:Lcom/tencent/liteav/base/util/Rotation;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v0, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    :goto_1
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/d;->d:Lcom/tencent/liteav/base/util/Rotation;

    :cond_5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/d;->a()V

    return-void
.end method
