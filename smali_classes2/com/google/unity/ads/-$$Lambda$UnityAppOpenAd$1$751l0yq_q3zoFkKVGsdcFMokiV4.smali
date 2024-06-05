.class public final synthetic Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$751l0yq_q3zoFkKVGsdcFMokiV4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/UnityAppOpenAd$1;

.field public final synthetic f$1:Lcom/google/android/gms/ads/LoadAdError;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/UnityAppOpenAd$1;Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$751l0yq_q3zoFkKVGsdcFMokiV4;->f$0:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iput-object p2, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$751l0yq_q3zoFkKVGsdcFMokiV4;->f$1:Lcom/google/android/gms/ads/LoadAdError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$751l0yq_q3zoFkKVGsdcFMokiV4;->f$0:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v1, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$751l0yq_q3zoFkKVGsdcFMokiV4;->f$1:Lcom/google/android/gms/ads/LoadAdError;

    invoke-virtual {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd$1;->lambda$onAdFailedToLoad$1$UnityAppOpenAd$1(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method
