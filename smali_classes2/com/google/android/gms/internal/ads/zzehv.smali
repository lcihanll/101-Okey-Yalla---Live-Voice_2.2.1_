.class public final Lcom/google/android/gms/internal/ads/zzehv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhbp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhbp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhbp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbp;Lcom/google/android/gms/internal/ads/zzhbp;Lcom/google/android/gms/internal/ads/zzhbp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehv;->zza:Lcom/google/android/gms/internal/ads/zzhbp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehv;->zzb:Lcom/google/android/gms/internal/ads/zzhbp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehv;->zzc:Lcom/google/android/gms/internal/ads/zzhbp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehv;->zza:Lcom/google/android/gms/internal/ads/zzhbp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhbp;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehv;->zzb:Lcom/google/android/gms/internal/ads/zzhbp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhbp;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdht;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehv;->zzc:Lcom/google/android/gms/internal/ads/zzhbp;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcio;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcio;->zza()Lcom/google/android/gms/internal/ads/zzcaz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzehu;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdht;Lcom/google/android/gms/internal/ads/zzcaz;)V

    return-object v3
.end method