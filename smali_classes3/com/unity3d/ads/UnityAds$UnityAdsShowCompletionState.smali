.class public final enum Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;
.super Ljava/lang/Enum;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsShowCompletionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

.field public static final enum SKIPPED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

.field private static final synthetic a:[Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    const-string v1, "SKIPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->SKIPPED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    new-instance v1, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    const-string v3, "COMPLETED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->COMPLETED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->a:[Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;
    .locals 1

    const-class v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;
    .locals 1

    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->a:[Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    invoke-virtual {v0}, [Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object v0
.end method
