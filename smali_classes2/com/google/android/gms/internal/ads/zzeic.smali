.class public final Lcom/google/android/gms/internal/ads/zzeic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhbp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhbp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhbp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhbp;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhbp;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhbp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbp;Lcom/google/android/gms/internal/ads/zzhbp;Lcom/google/android/gms/internal/ads/zzhbp;Lcom/google/android/gms/internal/ads/zzhbp;Lcom/google/android/gms/internal/ads/zzhbp;Lcom/google/android/gms/internal/ads/zzhbp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeic;->zza:Lcom/google/android/gms/internal/ads/zzhbp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeic;->zzb:Lcom/google/android/gms/internal/ads/zzhbp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeic;->zzc:Lcom/google/android/gms/internal/ads/zzhbp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeic;->zzd:Lcom/google/android/gms/internal/ads/zzhbp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeic;->zze:Lcom/google/android/gms/internal/ads/zzhbp;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeic;->zzf:Lcom/google/android/gms/internal/ads/zzhbp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeic;->zza:Lcom/google/android/gms/internal/ads/zzhbp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhbp;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzchw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeic;->zzb:Lcom/google/android/gms/internal/ads/zzhbp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zza()Lcom/google/android/gms/internal/ads/zzdho;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeic;->zzc:Lcom/google/android/gms/internal/ads/zzhbp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxd;->zza()Lcom/google/android/gms/internal/ads/zzcwt;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeic;->zzd:Lcom/google/android/gms/internal/ads/zzhbp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzddv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddv;->zza()Lcom/google/android/gms/internal/ads/zzddc;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeic;->zze:Lcom/google/android/gms/internal/ads/zzhbp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhbp;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzeio;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeic;->zzf:Lcom/google/android/gms/internal/ads/zzhbp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhbp;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzeez;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeib;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzeib;-><init>(Lcom/google/android/gms/internal/ads/zzchw;Lcom/google/android/gms/internal/ads/zzdho;Lcom/google/android/gms/internal/ads/zzcwt;Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzeio;Lcom/google/android/gms/internal/ads/zzeez;)V

    return-object v0
.end method