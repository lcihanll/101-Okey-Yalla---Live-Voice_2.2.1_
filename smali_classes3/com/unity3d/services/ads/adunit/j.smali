.class public Lcom/unity3d/services/ads/adunit/j;
.super Ljava/lang/Object;
.source "WebViewHandler.java"

# interfaces
.implements Lcom/unity3d/services/ads/adunit/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/unity3d/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/a;->g()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/a;->g()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/misc/k;->a(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/a;->g()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/j;->a()Z

    return-void
.end method
