.class final Lcom/tencent/liteav/audio/route/AudioRouteManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/audio/route/s$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/route/AudioRouteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/route/AudioRouteManager;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/route/AudioRouteManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/audio/route/b$a;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-static {v0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$000(Lcom/tencent/liteav/audio/route/AudioRouteManager;)J

    move-result-wide v0

    iget p1, p1, Lcom/tencent/liteav/audio/route/b$a;->value:I

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$100(JI)V

    return-void
.end method

.method public final b(Lcom/tencent/liteav/audio/route/b$a;)V
    .locals 3

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->e:Lcom/tencent/liteav/audio/route/b$a;

    const-string v1, "AudioRouteManager"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "switch to bluetooth failed  mode conflict:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-static {v0}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$200(Lcom/tencent/liteav/audio/route/AudioRouteManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,set it unavailable and update route again"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-static {p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$300(Lcom/tencent/liteav/audio/route/AudioRouteManager;)Lcom/tencent/liteav/audio/route/r;

    move-result-object p1

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->e:Lcom/tencent/liteav/audio/route/b$a;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/liteav/audio/route/r;->a(Lcom/tencent/liteav/audio/route/b$a;Z)Z

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-static {p1, v2}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$400(Lcom/tencent/liteav/audio/route/AudioRouteManager;Z)V

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-static {p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$000(Lcom/tencent/liteav/audio/route/AudioRouteManager;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/liteav/audio/route/AudioRouteManager$1;->a:Lcom/tencent/liteav/audio/route/AudioRouteManager;

    invoke-static {p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$200(Lcom/tencent/liteav/audio/route/AudioRouteManager;)Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/route/AudioRouteManager;->access$500(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string/jumbo p1, "switch to %s failed, do nothing"

    invoke-static {v1, p1, v0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
