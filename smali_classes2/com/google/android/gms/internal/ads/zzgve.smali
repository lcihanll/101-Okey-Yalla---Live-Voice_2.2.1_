.class final Lcom/google/android/gms/internal/ads/zzgve;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgvd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvd;->zze()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgvd;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvd;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvd;->zzb()Lcom/google/android/gms/internal/ads/zzgvd;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvd;->zzd(Lcom/google/android/gms/internal/ads/zzgvd;)V

    :cond_1
    return-object p0
.end method
