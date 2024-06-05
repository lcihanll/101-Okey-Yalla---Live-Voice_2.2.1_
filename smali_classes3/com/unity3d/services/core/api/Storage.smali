.class public Lcom/unity3d/services/core/api/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/unity3d/services/core/device/f;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/services/core/device/i$a;->valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/device/i$a;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/services/core/device/i;->a(Lcom/unity3d/services/core/device/i$a;)Lcom/unity3d/services/core/device/f;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 3

    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/f;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/services/core/misc/g;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v2

    invoke-virtual {p3, p0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/unity3d/services/core/device/g;->a:Lcom/unity3d/services/core/device/g;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-virtual {p3, p0, p2}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/unity3d/services/core/device/g;->e:Lcom/unity3d/services/core/device/g;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    invoke-virtual {p3, p2, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static clear(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 3
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/services/core/device/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/device/g;->d:Lcom/unity3d/services/core/device/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/unity3d/services/core/device/g;->e:Lcom/unity3d/services/core/device/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 3
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/misc/g;->delete(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    invoke-virtual {p2, p1}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/unity3d/services/core/device/g;->f:Lcom/unity3d/services/core/device/g;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/unity3d/services/core/device/g;->e:Lcom/unity3d/services/core/device/g;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 4
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/f;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/misc/g;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/unity3d/services/core/device/g;->b:Lcom/unity3d/services/core/device/g;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p2, p0, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    invoke-virtual {p2, p1}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/unity3d/services/core/device/g;->e:Lcom/unity3d/services/core/device/g;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {p2, v0, v3}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 3
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/f;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/unity3d/services/core/misc/g;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object p2, p1, v2

    invoke-virtual {p3, p1}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    aput-object p1, p0, v2

    invoke-virtual {p3, p0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/unity3d/services/core/device/g;->e:Lcom/unity3d/services/core/device/g;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    invoke-virtual {p3, p2, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static read(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 3
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/services/core/device/f;->d()Z

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/device/g;->e:Lcom/unity3d/services/core/device/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 0
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/l;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 0
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/l;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 0
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/l;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 0
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/l;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 0
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/l;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 0
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/l;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 0
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/services/core/webview/bridge/l;)V

    return-void
.end method

.method public static write(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 3
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    invoke-static {p0}, Lcom/unity3d/services/core/api/Storage;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/services/core/device/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/device/g;->c:Lcom/unity3d/services/core/device/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/unity3d/services/core/device/g;->e:Lcom/unity3d/services/core/device/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
