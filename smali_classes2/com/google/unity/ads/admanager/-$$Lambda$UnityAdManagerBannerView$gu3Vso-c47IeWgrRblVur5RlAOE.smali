.class public final synthetic Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$gu3Vso-c47IeWgrRblVur5RlAOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;

.field public final synthetic f$1:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$gu3Vso-c47IeWgrRblVur5RlAOE;->f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;

    iput-object p2, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$gu3Vso-c47IeWgrRblVur5RlAOE;->f$1:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$gu3Vso-c47IeWgrRblVur5RlAOE;->f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;

    iget-object v1, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$gu3Vso-c47IeWgrRblVur5RlAOE;->f$1:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    invoke-virtual {v0, v1}, Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;->lambda$loadAd$0$UnityAdManagerBannerView(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    return-void
.end method
