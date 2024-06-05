.class public Lcom/unity3d/services/ads/api/GMAScar;
.super Ljava/lang/Object;
.source "GMAScar.java"


# static fields
.field private static final a:Lcom/unity3d/services/ads/gmascar/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unity3d/services/ads/gmascar/a;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/a;-><init>()V

    sput-object v0, Lcom/unity3d/services/ads/api/GMAScar;->a:Lcom/unity3d/services/ads/gmascar/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSCARSignals(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 1
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/api/GMAScar;->a:Lcom/unity3d/services/ads/gmascar/a;

    invoke-static {p0}, Lcom/unity3d/services/ads/api/GMAScar;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/unity3d/services/ads/api/GMAScar;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/unity3d/services/ads/gmascar/a;->a([Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static getVersion(Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 1
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/api/GMAScar;->a:Lcom/unity3d/services/ads/gmascar/a;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/a;->b()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static initializeScar(Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 1
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/api/GMAScar;->a:Lcom/unity3d/services/ads/gmascar/a;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/a;->c()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static isInitialized(Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/ads/api/GMAScar;->a:Lcom/unity3d/services/ads/gmascar/a;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/a;->d()Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 7
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/api/GMAScar;->a:Lcom/unity3d/services/ads/gmascar/a;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/unity3d/services/ads/gmascar/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p6, p0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 1
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    sget-object v0, Lcom/unity3d/services/ads/api/GMAScar;->a:Lcom/unity3d/services/ads/gmascar/a;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/unity3d/services/ads/gmascar/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p3, p0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    return-void
.end method
