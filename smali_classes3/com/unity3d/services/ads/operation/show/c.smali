.class public Lcom/unity3d/services/ads/operation/show/c;
.super Lcom/unity3d/services/ads/operation/a;
.source "ShowModule.java"

# interfaces
.implements Lcom/unity3d/services/ads/operation/show/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/services/ads/operation/a<",
        "Lcom/unity3d/services/ads/operation/show/b;",
        "Lcom/unity3d/services/ads/operation/show/g;",
        ">;",
        "Lcom/unity3d/services/ads/operation/show/a;"
    }
.end annotation


# static fields
.field private static d:Lcom/unity3d/services/ads/operation/show/a; = null

.field public static e:Ljava/lang/String; = "[UnityAds] Placement ID cannot be null"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/request/metrics/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/operation/a;-><init>(Lcom/unity3d/services/core/request/metrics/c;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/ads/operation/show/c;Lcom/unity3d/services/ads/operation/show/g;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/ads/operation/show/c;->a(Lcom/unity3d/services/ads/operation/show/g;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Z)V

    return-void
.end method

.method private a(Lcom/unity3d/services/ads/operation/show/g;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/unity3d/services/ads/operation/show/g;->i:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/services/ads/operation/a;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object p4

    invoke-virtual {p1}, Lcom/unity3d/services/ads/operation/e;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/unity3d/services/core/request/metrics/c;->a(Lcom/unity3d/services/core/request/metrics/d;)V

    :cond_1
    new-instance p4, Lcom/unity3d/services/ads/operation/show/c$b;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/unity3d/services/ads/operation/show/c$b;-><init>(Lcom/unity3d/services/ads/operation/show/c;Lcom/unity3d/services/ads/operation/show/g;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/unity3d/services/core/misc/j;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b()Lcom/unity3d/services/ads/operation/show/a;
    .locals 3

    sget-object v0, Lcom/unity3d/services/ads/operation/show/c;->d:Lcom/unity3d/services/ads/operation/show/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/ads/operation/show/e;

    new-instance v1, Lcom/unity3d/services/ads/operation/show/c;

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unity3d/services/ads/operation/show/c;-><init>(Lcom/unity3d/services/core/request/metrics/c;)V

    new-instance v2, Lcom/unity3d/services/core/configuration/ConfigurationReader;

    invoke-direct {v2}, Lcom/unity3d/services/core/configuration/ConfigurationReader;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/operation/show/e;-><init>(Lcom/unity3d/services/ads/operation/show/a;Lcom/unity3d/services/core/configuration/ConfigurationReader;)V

    sput-object v0, Lcom/unity3d/services/ads/operation/show/c;->d:Lcom/unity3d/services/ads/operation/show/a;

    :cond_0
    sget-object v0, Lcom/unity3d/services/ads/operation/show/c;->d:Lcom/unity3d/services/ads/operation/show/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/ads/operation/show/g;)V
    .locals 10

    const-string v0, "[UnityAds] Error creating show options"

    iget-object v1, p2, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/unity3d/services/ads/operation/show/c;->e:Ljava/lang/String;

    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-direct {p0, p2, p1, v0, v2}, Lcom/unity3d/services/ads/operation/show/c;->a(Lcom/unity3d/services/ads/operation/show/g;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Z)V

    return-void

    :cond_0
    new-instance v1, Lcom/unity3d/services/ads/operation/show/f;

    new-instance v3, Lcom/unity3d/services/core/webview/bridge/invocation/c;

    iget-object v4, p0, Lcom/unity3d/services/ads/operation/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/unity3d/services/ads/operation/show/c$a;

    invoke-direct {v5, p0, p2}, Lcom/unity3d/services/ads/operation/show/c$a;-><init>(Lcom/unity3d/services/ads/operation/show/c;Lcom/unity3d/services/ads/operation/show/g;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/unity3d/services/core/webview/bridge/invocation/c;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/core/webview/bridge/invocation/b;)V

    invoke-direct {v1, p2, v3}, Lcom/unity3d/services/ads/operation/show/f;-><init>(Lcom/unity3d/services/ads/operation/show/g;Lcom/unity3d/services/core/webview/bridge/invocation/a;)V

    iget-object p1, p2, Lcom/unity3d/services/ads/operation/show/g;->h:Landroid/app/Activity;

    invoke-static {p1}, Lcom/unity3d/services/core/properties/a;->a(Landroid/app/Activity;)V

    iget-object p1, p2, Lcom/unity3d/services/ads/operation/show/g;->h:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "requestedOrientation"

    :try_start_0
    iget-object v7, p2, Lcom/unity3d/services/ads/operation/show/g;->h:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "rotation"

    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v7, 0xd

    const-string v8, "height"

    const-string v9, "width"

    if-lt v6, v7, :cond_1

    :try_start_2
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p1, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget p1, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    invoke-virtual {v5, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string p1, "display"

    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "headerBiddingOptions"

    :try_start_3
    iget-object v5, p2, Lcom/unity3d/services/ads/operation/show/g;->j:Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-virtual {v5}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "options"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "listenerId"

    :try_start_4
    invoke-interface {v1}, Lcom/unity3d/services/core/webview/bridge/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "placementId"

    :try_start_5
    iget-object v4, p2, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "time"

    :try_start_6
    invoke-static {}, Lcom/unity3d/services/core/device/b;->p()J

    move-result-wide v4

    invoke-virtual {v3, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    invoke-virtual {p0, v1}, Lcom/unity3d/services/core/webview/bridge/k;->a(Lcom/unity3d/services/core/webview/bridge/d;)V

    iget-object p1, p2, Lcom/unity3d/services/ads/operation/e;->d:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewBridgeTimeout()I

    move-result p1

    new-array p2, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, p2, v0

    invoke-interface {v1, p1, p2}, Lcom/unity3d/services/ads/operation/d;->a(I[Ljava/lang/Object;)V

    return-void

    :catch_0
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/unity3d/services/ads/operation/show/c;->a(Lcom/unity3d/services/ads/operation/show/g;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Z)V

    return-void

    :catch_1
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/unity3d/services/ads/operation/show/c;->a(Lcom/unity3d/services/ads/operation/show/g;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/unity3d/services/core/webview/bridge/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/unity3d/services/ads/operation/show/g;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/ads/operation/show/c;->a(Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/ads/operation/show/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->get(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/ads/operation/show/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object p1

    if-nez p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public onUnityAdsShowClick(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->get(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/ads/operation/show/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowClick(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUnityAdsShowComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->get(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/d;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/ads/operation/show/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/services/ads/operation/a;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unity3d/services/ads/operation/e;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/core/request/metrics/b;->b(Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/unity3d/services/core/request/metrics/c;->a(Lcom/unity3d/services/core/request/metrics/d;)V

    iget-object v1, v1, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->get(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/d;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/ads/operation/show/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/services/ads/operation/a;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unity3d/services/ads/operation/e;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/unity3d/services/core/request/metrics/c;->a(Lcom/unity3d/services/core/request/metrics/d;)V

    iget-object v1, v1, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUnityAdsShowStart(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->get(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/ads/operation/show/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/unity3d/services/ads/operation/show/b;->c()Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowStart(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
