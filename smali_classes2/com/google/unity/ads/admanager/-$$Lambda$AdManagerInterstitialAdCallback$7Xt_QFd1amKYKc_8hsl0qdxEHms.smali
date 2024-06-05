.class public final synthetic Lcom/google/unity/ads/admanager/-$$Lambda$AdManagerInterstitialAdCallback$7Xt_QFd1amKYKc_8hsl0qdxEHms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/admanager/-$$Lambda$AdManagerInterstitialAdCallback$7Xt_QFd1amKYKc_8hsl0qdxEHms;->f$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/admanager/-$$Lambda$AdManagerInterstitialAdCallback$7Xt_QFd1amKYKc_8hsl0qdxEHms;->f$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;

    invoke-virtual {v0}, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;->lambda$onAdLoaded$0$AdManagerInterstitialAdCallback()V

    return-void
.end method
