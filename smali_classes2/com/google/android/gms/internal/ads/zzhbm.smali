.class public final Lcom/google/android/gms/internal/ads/zzhbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzhbl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhaz;->zzc(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbm;->zza:Ljava/util/List;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhaz;->zzc(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbm;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhbp;)Lcom/google/android/gms/internal/ads/zzhbm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbm;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhbp;)Lcom/google/android/gms/internal/ads/zzhbm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbm;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhbn;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhbm;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhbm;->zzb:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhbn;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhbl;)V

    return-object v0
.end method