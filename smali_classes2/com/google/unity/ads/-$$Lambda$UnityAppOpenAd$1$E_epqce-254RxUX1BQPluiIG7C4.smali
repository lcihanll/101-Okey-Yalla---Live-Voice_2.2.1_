.class public final synthetic Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$E_epqce-254RxUX1BQPluiIG7C4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/UnityAppOpenAd$1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/UnityAppOpenAd$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$E_epqce-254RxUX1BQPluiIG7C4;->f$0:Lcom/google/unity/ads/UnityAppOpenAd$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$E_epqce-254RxUX1BQPluiIG7C4;->f$0:Lcom/google/unity/ads/UnityAppOpenAd$1;

    invoke-virtual {v0}, Lcom/google/unity/ads/UnityAppOpenAd$1;->lambda$onAdLoaded$0$UnityAppOpenAd$1()V

    return-void
.end method
