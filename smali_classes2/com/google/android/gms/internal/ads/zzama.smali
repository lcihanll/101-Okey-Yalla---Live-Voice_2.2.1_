.class public final Lcom/google/android/gms/internal/ads/zzama;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/BlockingQueue;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzalz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzalq;

.field private volatile zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzalx;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzalz;Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzalx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzama;->zza:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzama;->zzb:Lcom/google/android/gms/internal/ads/zzalz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzama;->zzc:Lcom/google/android/gms/internal/ads/zzalq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzama;->zze:Lcom/google/android/gms/internal/ads/zzalx;

    return-void
.end method

.method private zzb()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zza:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zzt(I)V

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "network-queue-take"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamg;->zzm(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zzw()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zzc()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzama;->zzb:Lcom/google/android/gms/internal/ads/zzalz;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzalz;->zza(Lcom/google/android/gms/internal/ads/zzamg;)Lcom/google/android/gms/internal/ads/zzamc;

    move-result-object v2

    const-string v3, "network-http-complete"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzm(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzamc;->zze:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zzv()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "not-modified"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamg;->zzp(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zzr()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzamp; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zzt(I)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamg;->zzh(Lcom/google/android/gms/internal/ads/zzamc;)Lcom/google/android/gms/internal/ads/zzamm;

    move-result-object v2

    const-string v3, "network-parse-complete"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzm(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzamm;->zzb:Lcom/google/android/gms/internal/ads/zzalp;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzama;->zzc:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zzj()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzamm;->zzb:Lcom/google/android/gms/internal/ads/zzalp;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzalq;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalp;)V

    const-string v3, "network-cache-written"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamg;->zzm(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zzq()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzama;->zze:Lcom/google/android/gms/internal/ads/zzalx;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzalx;->zzb(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzamm;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamg;->zzs(Lcom/google/android/gms/internal/ads/zzamm;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzamp; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zzt(I)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Unhandled exception %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzams;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamp;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzamp;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzama;->zze:Lcom/google/android/gms/internal/ads/zzalx;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzalx;->zza(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzamp;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zzr()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zzt(I)V

    return-void

    :catch_1
    move-exception v2

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzama;->zze:Lcom/google/android/gms/internal/ads/zzalx;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzalx;->zza(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzamp;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zzr()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zzt(I)V

    return-void

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamg;->zzt(I)V

    throw v2
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzama;->zzb()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzd:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzams;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzama;->interrupt()V

    return-void
.end method