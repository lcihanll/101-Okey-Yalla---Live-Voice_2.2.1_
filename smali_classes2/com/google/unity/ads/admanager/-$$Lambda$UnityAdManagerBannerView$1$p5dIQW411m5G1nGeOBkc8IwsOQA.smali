.class public final synthetic Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$1$p5dIQW411m5G1nGeOBkc8IwsOQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView$1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/admanager/UnityAdManagerBannerView$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$1$p5dIQW411m5G1nGeOBkc8IwsOQA;->f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$1$p5dIQW411m5G1nGeOBkc8IwsOQA;->f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView$1;

    invoke-virtual {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerBannerView$1;->lambda$onAdClosed$3$UnityAdManagerBannerView$1()V

    return-void
.end method
