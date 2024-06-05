.class public final synthetic Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$nmZV8xmtMPTtfui1ElUV_RiWg0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$nmZV8xmtMPTtfui1ElUV_RiWg0M;->f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$nmZV8xmtMPTtfui1ElUV_RiWg0M;->f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;

    invoke-virtual {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;->lambda$getAdSizes$1$UnityAdManagerBannerView()[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method
