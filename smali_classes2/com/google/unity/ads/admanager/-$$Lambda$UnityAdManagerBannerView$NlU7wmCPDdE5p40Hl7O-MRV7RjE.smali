.class public final synthetic Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$NlU7wmCPDdE5p40Hl7O-MRV7RjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$NlU7wmCPDdE5p40Hl7O-MRV7RjE;->f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;

    iput-object p2, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$NlU7wmCPDdE5p40Hl7O-MRV7RjE;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$NlU7wmCPDdE5p40Hl7O-MRV7RjE;->f$0:Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;

    iget-object v1, p0, Lcom/google/unity/ads/admanager/-$$Lambda$UnityAdManagerBannerView$NlU7wmCPDdE5p40Hl7O-MRV7RjE;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/unity/ads/admanager/UnityAdManagerBannerView;->lambda$setAdSizes$2$UnityAdManagerBannerView(Ljava/util/List;)V

    return-void
.end method
