.class final Lcom/google/android/gms/internal/ads/zzpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# direct methods
.method public static zza(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lcom/google/android/gms/internal/ads/zzoq;
    .locals 0

    invoke-static {p0, p1}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzoq;->zza:Lcom/google/android/gms/internal/ads/zzoq;

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzoo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoo;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoo;->zza(Z)Lcom/google/android/gms/internal/ads/zzoo;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzoo;->zzc(Z)Lcom/google/android/gms/internal/ads/zzoo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzd()Lcom/google/android/gms/internal/ads/zzoq;

    move-result-object p0

    return-object p0
.end method
