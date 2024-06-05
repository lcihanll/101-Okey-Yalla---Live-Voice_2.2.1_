.class public final Lcom/geetest/captcha/o;
.super Lcom/geetest/captcha/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/o$b;,
        Lcom/geetest/captcha/o$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/geetest/captcha/handlers/WebViewHandler;",
        "Lcom/geetest/captcha/handlers/base/HandlerImpl;",
        "()V",
        "handlerLevel",
        "",
        "getHandlerLevel",
        "()I",
        "handler",
        "",
        "request",
        "Lcom/geetest/captcha/handlers/Request;",
        "Companion",
        "HandlerObserver",
        "captcha_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/geetest/captcha/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/geetest/captcha/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/captcha/o$a;-><init>(B)V

    sput-object v0, Lcom/geetest/captcha/o;->a:Lcom/geetest/captcha/o$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/geetest/captcha/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final a(Lcom/geetest/captcha/n;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/geetest/captcha/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    const-string v0, "Step: WebViewHandler.handler"

    invoke-static {v0}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/geetest/captcha/o$b;

    move-object v1, p0

    check-cast v1, Lcom/geetest/captcha/q;

    invoke-direct {v0, p1, v1}, Lcom/geetest/captcha/o$b;-><init>(Lcom/geetest/captcha/n;Lcom/geetest/captcha/q;)V

    sget-object v1, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    invoke-virtual {p1, v1}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    sget-object v1, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentStatus preLoadStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/geetest/captcha/n;->a:Lcom/geetest/captcha/u$a;

    invoke-virtual {v2}, Lcom/geetest/captcha/u$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/geetest/captcha/n;->b:Lcom/geetest/captcha/u;

    invoke-virtual {v2}, Lcom/geetest/captcha/u;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request"

    invoke-static {v2, v1}, Lcom/geetest/captcha/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/geetest/captcha/n;->a:Lcom/geetest/captcha/u$a;

    sget-object v2, Lcom/geetest/captcha/u$a;->FLOWING:Lcom/geetest/captcha/u$a;

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/geetest/captcha/n;->h:Landroid/content/Context;

    iget-object v2, p1, Lcom/geetest/captcha/n;->i:Lcom/geetest/captcha/s;

    check-cast v0, Lcom/geetest/captcha/w;

    invoke-virtual {p1, v1, v2, v0}, Lcom/geetest/captcha/n;->b(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V

    return-void

    :cond_1
    iget-object v1, p1, Lcom/geetest/captcha/n;->a:Lcom/geetest/captcha/u$a;

    sget-object v2, Lcom/geetest/captcha/u$a;->SUCCESS:Lcom/geetest/captcha/u$a;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/geetest/captcha/n;->b()V

    iget-object v1, p1, Lcom/geetest/captcha/n;->h:Landroid/content/Context;

    iget-object v2, p1, Lcom/geetest/captcha/n;->i:Lcom/geetest/captcha/s;

    check-cast v0, Lcom/geetest/captcha/w;

    invoke-virtual {p1, v1, v2, v0}, Lcom/geetest/captcha/n;->b(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V

    return-void

    :cond_2
    iget-object v1, p1, Lcom/geetest/captcha/n;->a:Lcom/geetest/captcha/u$a;

    sget-object v2, Lcom/geetest/captcha/u$a;->FAIL:Lcom/geetest/captcha/u$a;

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/geetest/captcha/n;->h:Landroid/content/Context;

    iget-object v2, p1, Lcom/geetest/captcha/n;->i:Lcom/geetest/captcha/s;

    check-cast v0, Lcom/geetest/captcha/w;

    invoke-virtual {p1, v1, v2, v0}, Lcom/geetest/captcha/n;->a(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V

    iget-object v1, p1, Lcom/geetest/captcha/n;->b:Lcom/geetest/captcha/u;

    sget-object v2, Lcom/geetest/captcha/u;->FAIL:Lcom/geetest/captcha/u;

    if-eq v1, v2, :cond_4

    iget-object v1, p1, Lcom/geetest/captcha/n;->h:Landroid/content/Context;

    iget-object v2, p1, Lcom/geetest/captcha/n;->i:Lcom/geetest/captcha/s;

    invoke-virtual {p1, v1, v2, v0}, Lcom/geetest/captcha/n;->b(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V

    return-void

    :cond_3
    iget-object v1, p1, Lcom/geetest/captcha/n;->a:Lcom/geetest/captcha/u$a;

    sget-object v2, Lcom/geetest/captcha/u$a;->NONE:Lcom/geetest/captcha/u$a;

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Lcom/geetest/captcha/n;->h:Landroid/content/Context;

    iget-object v2, p1, Lcom/geetest/captcha/n;->i:Lcom/geetest/captcha/s;

    check-cast v0, Lcom/geetest/captcha/w;

    invoke-virtual {p1, v1, v2, v0}, Lcom/geetest/captcha/n;->a(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V

    iget-object v1, p1, Lcom/geetest/captcha/n;->b:Lcom/geetest/captcha/u;

    sget-object v2, Lcom/geetest/captcha/u;->FAIL:Lcom/geetest/captcha/u;

    if-eq v1, v2, :cond_4

    iget-object v1, p1, Lcom/geetest/captcha/n;->h:Landroid/content/Context;

    iget-object v2, p1, Lcom/geetest/captcha/n;->i:Lcom/geetest/captcha/s;

    invoke-virtual {p1, v1, v2, v0}, Lcom/geetest/captcha/n;->b(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V

    :cond_4
    return-void
.end method
