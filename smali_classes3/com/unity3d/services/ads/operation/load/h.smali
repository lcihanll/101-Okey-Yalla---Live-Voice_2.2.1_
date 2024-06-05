.class public Lcom/unity3d/services/ads/operation/load/h;
.super Lcom/unity3d/services/ads/operation/e;
.source "LoadOperationState.java"


# instance fields
.field public h:Lcom/unity3d/ads/IUnityAdsLoadListener;

.field public i:Lcom/unity3d/ads/UnityAdsLoadOptions;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/unity3d/services/ads/operation/e;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/configuration/Configuration;)V

    iput-object p2, p0, Lcom/unity3d/services/ads/operation/load/h;->h:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iput-object p3, p0, Lcom/unity3d/services/ads/operation/load/h;->i:Lcom/unity3d/ads/UnityAdsLoadOptions;

    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/load/h;->h:Lcom/unity3d/ads/IUnityAdsLoadListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/load/h;->h:Lcom/unity3d/ads/IUnityAdsLoadListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsAdLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
