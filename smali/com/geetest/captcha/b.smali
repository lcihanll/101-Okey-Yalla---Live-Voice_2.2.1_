.class public final Lcom/geetest/captcha/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u00162\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0018\u001a\u00020\u00162\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0016J\u000e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u001f\u001a\u00020\u00162\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0012\u0010 \u001a\u00020!2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0006\u0010\"\u001a\u00020\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/geetest/captcha/controller/Controller;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "appId",
        "",
        "config",
        "Lcom/geetest/captcha/GTCaptcha4Config;",
        "listener",
        "Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;",
        "preLoadHandler",
        "Lcom/geetest/captcha/handlers/PreLoadHandler;",
        "request",
        "Lcom/geetest/captcha/handlers/Request;",
        "response",
        "Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;",
        "webViewHandler",
        "Lcom/geetest/captcha/handlers/WebViewHandler;",
        "webViewShowListener",
        "Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;",
        "addOnFailureListener",
        "",
        "addOnSuccessListener",
        "addOnWebViewShowListener",
        "cancel",
        "configurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "preLoadWithCaptcha",
        "setAppId",
        "setConfig",
        "validityCheck",
        "",
        "verifyWithCaptcha",
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
.field public a:Ljava/lang/String;

.field public b:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

.field public c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

.field public d:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

.field public e:Lcom/geetest/captcha/GTCaptcha4Config;

.field public f:Lcom/geetest/captcha/n;

.field public g:Lcom/geetest/captcha/o;

.field public final h:Landroid/content/Context;

.field private i:Lcom/geetest/captcha/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geetest/captcha/b;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    new-instance v0, Lcom/geetest/captcha/m;

    invoke-direct {v0}, Lcom/geetest/captcha/m;-><init>()V

    iput-object v0, p0, Lcom/geetest/captcha/b;->i:Lcom/geetest/captcha/m;

    new-instance v0, Lcom/geetest/captcha/o;

    invoke-direct {v0}, Lcom/geetest/captcha/o;-><init>()V

    iput-object v0, p0, Lcom/geetest/captcha/b;->g:Lcom/geetest/captcha/o;

    iget-object v0, p0, Lcom/geetest/captcha/b;->i:Lcom/geetest/captcha/m;

    const-string v1, "preLoadHandler"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/geetest/captcha/b;->g:Lcom/geetest/captcha/o;

    if-nez v2, :cond_1

    const-string/jumbo v3, "webViewHandler"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Lcom/geetest/captcha/q;

    iput-object v2, v0, Lcom/geetest/captcha/q;->b:Lcom/geetest/captcha/q;

    new-instance v0, Lcom/geetest/captcha/n;

    iget-object v2, p0, Lcom/geetest/captcha/b;->h:Landroid/content/Context;

    sget-object v3, Lcom/geetest/captcha/s;->j:Lcom/geetest/captcha/s$a;

    iget-object v3, p0, Lcom/geetest/captcha/b;->a:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v4, "appId"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/geetest/captcha/b;->e:Lcom/geetest/captcha/GTCaptcha4Config;

    invoke-static {v3, v4}, Lcom/geetest/captcha/s$a;->a(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)Lcom/geetest/captcha/s;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/geetest/captcha/n;-><init>(Landroid/content/Context;Lcom/geetest/captcha/s;)V

    iput-object v0, p0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    const-string v2, "request"

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v3, Lcom/geetest/captcha/u$a;->FLOWING:Lcom/geetest/captcha/u$a;

    invoke-virtual {v0, v3}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u$a;)V

    iget-object v0, p0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lcom/geetest/captcha/u;->NONE:Lcom/geetest/captcha/u;

    invoke-virtual {v0, v3}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    iget-object v0, p0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    new-instance v3, Lcom/geetest/captcha/c;

    iget-object v4, p0, Lcom/geetest/captcha/b;->e:Lcom/geetest/captcha/GTCaptcha4Config;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/geetest/captcha/GTCaptcha4Config;->getDialogShowListener()Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    move-result-object v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v3, v4}, Lcom/geetest/captcha/c;-><init>(Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;)V

    iput-object v3, v0, Lcom/geetest/captcha/n;->d:Lcom/geetest/captcha/c;

    iget-object v0, p0, Lcom/geetest/captcha/b;->i:Lcom/geetest/captcha/m;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0, v1}, Lcom/geetest/captcha/m;->b(Lcom/geetest/captcha/n;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/geetest/captcha/b;->a:Ljava/lang/String;

    return-void
.end method
