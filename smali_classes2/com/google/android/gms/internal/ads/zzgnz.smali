.class public final Lcom/google/android/gms/internal/ads/zzgnz;
.super Lcom/google/android/gms/internal/ads/zzgtv;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgvk;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoa;->zzd()Lcom/google/android/gms/internal/ads/zzgoa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgtv;-><init>(Lcom/google/android/gms/internal/ads/zzgtz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgny;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoa;->zzd()Lcom/google/android/gms/internal/ads/zzgoa;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtv;-><init>(Lcom/google/android/gms/internal/ads/zzgtz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgsr;)Lcom/google/android/gms/internal/ads/zzgnz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtv;->zzap()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnz;->zza:Lcom/google/android/gms/internal/ads/zzgtz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgoa;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgoa;->zzh(Lcom/google/android/gms/internal/ads/zzgoa;Lcom/google/android/gms/internal/ads/zzgsr;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzgnz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtv;->zzap()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnz;->zza:Lcom/google/android/gms/internal/ads/zzgtz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoa;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgoa;->zzg(Lcom/google/android/gms/internal/ads/zzgoa;I)V

    return-object p0
.end method
