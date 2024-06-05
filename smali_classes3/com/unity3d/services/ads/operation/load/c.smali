.class public Lcom/unity3d/services/ads/operation/load/c;
.super Lcom/unity3d/services/ads/operation/a;
.source "LoadModule.java"

# interfaces
.implements Lcom/unity3d/services/ads/operation/load/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/services/ads/operation/a<",
        "Lcom/unity3d/services/ads/operation/load/b;",
        "Lcom/unity3d/services/ads/operation/load/h;",
        ">;",
        "Lcom/unity3d/services/ads/operation/load/a;"
    }
.end annotation


# static fields
.field private static d:Lcom/unity3d/services/ads/operation/load/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/request/metrics/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/operation/a;-><init>(Lcom/unity3d/services/core/request/metrics/c;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/ads/operation/load/c;Lcom/unity3d/services/ads/operation/load/h;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/ads/operation/load/c;->a(Lcom/unity3d/services/ads/operation/load/h;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/unity3d/services/ads/operation/load/h;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/unity3d/services/ads/operation/load/h;->h:Lcom/unity3d/ads/IUnityAdsLoadListener;

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

    invoke-static {p2, v0}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/unity3d/services/core/request/metrics/c;->a(Lcom/unity3d/services/core/request/metrics/d;)V

    :cond_1
    new-instance p4, Lcom/unity3d/services/ads/operation/load/c$b;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/unity3d/services/ads/operation/load/c$b;-><init>(Lcom/unity3d/services/ads/operation/load/c;Lcom/unity3d/services/ads/operation/load/h;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/unity3d/services/core/misc/j;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b()Lcom/unity3d/services/ads/operation/load/a;
    .locals 3

    sget-object v0, Lcom/unity3d/services/ads/operation/load/c;->d:Lcom/unity3d/services/ads/operation/load/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/ads/operation/load/c;

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/i;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/services/ads/operation/load/c;-><init>(Lcom/unity3d/services/core/request/metrics/c;)V

    new-instance v1, Lcom/unity3d/services/ads/operation/load/e;

    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/unity3d/services/ads/operation/load/e;-><init>(Lcom/unity3d/services/ads/operation/load/a;Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;)V

    new-instance v0, Lcom/unity3d/services/ads/operation/load/f;

    new-instance v2, Lcom/unity3d/services/core/configuration/ConfigurationReader;

    invoke-direct {v2}, Lcom/unity3d/services/core/configuration/ConfigurationReader;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/operation/load/f;-><init>(Lcom/unity3d/services/ads/operation/load/a;Lcom/unity3d/services/core/configuration/ConfigurationReader;)V

    sput-object v0, Lcom/unity3d/services/ads/operation/load/c;->d:Lcom/unity3d/services/ads/operation/load/a;

    :cond_0
    sget-object v0, Lcom/unity3d/services/ads/operation/load/c;->d:Lcom/unity3d/services/ads/operation/load/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/ads/operation/load/h;)V
    .locals 6

    const-string v0, "[UnityAds] Failed to create load request"

    iget-object v1, p2, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    const-string v0, "[UnityAds] Placement ID cannot be null"

    invoke-direct {p0, p2, p1, v0, v2}, Lcom/unity3d/services/ads/operation/load/c;->a(Lcom/unity3d/services/ads/operation/load/h;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v1, Lcom/unity3d/services/ads/operation/load/g;

    new-instance v3, Lcom/unity3d/services/core/webview/bridge/invocation/c;

    iget-object v4, p0, Lcom/unity3d/services/ads/operation/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/unity3d/services/ads/operation/load/c$a;

    invoke-direct {v5, p0, p2}, Lcom/unity3d/services/ads/operation/load/c$a;-><init>(Lcom/unity3d/services/ads/operation/load/c;Lcom/unity3d/services/ads/operation/load/h;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/unity3d/services/core/webview/bridge/invocation/c;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/core/webview/bridge/invocation/b;)V

    invoke-direct {v1, p2, v3}, Lcom/unity3d/services/ads/operation/load/g;-><init>(Lcom/unity3d/services/ads/operation/load/h;Lcom/unity3d/services/core/webview/bridge/invocation/a;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "headerBiddingOptions"

    :try_start_0
    iget-object v5, p2, Lcom/unity3d/services/ads/operation/load/h;->i:Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-virtual {v5}, Lcom/unity3d/ads/UnityAdsBaseOptions;->getData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "options"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "listenerId"

    :try_start_1
    invoke-virtual {v1}, Lcom/unity3d/services/ads/operation/load/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "placementId"

    :try_start_2
    iget-object v4, p2, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "time"

    :try_start_3
    invoke-static {}, Lcom/unity3d/services/core/device/b;->p()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {p0, v1}, Lcom/unity3d/services/core/webview/bridge/k;->a(Lcom/unity3d/services/core/webview/bridge/d;)V

    iget-object p2, p2, Lcom/unity3d/services/ads/operation/e;->d:Lcom/unity3d/services/core/configuration/Configuration;

    invoke-virtual {p2}, Lcom/unity3d/services/core/configuration/Configuration;->getWebViewBridgeTimeout()I

    move-result p2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, p2, v0}, Lcom/unity3d/services/ads/operation/b;->a(I[Ljava/lang/Object;)V

    return-void

    :catch_0
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    invoke-direct {p0, p2, p1, v0, v2}, Lcom/unity3d/services/ads/operation/load/c;->a(Lcom/unity3d/services/ads/operation/load/h;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Z)V

    return-void

    :catch_1
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    invoke-direct {p0, p2, p1, v0, v2}, Lcom/unity3d/services/ads/operation/load/c;->a(Lcom/unity3d/services/ads/operation/load/h;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/unity3d/services/core/webview/bridge/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/unity3d/services/ads/operation/load/h;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/ads/operation/load/c;->a(Lcom/unity3d/services/core/webview/bridge/b;Lcom/unity3d/services/ads/operation/load/h;)V

    return-void
.end method

.method public onUnityAdsAdLoaded(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->get(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/d;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/ads/operation/load/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/unity3d/services/ads/operation/load/b;->b()Lcom/unity3d/services/ads/operation/load/h;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/unity3d/services/ads/operation/load/b;->b()Lcom/unity3d/services/ads/operation/load/h;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/services/ads/operation/a;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unity3d/services/ads/operation/e;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/core/request/metrics/b;->a(Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/unity3d/services/core/request/metrics/c;->a(Lcom/unity3d/services/core/request/metrics/d;)V

    iget-object v1, v1, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsAdLoaded(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->get(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/d;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/ads/operation/load/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/unity3d/services/ads/operation/load/b;->b()Lcom/unity3d/services/ads/operation/load/h;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/unity3d/services/ads/operation/load/b;->b()Lcom/unity3d/services/ads/operation/load/h;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/services/ads/operation/a;->a()Lcom/unity3d/services/core/request/metrics/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unity3d/services/ads/operation/e;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/unity3d/services/core/request/metrics/c;->a(Lcom/unity3d/services/core/request/metrics/d;)V

    iget-object v1, v1, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/webview/bridge/k;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
