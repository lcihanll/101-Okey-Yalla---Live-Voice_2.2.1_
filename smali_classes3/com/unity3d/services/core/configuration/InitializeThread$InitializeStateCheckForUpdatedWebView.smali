.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;
.super Lcom/unity3d/services/core/configuration/InitializeThread$c;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateCheckForUpdatedWebView"
.end annotation


# instance fields
.field private a:Lcom/unity3d/services/core/configuration/Configuration;

.field private b:[B

.field private c:Lcom/unity3d/services/core/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/configuration/Configuration;[BLcom/unity3d/services/core/configuration/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$c;-><init>(Lcom/unity3d/services/core/configuration/InitializeThread$a;)V

    iput-object p1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->a:Lcom/unity3d/services/core/configuration/Configuration;

    iput-object p2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->b:[B

    iput-object p3, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->c:Lcom/unity3d/services/core/configuration/Configuration;

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$c;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->b:[B

    invoke-static {v0}, Lcom/unity3d/services/core/misc/j;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->a:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->a:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-static {v1}, Lcom/unity3d/services/core/properties/d;->a(Lcom/unity3d/services/core/configuration/Configuration;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->c:Lcom/unity3d/services/core/configuration/Configuration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UTF-8"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->c:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->c:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {v3}, Lcom/unity3d/services/core/configuration/Configuration;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->b:[B

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;

    iget-object v2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->c:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->a:Lcom/unity3d/services/core/configuration/Configuration;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->b:[B

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;

    iget-object v2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->a:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    :cond_2
    new-instance v0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;

    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->a:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateLoadWeb;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    new-instance v1, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCleanCache;

    iget-object v2, p0, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCheckForUpdatedWebView;->a:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateCleanCache;-><init>(Lcom/unity3d/services/core/configuration/Configuration;Lcom/unity3d/services/core/configuration/InitializeThread$c;)V

    return-object v1
.end method
