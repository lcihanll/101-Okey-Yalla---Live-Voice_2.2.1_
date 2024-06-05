.class final Lcom/ishumei/l1111l111111Il/l111l1111llIl$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Ljava/lang/String;

.field private synthetic l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;

    iput-object p2, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2$1;->l1111l111111Il:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;

    iget-object v0, v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2$1;->l1111l111111Il:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
