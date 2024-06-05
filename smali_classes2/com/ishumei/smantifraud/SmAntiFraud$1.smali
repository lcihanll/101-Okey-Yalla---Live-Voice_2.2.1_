.class final Lcom/ishumei/smantifraud/SmAntiFraud$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$1;->l1111l111111Il:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "B"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ishumei/smantifraud/SmAntiFraud$1;->l1111l111111Il:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
