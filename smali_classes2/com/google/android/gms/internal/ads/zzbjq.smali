.class final Lcom/google/android/gms/internal/ads/zzbjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfzp;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zza;

.field final synthetic zzb:Ljava/util/Map;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbju;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjq;->zzd:Lcom/google/android/gms/internal/ads/zzbju;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjq;->zza:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbjq;->zzb:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbjq;->zzc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcac;

    move-result-object v0

    const-string v1, "OpenGmsgHandler.attributionReportingManager"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcac;->zzu(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjq;->zza:Lcom/google/android/gms/ads/internal/client/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjq;->zzb:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjq;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbjq;->zzd:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-static {v3, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbju;->zze(Lcom/google/android/gms/internal/ads/zzbju;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method