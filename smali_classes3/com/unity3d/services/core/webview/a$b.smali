.class final Lcom/unity3d/services/core/webview/a$b;
.super Ljava/lang/Object;
.source "WebViewApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/webview/a;->a(Lcom/unity3d/services/core/configuration/Configuration;)Lcom/unity3d/services/core/configuration/ErrorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/services/core/configuration/Configuration;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/core/webview/a$b;->a:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/unity3d/services/core/webview/a;

    iget-object v1, p0, Lcom/unity3d/services/core/webview/a$b;->a:Lcom/unity3d/services/core/configuration/Configuration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;-><init>(Lcom/unity3d/services/core/configuration/Configuration;ZLcom/unity3d/services/core/webview/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/unity3d/services/core/webview/c;

    iget-object v2, p0, Lcom/unity3d/services/core/webview/a$b;->a:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/services/core/webview/a$b;->a:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v1, v2, v3}, Lcom/unity3d/services/core/webview/c;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/configuration/Configuration;)V

    invoke-virtual {v1}, Lcom/unity3d/services/core/webview/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/a;->g()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/unity3d/services/core/webview/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/webview/a;->a(Lcom/unity3d/services/core/webview/a;)V

    return-void

    :catch_0
    const-string v0, "Couldn\'t construct WebViewApp"

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->a()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
