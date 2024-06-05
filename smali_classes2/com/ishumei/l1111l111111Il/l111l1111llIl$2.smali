.class final Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;

.field private synthetic l111l11111I1l:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

.field private synthetic l111l11111lIl:Z


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl;ZLcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;->l111l11111I1l:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    iput-boolean p2, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;->l111l11111lIl:Z

    iput-object p3, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;->l111l11111I1l:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    invoke-virtual {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;->l111l11111lIl:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2$1;

    invoke-direct {v2, p0, v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2$1;-><init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;

    invoke-interface {v1, v0}, Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
