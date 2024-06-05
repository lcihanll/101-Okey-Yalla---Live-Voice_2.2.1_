.class Lcom/unity3d/services/ads/operation/show/f$a;
.super Ljava/lang/Object;
.source "ShowOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/operation/show/f;->onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/unity3d/services/ads/operation/show/f;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/operation/show/f;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/show/f$a;->c:Lcom/unity3d/services/ads/operation/show/f;

    iput-object p2, p0, Lcom/unity3d/services/ads/operation/show/f$a;->a:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    iput-object p3, p0, Lcom/unity3d/services/ads/operation/show/f$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/f$a;->c:Lcom/unity3d/services/ads/operation/show/f;

    invoke-static {v0}, Lcom/unity3d/services/ads/operation/show/f;->a(Lcom/unity3d/services/ads/operation/show/f;)Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/f$a;->c:Lcom/unity3d/services/ads/operation/show/f;

    invoke-static {v0}, Lcom/unity3d/services/ads/operation/show/f;->a(Lcom/unity3d/services/ads/operation/show/f;)Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/ads/operation/show/f$a;->a:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    iget-object v2, p0, Lcom/unity3d/services/ads/operation/show/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/ads/operation/show/g;->a(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
