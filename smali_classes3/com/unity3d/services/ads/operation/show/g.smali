.class public Lcom/unity3d/services/ads/operation/show/g;
.super Lcom/unity3d/services/ads/operation/e;
.source "ShowOperationState.java"


# instance fields
.field public h:Landroid/app/Activity;

.field public i:Lcom/unity3d/ads/IUnityAdsShowListener;

.field public j:Lcom/unity3d/ads/UnityAdsShowOptions;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsShowListener;Landroid/app/Activity;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p5}, Lcom/unity3d/services/ads/operation/e;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/configuration/Configuration;)V

    iput-object p2, p0, Lcom/unity3d/services/ads/operation/show/g;->i:Lcom/unity3d/ads/IUnityAdsShowListener;

    iput-object p3, p0, Lcom/unity3d/services/ads/operation/show/g;->h:Landroid/app/Activity;

    iput-object p4, p0, Lcom/unity3d/services/ads/operation/show/g;->j:Lcom/unity3d/ads/UnityAdsShowOptions;

    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/g;->i:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/g;->i:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/g;->i:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/g;->i:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
