.class final Lcom/liteav/audio2/earmonitor/b/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liteav/audio2/earmonitor/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/liteav/audio2/earmonitor/b/a/c;


# direct methods
.method constructor <init>(Lcom/liteav/audio2/earmonitor/b/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/liteav/audio2/earmonitor/b/a/c$2;->a:Lcom/liteav/audio2/earmonitor/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/b/a/c$2;->a:Lcom/liteav/audio2/earmonitor/b/a/c;

    iget-object v0, v0, Lcom/liteav/audio2/earmonitor/b/a/c;->e:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/liteav/audio2/earmonitor/b/a/c$2;->a:Lcom/liteav/audio2/earmonitor/b/a/c;

    iget-object v1, v1, Lcom/liteav/audio2/earmonitor/b/a/c;->f:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/b/a/c$2;->a:Lcom/liteav/audio2/earmonitor/b/a/c;

    iget-object v0, v0, Lcom/liteav/audio2/earmonitor/b/a/c;->b:Lcom/liteav/audio2/earmonitor/b/a/b;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/liteav/audio2/earmonitor/b/a/b;->a(I)V

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/b/a/c$2;->a:Lcom/liteav/audio2/earmonitor/b/a/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/liteav/audio2/earmonitor/b/a/c;->e:Landroid/os/IBinder;

    return-void
.end method
