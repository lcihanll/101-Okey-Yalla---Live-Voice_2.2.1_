.class final Lcom/google/android/gms/internal/ads/zzjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzkb;Z)Lcom/google/android/gms/internal/ads/zzol;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzoh;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzol;

    sget-object p1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzol;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzkb;->zzz(Lcom/google/android/gms/internal/ads/zzme;)V

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzol;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoh;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzol;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p1
.end method
