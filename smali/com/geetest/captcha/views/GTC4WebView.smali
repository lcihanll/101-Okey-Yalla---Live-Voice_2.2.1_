.class public final Lcom/geetest/captcha/views/GTC4WebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/views/GTC4WebView$c;,
        Lcom/geetest/captcha/views/GTC4WebView$b;,
        Lcom/geetest/captcha/views/GTC4WebView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u0000 #2\u00020\u0001:\u0003#$%B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB+\u0008\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000cJ \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0008\u0010\u0019\u001a\u00020\u0012H\u0014J\u0008\u0010\u001a\u001a\u00020\u0012H\u0016J(\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0014J\u0010\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0018H\u0002J\u000e\u0010\"\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/geetest/captcha/views/GTC4WebView;",
        "Landroid/webkit/WebView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "myWebViewClient",
        "Lcom/geetest/captcha/views/GTC4WebView$MyWebViewClient;",
        "resumeTimers",
        "",
        "init",
        "",
        "observable",
        "Lcom/geetest/captcha/observer/WebViewObservable;",
        "dataBean",
        "Lcom/geetest/captcha/model/DataBean;",
        "loadUrl",
        "",
        "onDetachedFromWindow",
        "onResume",
        "onSizeChanged",
        "newWidth",
        "newHeight",
        "oldWidth",
        "oldHeight",
        "parseUrl",
        "url",
        "setWebViewObservable",
        "Companion",
        "MyWebChromeClient",
        "MyWebViewClient",
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
.field public static final b:Lcom/geetest/captcha/views/GTC4WebView$a;


# instance fields
.field public a:Lcom/geetest/captcha/views/GTC4WebView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/geetest/captcha/views/GTC4WebView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/captcha/views/GTC4WebView$a;-><init>(B)V

    sput-object v0, Lcom/geetest/captcha/views/GTC4WebView;->b:Lcom/geetest/captcha/views/GTC4WebView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 1

    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    const-string v0, "GTC4WebView.onDetachedFromWindow"

    invoke-static {v0}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    const-string v0, "JSInterface"

    invoke-virtual {p0, v0}, Lcom/geetest/captcha/views/GTC4WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/geetest/captcha/views/GTC4WebView;->removeAllViews()V

    invoke-virtual {p0}, Lcom/geetest/captcha/views/GTC4WebView;->removeAllViewsInLayout()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/geetest/captcha/views/GTC4WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    invoke-virtual {p0}, Lcom/geetest/captcha/views/GTC4WebView;->resumeTimers()V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newWidth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newHeight: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldWidth: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldHeight: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GTC4WebView"

    invoke-static {p2, p1}, Lcom/geetest/captcha/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setWebViewObservable(Lcom/geetest/captcha/v;)V
    .locals 2

    const-string v0, "observable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/geetest/captcha/views/GTC4WebView;->a:Lcom/geetest/captcha/views/GTC4WebView$c;

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/geetest/captcha/views/GTC4WebView$c;->a:Lcom/geetest/captcha/v;

    :cond_0
    return-void
.end method
