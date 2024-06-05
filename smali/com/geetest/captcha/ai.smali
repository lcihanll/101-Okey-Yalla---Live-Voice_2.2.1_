.class public final Lcom/geetest/captcha/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/ai$a;,
        Lcom/geetest/captcha/ai$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u0012\u0013B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0000H\u0007J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/geetest/captcha/views/WebViewBuilder;",
        "",
        "builder",
        "Lcom/geetest/captcha/views/WebViewBuilder$Builder;",
        "(Lcom/geetest/captcha/views/WebViewBuilder$Builder;)V",
        "jsInterface",
        "Lcom/geetest/captcha/views/WebViewBuilder$JSInterface;",
        "observable",
        "Lcom/geetest/captcha/observer/WebViewObservable;",
        "url",
        "",
        "webView",
        "Lcom/geetest/captcha/views/GTC4WebView;",
        "getWebView",
        "()Lcom/geetest/captcha/views/GTC4WebView;",
        "loadUrl",
        "setObservable",
        "",
        "Builder",
        "JSInterface",
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
.field public final a:Ljava/lang/String;

.field public b:Lcom/geetest/captcha/v;

.field public final c:Lcom/geetest/captcha/views/GTC4WebView;

.field public d:Lcom/geetest/captcha/ai$b;


# direct methods
.method private constructor <init>(Lcom/geetest/captcha/ai$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/geetest/captcha/ai$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v1, "url"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/geetest/captcha/ai;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/geetest/captcha/ai$a;->b:Lcom/geetest/captcha/v;

    if-nez v0, :cond_1

    const-string v1, "observable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lcom/geetest/captcha/ai;->b:Lcom/geetest/captcha/v;

    iget-object p1, p1, Lcom/geetest/captcha/ai$a;->c:Lcom/geetest/captcha/views/GTC4WebView;

    if-nez p1, :cond_2

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/geetest/captcha/ai;->c:Lcom/geetest/captcha/views/GTC4WebView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geetest/captcha/ai$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geetest/captcha/ai;-><init>(Lcom/geetest/captcha/ai$a;)V

    return-void
.end method
