.class public Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;
.super Ljava/lang/Object;
.source "QueryInfoMetadata.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/ads/query/QueryInfo;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryInfo()Lcom/google/android/gms/ads/query/QueryInfo;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->b:Lcom/google/android/gms/ads/query/QueryInfo;

    return-object v0
.end method

.method public getQueryStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->b:Lcom/google/android/gms/ads/query/QueryInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->c:Ljava/lang/String;

    return-void
.end method

.method public setQueryInfo(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/signals/QueryInfoMetadata;->b:Lcom/google/android/gms/ads/query/QueryInfo;

    return-void
.end method
