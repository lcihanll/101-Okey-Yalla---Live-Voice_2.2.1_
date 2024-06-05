.class final Lcom/geetest/captcha/ai$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/captcha/ai$b;->gt4Notify(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/captcha/ai$b;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/geetest/captcha/ai$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/ai$b$a;->a:Lcom/geetest/captcha/ai$b;

    iput-object p2, p0, Lcom/geetest/captcha/ai$b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "\')"

    const-string v2, "javascript:jsBridge.callback(\'postNativeMessage\', \'"

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/geetest/captcha/ai$b$a;->a:Lcom/geetest/captcha/ai$b;

    iget-object v0, v0, Lcom/geetest/captcha/ai$b;->b:Lcom/geetest/captcha/views/GTC4WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/geetest/captcha/ai$b$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/ai$b$a$1;->a:Lcom/geetest/captcha/ai$b$a$1;

    check-cast v2, Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/geetest/captcha/views/GTC4WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/geetest/captcha/ai$b$a;->a:Lcom/geetest/captcha/ai$b;

    iget-object v0, v0, Lcom/geetest/captcha/ai$b;->b:Lcom/geetest/captcha/views/GTC4WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/geetest/captcha/ai$b$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/captcha/views/GTC4WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
