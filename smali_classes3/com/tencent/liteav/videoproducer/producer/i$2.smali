.class final Lcom/tencent/liteav/videoproducer/producer/i$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/producer/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/producer/i;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/producer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i$2;->a:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.tencent.liteav.video.action.OUT_OF_MEMORY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/i$2;->a:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {p2}, Lcom/tencent/liteav/videoproducer/producer/i;->c(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReceive, action:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i$2;->a:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/producer/i;->d(Lcom/tencent/liteav/videoproducer/producer/i;)Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    move-result-object p1

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$c;->u:Lcom/tencent/liteav/videobase/videobase/h$c;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/i$2;->a:Lcom/tencent/liteav/videoproducer/producer/i;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/producer/i;->c(Lcom/tencent/liteav/videoproducer/producer/i;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive, intent or context is null!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
