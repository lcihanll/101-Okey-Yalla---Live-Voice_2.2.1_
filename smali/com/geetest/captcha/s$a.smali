.class public final Lcom/geetest/captcha/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/captcha/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/geetest/captcha/model/DataBean$Companion;",
        "",
        "()V",
        "build",
        "Lcom/geetest/captcha/model/DataBean;",
        "captchaId",
        "",
        "config",
        "Lcom/geetest/captcha/GTCaptcha4Config;",
        "captcha_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/geetest/captcha/s$a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)Lcom/geetest/captcha/s;
    .locals 2

    const-string v0, "captchaId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/geetest/captcha/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/captcha/s;-><init>(B)V

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->a(Lcom/geetest/captcha/s;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/geetest/captcha/GTCaptcha4Config;->isDebug()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->a(Lcom/geetest/captcha/s;Z)V

    invoke-virtual {p1}, Lcom/geetest/captcha/GTCaptcha4Config;->getHtml()Ljava/lang/String;

    move-result-object p0

    const-string v1, "it.html"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->b(Lcom/geetest/captcha/s;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/geetest/captcha/GTCaptcha4Config;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->c(Lcom/geetest/captcha/s;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/geetest/captcha/GTCaptcha4Config;->isCanceledOnTouchOutside()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->b(Lcom/geetest/captcha/s;Z)V

    invoke-virtual {p1}, Lcom/geetest/captcha/GTCaptcha4Config;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->a(Lcom/geetest/captcha/s;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/geetest/captcha/GTCaptcha4Config;->getTimeOut()I

    move-result p0

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->a(Lcom/geetest/captcha/s;I)V

    invoke-virtual {p1}, Lcom/geetest/captcha/GTCaptcha4Config;->getBackgroundColor()I

    move-result p0

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->b(Lcom/geetest/captcha/s;I)V

    invoke-virtual {p1}, Lcom/geetest/captcha/GTCaptcha4Config;->getDialogStyle()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->d(Lcom/geetest/captcha/s;Ljava/lang/String;)V

    :cond_0
    iget-object p0, v0, Lcom/geetest/captcha/s;->b:Ljava/lang/String;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "file:///android_asset/gt4-index.html"

    invoke-static {v0, p0}, Lcom/geetest/captcha/s;->b(Lcom/geetest/captcha/s;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
