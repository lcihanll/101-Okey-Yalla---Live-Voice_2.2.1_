.class final Lcom/liteav/audio2/earmonitor/b/a/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liteav/audio2/earmonitor/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liteav/audio2/earmonitor/b/a/d;


# direct methods
.method constructor <init>(Lcom/liteav/audio2/earmonitor/b/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/liteav/audio2/earmonitor/b/a/d$2;->a:Lcom/liteav/audio2/earmonitor/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/b/a/d$2;->a:Lcom/liteav/audio2/earmonitor/b/a/d;

    invoke-static {v0}, Lcom/liteav/audio2/earmonitor/b/a/d;->e(Lcom/liteav/audio2/earmonitor/b/a/d;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/liteav/audio2/earmonitor/b/a/d$2;->a:Lcom/liteav/audio2/earmonitor/b/a/d;

    invoke-static {v1}, Lcom/liteav/audio2/earmonitor/b/a/d;->d(Lcom/liteav/audio2/earmonitor/b/a/d;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/b/a/d$2;->a:Lcom/liteav/audio2/earmonitor/b/a/d;

    invoke-static {v0}, Lcom/liteav/audio2/earmonitor/b/a/d;->b(Lcom/liteav/audio2/earmonitor/b/a/d;)Lcom/liteav/audio2/earmonitor/b/a/b;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/liteav/audio2/earmonitor/b/a/b;->a(I)V

    const-string v0, "HwAudioKit.HwAudioKit"

    const-string v1, "service binder died"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/b/a/d$2;->a:Lcom/liteav/audio2/earmonitor/b/a/d;

    invoke-static {v0}, Lcom/liteav/audio2/earmonitor/b/a/d;->f(Lcom/liteav/audio2/earmonitor/b/a/d;)Landroid/os/IBinder;

    return-void
.end method
