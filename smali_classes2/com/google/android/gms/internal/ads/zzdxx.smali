.class public final Lcom/google/android/gms/internal/ads/zzdxx;
.super Lcom/google/android/gms/internal/ads/zzdxz;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxz;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzt()Lcom/google/android/gms/ads/internal/util/zzbx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbug;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzbug;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzf:Lcom/google/android/gms/internal/ads/zzbug;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzf:Lcom/google/android/gms/internal/ads/zzbug;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbug;->zzp()Lcom/google/android/gms/internal/ads/zzbus;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zze:Lcom/google/android/gms/internal/ads/zzbvg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxy;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdxy;-><init>(Lcom/google/android/gms/internal/ads/zzdxz;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbus;->zzg(Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzbvc;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcac;

    move-result-object v2

    const-string v3, "RemoteAdRequestClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcac;->zzu(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzcbl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdyo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcbl;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzcbl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdyo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcbl;->zzd(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcat;->zze(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdyo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdyo;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbl;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
