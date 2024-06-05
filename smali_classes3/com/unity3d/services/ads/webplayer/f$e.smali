.class Lcom/unity3d/services/ads/webplayer/f$e;
.super Landroid/webkit/WebViewClient;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ads/webplayer/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/services/ads/webplayer/f;


# direct methods
.method private constructor <init>(Lcom/unity3d/services/ads/webplayer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/ads/webplayer/f;Lcom/unity3d/services/ads/webplayer/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/f$e;-><init>(Lcom/unity3d/services/ads/webplayer/f;)V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onFormResubmission"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p2, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object p3, Lcom/unity3d/services/ads/webplayer/c;->E:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, p3, v0}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onLoadResource"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->f:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onPageCommitVisible"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->D:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->b:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p3, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v0, Lcom/unity3d/services/ads/webplayer/c;->a:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1, p3, v0, v1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 6

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedClientCertRequest"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPort()I

    move-result p2

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/services/ads/webplayer/c;->h:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4, p3}, Lcom/unity3d/services/ads/webplayer/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ""

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, p1

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/unity3d/services/ads/webplayer/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedHttpAuthRequest"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p2, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v0, Lcom/unity3d/services/ads/webplayer/c;->i:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    iget-object p3, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p3}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v1, p4

    invoke-virtual {p1, p2, v0, v1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedHttpError"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ""

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    const/4 v0, -0x1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p3

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/services/ads/webplayer/c;->d:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v3, p2

    invoke-virtual {p3, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedLoginRequest"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->k:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    const/4 p2, 0x2

    aput-object p4, v2, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v2, p3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    const/4 p1, 0x2

    new-array p2, p1, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const-string v0, "Received SSL error for \'%s\': %s"

    invoke-static {v0, p2}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v0, "onReceivedSslError"

    invoke-static {p2, v0}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p3

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/ads/webplayer/c;->g:Lcom/unity3d/services/ads/webplayer/c;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p3, v0, v3, p1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    new-instance v0, Lcom/unity3d/services/ads/webplayer/f$e$a;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/services/ads/webplayer/f$e$a;-><init>(Lcom/unity3d/services/ads/webplayer/f$e;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/j;->a(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnityAds Sdk WebPlayer onRenderProcessGone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/unity3d/services/ads/webplayer/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/log/a;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onScaleChanged"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->j:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v2, p3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v2, p3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onUnhandledKeyEvent"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->F:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 5

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "shouldInterceptRequest"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/services/ads/webplayer/c;->H:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "shouldOverrideKeyEvent"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/ads/webplayer/c;->C:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v4, v5

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {p1, v1, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, v2, v0, p2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/ads/webplayer/c;->B:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v4, v5

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {p1, v1, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, v2, v0, p2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/ads/webplayer/c;->B:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {p1, v1, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$e;->a:Lcom/unity3d/services/ads/webplayer/f;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, v2, v0, p2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
