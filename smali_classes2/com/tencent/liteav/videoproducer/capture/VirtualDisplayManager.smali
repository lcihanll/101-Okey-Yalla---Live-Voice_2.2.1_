.class public Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;,
        Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/tencent/liteav/base/util/l;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/media/projection/MediaProjection;

.field private h:Landroid/content/ServiceConnection;

.field private final i:Ljava/lang/Runnable;

.field private final j:Landroid/media/projection/MediaProjection$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->f:Z

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bj;->a(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->j:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b:Landroid/content/Context;

    new-instance p1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->c:Landroid/os/Handler;

    new-instance p1, Lcom/tencent/liteav/base/util/l;

    invoke-direct {p1}, Lcom/tencent/liteav/base/util/l;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->d:Lcom/tencent/liteav/base/util/l;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;
    .locals 2

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;

    return-object p0
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->f:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b:Landroid/content/Context;

    const-class v2, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;Landroid/media/projection/MediaProjection;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->f:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;

    iget-object v3, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    invoke-interface {v2, v0, v1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;->onStartFinish(ZZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->c()V

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Got session "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VirtualDisplayManager"

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->j:Landroid/media/projection/MediaProjection$Callback;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b()V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b(Landroid/media/projection/MediaProjection;)V

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;Landroid/view/Surface;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->e:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->e:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualDisplay released, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->e:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayManager"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;Landroid/view/Surface;IILandroid/media/projection/MediaProjection;ZLcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;)V
    .locals 3

    const-string v0, "VirtualDisplayManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "surface is null!"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v1, v1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;->onStartFinish(ZZ)V

    return-void

    :cond_0
    new-instance v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;

    invoke-direct {v2, v1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;-><init>(B)V

    iput-object p1, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->a:Landroid/view/Surface;

    iput p2, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->b:I

    iput p3, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->c:I

    iput-object p6, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    const/4 p2, 0x0

    iput-object p2, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->e:Landroid/hardware/display/VirtualDisplay;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->d:Lcom/tencent/liteav/base/util/l;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/util/l;->c(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    if-nez p1, :cond_4

    if-nez p4, :cond_4

    if-nez p5, :cond_1

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->h:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_2

    const-string p0, "service is created"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$2;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$2;-><init>(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->h:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b:Landroid/content/Context;

    const-class p3, Lcom/tencent/rtmp/video/ScreenCaptureService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->h:Landroid/content/ServiceConnection;

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-nez v1, :cond_3

    const-string p1, "Start foreground service failed, but also request permission"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a()V

    :cond_3
    return-void

    :cond_4
    if-eqz p4, :cond_5

    if-eq p1, p4, :cond_5

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "start capture with media projection from user:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Landroid/media/projection/MediaProjection;)V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->d:Lcom/tencent/liteav/base/util/l;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->i:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/liteav/base/util/l;->b(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Stop media projection session "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayManager"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b(Landroid/media/projection/MediaProjection;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->j:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v1, v2}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "stop media projection session with exception "

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->c()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;)Lcom/tencent/liteav/base/util/l;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->d:Lcom/tencent/liteav/base/util/l;

    return-object p0
.end method

.method private b()V
    .locals 13

    const-string v0, "VirtualDisplayManager"

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;

    iget-object v3, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->e:Landroid/hardware/display/VirtualDisplay;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->g:Landroid/media/projection/MediaProjection;

    const-string v5, "TXCScreenCapture"

    iget v6, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->b:I

    iget v7, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->c:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v10, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->a:Landroid/view/Surface;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->e:Landroid/hardware/display/VirtualDisplay;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create VirtualDisplay "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->e:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v3}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;->onStartFinish(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    const-string v5, "create VirtualDisplay error "

    invoke-static {v0, v5, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    if-eqz v4, :cond_0

    iget-object v2, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    invoke-interface {v2, v3, v3}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;->onStartFinish(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroid/media/projection/MediaProjection;)V
    .locals 6

    :try_start_0
    const-string v0, "com.tencent.liteav.audio.SystemLoopbackRecorder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyMediaProjectionState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/media/projection/MediaProjection;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to send media projection session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VirtualDisplayManager"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "VirtualDisplayManager"

    const-string v1, "stopScreenCaptureService"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->h:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->h:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->e:Landroid/hardware/display/VirtualDisplay;

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;->onCaptureError()V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$a;->d:Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;

    invoke-interface {v1, v2, v2}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;->onStartFinish(ZZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/projection/MediaProjection;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->d:Lcom/tencent/liteav/base/util/l;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/bm;->a(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;Landroid/media/projection/MediaProjection;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopVirtualDisplaySync, surface:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualDisplayManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->d:Lcom/tencent/liteav/base/util/l;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/bl;->a(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;Landroid/view/Surface;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/l;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;IILandroid/media/projection/MediaProjection;ZLcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startVirtualDisplaySync, surface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaProjection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enableForegroundService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualDisplayManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;->d:Lcom/tencent/liteav/base/util/l;

    invoke-static/range {p0 .. p6}, Lcom/tencent/liteav/videoproducer/capture/bk;->a(Lcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager;Landroid/view/Surface;IILandroid/media/projection/MediaProjection;ZLcom/tencent/liteav/videoproducer/capture/VirtualDisplayManager$VirtualDisplayListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/l;->b(Ljava/lang/Runnable;)V

    return-void
.end method
