.class public final synthetic Lcom/google/unity/ads/admanager/-$$Lambda$AdManagerInterstitialAdCallback$3$r2x4U8NzBRU9sRnUkxawuvCNBTE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/admanager/-$$Lambda$AdManagerInterstitialAdCallback$3$r2x4U8NzBRU9sRnUkxawuvCNBTE;->f$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/admanager/-$$Lambda$AdManagerInterstitialAdCallback$3$r2x4U8NzBRU9sRnUkxawuvCNBTE;->f$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$3;

    invoke-virtual {v0}, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$3;->lambda$onAdDismissedFullScreenContent$2$AdManagerInterstitialAdCallback$3()V

    return-void
.end method
