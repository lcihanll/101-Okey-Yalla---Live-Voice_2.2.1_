.class public final Lcom/geetest/captcha/d;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0012\u0010\u001b\u001a\u00020\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0013H\u0002J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u000cH\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0013J\u0010\u0010 \u001a\u00020\u00152\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\r\u0010!\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\"J\u0008\u0010#\u001a\u00020\u0015H\u0016R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/geetest/captcha/dialog/GTC4Dialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "dialogStyle",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "cancelable",
        "",
        "cancelListener",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V",
        "dialogShowListener",
        "Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;",
        "webView",
        "Landroid/view/View;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onInflaterView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "onInitView",
        "view",
        "onWindowFocusChanged",
        "hasFocus",
        "setContent",
        "setDialogShowListener",
        "setScreenAttributes",
        "setScreenAttributes$captcha_release",
        "show",
        "captcha_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/geetest/captcha/ae;->a:Lcom/geetest/captcha/ae;

    const-string v0, "gt4_captcha_dialog_style"

    invoke-static {p1, v0}, Lcom/geetest/captcha/ae;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/geetest/captcha/ae;->a:Lcom/geetest/captcha/ae;

    invoke-static {p1, p2}, Lcom/geetest/captcha/ae;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-virtual {p0}, Lcom/geetest/captcha/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/geetest/captcha/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/geetest/captcha/aa;->a:Lcom/geetest/captcha/aa;

    invoke-virtual {p0}, Lcom/geetest/captcha/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/geetest/captcha/aa;->a(Landroid/content/Context;)I

    move-result v2

    sget-object v4, Lcom/geetest/captcha/aa;->a:Lcom/geetest/captcha/aa;

    invoke-virtual {p0}, Lcom/geetest/captcha/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/geetest/captcha/aa;->b(Landroid/content/Context;)I

    move-result v3

    if-eqz v0, :cond_2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_2
    if-eqz v0, :cond_3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    sget-object v4, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ScreenWidth: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ScreenHeight: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DialogWidth: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", DialogHeight: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_6
    invoke-virtual {p0}, Lcom/geetest/captcha/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_7
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/geetest/captcha/d;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/geetest/captcha/d;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/geetest/captcha/d;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/d;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Dialog;

    invoke-interface {v0, v1, p1}, Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;->onDialogFocusChanged(Landroid/app/Dialog;Z)V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/d;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Dialog;

    invoke-interface {v0, v1}, Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;->actionBeforeDialogShow(Landroid/app/Dialog;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/geetest/captcha/d;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/Dialog;

    invoke-interface {v0, v1}, Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;->actionAfterDialogShow(Landroid/app/Dialog;)V

    :cond_1
    invoke-virtual {p0}, Lcom/geetest/captcha/d;->a()V

    return-void
.end method
