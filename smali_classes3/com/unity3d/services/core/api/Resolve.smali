.class public Lcom/unity3d/services/core/api/Resolve;
.super Ljava/lang/Object;
.source "Resolve.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/l;)V
    .locals 2
    .annotation runtime Lcom/unity3d/services/core/webview/bridge/WebViewExposed;
    .end annotation

    new-instance v0, Lcom/unity3d/services/core/api/Resolve$a;

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/api/Resolve$a;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/unity3d/services/core/request/l;->a(Ljava/lang/String;Lcom/unity3d/services/core/request/b;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-virtual {p2, p1}, Lcom/unity3d/services/core/webview/bridge/l;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/unity3d/services/core/request/f;->a:Lcom/unity3d/services/core/request/f;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {p2, p1, v1}, Lcom/unity3d/services/core/webview/bridge/l;->a(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
