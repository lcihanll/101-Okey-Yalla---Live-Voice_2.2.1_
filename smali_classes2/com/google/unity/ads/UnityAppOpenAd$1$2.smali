.class Lcom/google/unity/ads/UnityAppOpenAd$1$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "UnityAppOpenAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityAppOpenAd$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityAppOpenAd$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdClicked$4$UnityAppOpenAd$1$2()V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onAdDismissedFullScreenContent$2$UnityAppOpenAd$1$2()V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdDismissedFullScreenContent()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onAdFailedToShowFullScreenContent$0$UnityAppOpenAd$1$2(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onAdImpression$3$UnityAppOpenAd$1$2()V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdImpression()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onAdShowedFullScreenContent$1$UnityAppOpenAd$1$2()V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdShowedFullScreenContent()V

    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$FrzuxaeoAQC4X2aJETO2XZJ0NHc;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$FrzuxaeoAQC4X2aJETO2XZJ0NHc;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$1$2;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$888CNFKnKi213Wa_M_OyEBI1eOo;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$888CNFKnKi213Wa_M_OyEBI1eOo;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$1$2;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$k2Dmr9IpCxJEkt-VQGvMhHmclaQ;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$k2Dmr9IpCxJEkt-VQGvMhHmclaQ;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$1$2;Lcom/google/android/gms/ads/AdError;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$gTAmI86bPafCZwcpNcgSivgvWdw;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$gTAmI86bPafCZwcpNcgSivgvWdw;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$1$2;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$2;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$UxALjwfBfdgyzj9-YSN0BePoaEU;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/-$$Lambda$UnityAppOpenAd$1$2$UxALjwfBfdgyzj9-YSN0BePoaEU;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$1$2;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method
