.class public final Lcom/liteav/audio2/earmonitor/a;
.super Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;
.source "SourceFile"

# interfaces
.implements Lcom/liteav/audio2/earmonitor/b/a/e;
.implements Lcom/tencent/liteav/base/util/x$a;


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/liteav/audio2/earmonitor/b/a/d;

.field private e:Lcom/liteav/audio2/earmonitor/b/a/c;

.field private f:Lcom/tencent/liteav/base/util/x;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/liteav/audio2/earmonitor/a;->a:I

    return-void
.end method

.method constructor <init>(JLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;-><init>(J)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/liteav/audio2/earmonitor/a;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/liteav/audio2/earmonitor/a;->g:Z

    iput-boolean p1, p0, Lcom/liteav/audio2/earmonitor/a;->h:Z

    iput-boolean p1, p0, Lcom/liteav/audio2/earmonitor/a;->i:Z

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/liteav/audio2/earmonitor/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->e:Lcom/liteav/audio2/earmonitor/b/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liteav/audio2/earmonitor/b/a/c;->a(Z)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x70d

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, p0}, Lcom/liteav/audio2/earmonitor/a;->notifySystemEarMonitoringError(Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/liteav/audio2/earmonitor/a;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/liteav/audio2/earmonitor/a;)V
    .locals 1

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->f:Lcom/tencent/liteav/base/util/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/x;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->f:Lcom/tencent/liteav/base/util/x;

    :cond_0
    invoke-direct {p0}, Lcom/liteav/audio2/earmonitor/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/liteav/audio2/earmonitor/a;I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HwSystemEarMonitoring"

    const-string v4, "on audio kit callback: %d"

    invoke-static {v2, v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/liteav/audio2/earmonitor/a;->notifySystemEarMonitoringInitialized(Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;Z)V

    return-void

    :cond_0
    :pswitch_1
    iget-boolean p1, p0, Lcom/liteav/audio2/earmonitor/a;->g:Z

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/liteav/audio2/earmonitor/a;->g:Z

    invoke-virtual {p0, p0, v3}, Lcom/liteav/audio2/earmonitor/a;->notifySystemEarMonitoringInitialized(Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p0}, Lcom/liteav/audio2/earmonitor/a;->notifySystemEarMonitoringError(Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;)V

    :goto_0
    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/liteav/audio2/earmonitor/a;->g:Z

    iget-object p1, p0, Lcom/liteav/audio2/earmonitor/a;->d:Lcom/liteav/audio2/earmonitor/b/a/d;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/liteav/audio2/earmonitor/b/a/d$a;->a:Lcom/liteav/audio2/earmonitor/b/a/d$a;

    invoke-virtual {p1, v0}, Lcom/liteav/audio2/earmonitor/b/a/d;->a(Lcom/liteav/audio2/earmonitor/b/a/d$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/liteav/audio2/earmonitor/a;->d:Lcom/liteav/audio2/earmonitor/b/a/d;

    sget-object v0, Lcom/liteav/audio2/earmonitor/b/a/d$a;->a:Lcom/liteav/audio2/earmonitor/b/a/d$a;

    invoke-virtual {p1, v0}, Lcom/liteav/audio2/earmonitor/b/a/d;->b(Lcom/liteav/audio2/earmonitor/b/a/d$a;)Lcom/liteav/audio2/earmonitor/b/a/a;

    move-result-object p1

    check-cast p1, Lcom/liteav/audio2/earmonitor/b/a/c;

    iput-object p1, p0, Lcom/liteav/audio2/earmonitor/a;->e:Lcom/liteav/audio2/earmonitor/b/a/c;

    return-void

    :cond_3
    invoke-virtual {p0, p0, v3}, Lcom/liteav/audio2/earmonitor/a;->notifySystemEarMonitoringInitialized(Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/liteav/audio2/earmonitor/a;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->e:Lcom/liteav/audio2/earmonitor/b/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liteav/audio2/earmonitor/b/a/c;->a(Z)I

    iput-boolean v1, p0, Lcom/liteav/audio2/earmonitor/a;->i:Z

    return-void
.end method

.method static synthetic b(Lcom/liteav/audio2/earmonitor/a;)V
    .locals 3

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->f:Lcom/tencent/liteav/base/util/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/liteav/base/util/x;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/liteav/base/util/x;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/x$a;)V

    iput-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->f:Lcom/tencent/liteav/base/util/x;

    const/4 v1, 0x0

    sget v2, Lcom/liteav/audio2/earmonitor/a;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/x;->a(II)V

    :cond_0
    invoke-direct {p0}, Lcom/liteav/audio2/earmonitor/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/liteav/audio2/earmonitor/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->e:Lcom/liteav/audio2/earmonitor/b/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/base/util/h;->a(III)I

    move-result p1

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->e:Lcom/liteav/audio2/earmonitor/b/a/c;

    sget-object v1, Lcom/liteav/audio2/earmonitor/b/a/c$a;->b:Lcom/liteav/audio2/earmonitor/b/a/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/liteav/audio2/earmonitor/b/a/c;->a(Lcom/liteav/audio2/earmonitor/b/a/c$a;I)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p0}, Lcom/liteav/audio2/earmonitor/a;->notifySystemEarMonitoringError(Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/liteav/audio2/earmonitor/a;)V
    .locals 2

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->e:Lcom/liteav/audio2/earmonitor/b/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liteav/audio2/earmonitor/b/a/c;->a()V

    iput-object v1, p0, Lcom/liteav/audio2/earmonitor/a;->e:Lcom/liteav/audio2/earmonitor/b/a/c;

    :cond_0
    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->d:Lcom/liteav/audio2/earmonitor/b/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/liteav/audio2/earmonitor/b/a/d;->b()V

    iput-object v1, p0, Lcom/liteav/audio2/earmonitor/a;->d:Lcom/liteav/audio2/earmonitor/b/a/d;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liteav/audio2/earmonitor/a;->g:Z

    return-void
.end method

.method static synthetic d(Lcom/liteav/audio2/earmonitor/a;)V
    .locals 2

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->d:Lcom/liteav/audio2/earmonitor/b/a/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liteav/audio2/earmonitor/a;->g:Z

    new-instance v0, Lcom/liteav/audio2/earmonitor/b/a/d;

    iget-object v1, p0, Lcom/liteav/audio2/earmonitor/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/liteav/audio2/earmonitor/b/a/d;-><init>(Landroid/content/Context;Lcom/liteav/audio2/earmonitor/b/a/e;)V

    iput-object v0, p0, Lcom/liteav/audio2/earmonitor/a;->d:Lcom/liteav/audio2/earmonitor/b/a/d;

    invoke-virtual {v0}, Lcom/liteav/audio2/earmonitor/b/a/d;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/liteav/audio2/earmonitor/g;->a(Lcom/liteav/audio2/earmonitor/a;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/liteav/audio2/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final initialize()V
    .locals 1

    invoke-static {p0}, Lcom/liteav/audio2/earmonitor/b;->a(Lcom/liteav/audio2/earmonitor/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liteav/audio2/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTimeout()V
    .locals 3

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppBackgroundState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/liteav/audio2/earmonitor/a;->i:Z

    const-string v2, "HwSystemEarMonitoring"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/liteav/audio2/earmonitor/a;->h:Z

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const-string v0, "app return to foreground."

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/liteav/audio2/earmonitor/a;->b()V

    invoke-direct {p0}, Lcom/liteav/audio2/earmonitor/a;->a()V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/liteav/audio2/earmonitor/a;->h:Z

    if-nez v0, :cond_2

    const-string v0, "app has gone to background."

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/liteav/audio2/earmonitor/a;->h:Z

    return-void
.end method

.method public final setEarMonitoringVolume(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/liteav/audio2/earmonitor/f;->a(Lcom/liteav/audio2/earmonitor/a;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/liteav/audio2/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startEarMonitoring()V
    .locals 1

    invoke-static {p0}, Lcom/liteav/audio2/earmonitor/d;->a(Lcom/liteav/audio2/earmonitor/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liteav/audio2/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopEarMonitoring()V
    .locals 1

    invoke-static {p0}, Lcom/liteav/audio2/earmonitor/e;->a(Lcom/liteav/audio2/earmonitor/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liteav/audio2/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final terminate()V
    .locals 1

    invoke-static {p0}, Lcom/liteav/audio2/earmonitor/c;->a(Lcom/liteav/audio2/earmonitor/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liteav/audio2/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
