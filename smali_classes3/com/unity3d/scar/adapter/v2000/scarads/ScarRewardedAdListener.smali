.class public Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;
.super Lcom/unity3d/scar/adapter/v2000/scarads/ScarAdListener;
.source "ScarRewardedAdListener.java"


# instance fields
.field private final b:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAd;

.field private final c:Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

.field private final d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field private final e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

.field private final f:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAd;)V
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarAdListener;-><init>()V

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$a;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$a;-><init>(Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$b;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$b;-><init>(Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$c;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener$c;-><init>(Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->f:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->c:Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->b:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAd;

    return-void
.end method


# virtual methods
.method public getAdLoadListener()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->d:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-object v0
.end method

.method public getOnUserEarnedRewardListener()Lcom/google/android/gms/ads/OnUserEarnedRewardListener;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAdListener;->e:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    return-object v0
.end method
