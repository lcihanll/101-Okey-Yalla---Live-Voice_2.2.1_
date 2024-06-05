.class public final synthetic Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$k2Dmr9IpCxJEkt-VQGvMhHmclaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/UnityAppOpenAd$1$2;

.field public final synthetic f$1:Lcom/google/android/gms/ads/AdError;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/UnityAppOpenAd$1$2;Lcom/google/android/gms/ads/AdError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$k2Dmr9IpCxJEkt-VQGvMhHmclaQ;->f$0:Lcom/google/unity/ads/UnityAppOpenAd$1$2;

    iput-object p2, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$k2Dmr9IpCxJEkt-VQGvMhHmclaQ;->f$1:Lcom/google/android/gms/ads/AdError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$k2Dmr9IpCxJEkt-VQGvMhHmclaQ;->f$0:Lcom/google/unity/ads/UnityAppOpenAd$1$2;

    iget-object v1, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$k2Dmr9IpCxJEkt-VQGvMhHmclaQ;->f$1:Lcom/google/android/gms/ads/AdError;

    invoke-virtual {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->lambda$onAdFailedToShowFullScreenContent$0$UnityAppOpenAd$1$2(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method
