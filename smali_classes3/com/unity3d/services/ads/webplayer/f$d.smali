.class Lcom/unity3d/services/ads/webplayer/f$d;
.super Landroid/webkit/WebChromeClient;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ads/webplayer/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/services/ads/webplayer/f;


# direct methods
.method private constructor <init>(Lcom/unity3d/services/ads/webplayer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/services/ads/webplayer/f;Lcom/unity3d/services/ads/webplayer/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/webplayer/f$d;-><init>(Lcom/unity3d/services/ads/webplayer/f;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onCloseWindow"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->s:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v3}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "onConsoleMessage"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v1

    sget-object v3, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v4, Lcom/unity3d/services/ads/webplayer/c;->x:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p1, v2, v1, v0}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "onCreateWindow"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v1

    sget-object v3, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v4, Lcom/unity3d/services/ads/webplayer/c;->r:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v5, p3

    const/4 p2, 0x2

    aput-object p4, v5, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v5, p3

    invoke-virtual {v1, v3, v4, v5}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-class p2, Ljava/lang/Boolean;

    invoke-static {p1, v2, p2, v0}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onGeolocationPermissionsShowPrompt"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :cond_0
    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p2

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->z:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onHideCustomView()V
    .locals 6

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/services/ads/webplayer/c;->q:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v4}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "onJsAlert"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/ads/webplayer/c;->u:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 p2, 0x1

    aput-object p3, v4, p2

    const/4 p2, 0x2

    aput-object p4, v4, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v4, p3

    invoke-virtual {p1, v1, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class p3, Ljava/lang/Boolean;

    invoke-static {p1, v2, p3, p2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "onJsConfirm"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p4, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->v:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p3, v3, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v3, p3

    invoke-virtual {p1, p4, v1, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class p3, Ljava/lang/Boolean;

    invoke-static {p1, v2, p3, p2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "onJsPrompt"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p5, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->w:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p3, v3, p2

    const/4 p2, 0x2

    aput-object p4, v3, p2

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v3, p3

    invoke-virtual {p1, p5, v1, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class p3, Ljava/lang/Boolean;

    invoke-static {p1, v2, p3, p2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onPermissionRequest"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/services/ads/webplayer/c;->e:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->l:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p2, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v0, Lcom/unity3d/services/ads/webplayer/c;->n:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v0, v1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedTitle"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->m:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onReceivedTouchIconUrl"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->o:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v2, p3

    iget-object p2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v2, p3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onRequestFocus"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->t:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v3}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v1}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p2, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v0, Lcom/unity3d/services/ads/webplayer/c;->p:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v0, v1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    const-string v2, "onShowFileChooser"

    invoke-static {v1, v2}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p3, Lcom/unity3d/services/core/webview/b;->l:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/ads/webplayer/c;->y:Lcom/unity3d/services/ads/webplayer/c;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {v4}, Lcom/unity3d/services/ads/webplayer/f;->b(Lcom/unity3d/services/ads/webplayer/f;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, p3, v1, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-static {p1, v2}, Lcom/unity3d/services/ads/webplayer/f;->c(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/services/ads/webplayer/f$d;->a:Lcom/unity3d/services/ads/webplayer/f;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, v2, v0, p3}, Lcom/unity3d/services/ads/webplayer/f;->a(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
