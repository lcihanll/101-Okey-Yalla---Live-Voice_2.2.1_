.class final Lcom/google/android/gms/internal/ads/zzffs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfzp;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzffv;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzffw;Lcom/google/android/gms/internal/ads/zzffv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffs;->zzb:Lcom/google/android/gms/internal/ads/zzffw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffs;->zza:Lcom/google/android/gms/internal/ads/zzffv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffs;->zzb:Lcom/google/android/gms/internal/ads/zzffw;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffs;->zzb:Lcom/google/android/gms/internal/ads/zzffw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffw;->zzc(Lcom/google/android/gms/internal/ads/zzffw;Lcom/google/android/gms/internal/ads/zzfgc;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffs;->zzb:Lcom/google/android/gms/internal/ads/zzffw;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffs;->zzb:Lcom/google/android/gms/internal/ads/zzffw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzffw;->zzc(Lcom/google/android/gms/internal/ads/zzffw;Lcom/google/android/gms/internal/ads/zzfgc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffs;->zzb:Lcom/google/android/gms/internal/ads/zzffw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzffw;->zzb(Lcom/google/android/gms/internal/ads/zzffw;)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffs;->zza:Lcom/google/android/gms/internal/ads/zzffv;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffs;->zzb:Lcom/google/android/gms/internal/ads/zzffw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzffw;->zzg(Lcom/google/android/gms/internal/ads/zzffw;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzffw;->zzd(Lcom/google/android/gms/internal/ads/zzffw;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method