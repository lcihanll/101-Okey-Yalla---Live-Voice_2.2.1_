.class Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$2;
.super Ljava/lang/Object;
.source "AdManagerInterstitialAdCallback.java"

# interfaces
.implements Lcom/google/android/gms/ads/admanager/AppEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;->onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;

.field final synthetic val$service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$service"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$2;->this$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;

    iput-object p2, p0, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$2;->val$service:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAppEvent$0$AdManagerInterstitialAdCallback$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$2;->this$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$2;->this$0:Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$2;->val$service:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/unity/ads/admanager/-$$Lambda$AdManagerInterstitialAdCallback$2$fDbudJWhLDKmkpbIxZQXAhNIRQY;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/admanager/-$$Lambda$AdManagerInterstitialAdCallback$2$fDbudJWhLDKmkpbIxZQXAhNIRQY;-><init>(Lcom/google/unity/ads/admanager/AdManagerInterstitialAdCallback$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
