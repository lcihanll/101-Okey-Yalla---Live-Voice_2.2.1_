.class final Lcom/google/android/gms/internal/ads/zzfae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcws;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfad;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffa;Lcom/google/android/gms/internal/ads/zzcws;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zza:Lcom/google/android/gms/internal/ads/zzffa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzb:Lcom/google/android/gms/internal/ads/zzcws;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfae;)Lcom/google/android/gms/internal/ads/zzfad;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzd:Lcom/google/android/gms/internal/ads/zzfad;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfae;)Lcom/google/android/gms/internal/ads/zzffk;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfae;->zze()Lcom/google/android/gms/internal/ads/zzffk;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfae;Lcom/google/android/gms/internal/ads/zzfad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzd:Lcom/google/android/gms/internal/ads/zzfad;

    return-void
.end method

.method private final zze()Lcom/google/android/gms/internal/ads/zzffk;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzb:Lcom/google/android/gms/internal/ads/zzcws;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcws;->zzg()Lcom/google/android/gms/internal/ads/zzfdn;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfdn;->zzd:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfdn;->zzf:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfdn;->zzj:Lcom/google/android/gms/ads/internal/client/zzw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfae;->zza:Lcom/google/android/gms/internal/ads/zzffa;

    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzffa;->zzc(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzw;)Lcom/google/android/gms/internal/ads/zzffk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzd:Lcom/google/android/gms/internal/ads/zzfad;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbei;->zza:Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdn;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfad;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfae;->zze()Lcom/google/android/gms/internal/ads/zzffk;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzfad;-><init>(Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzffk;Lcom/google/android/gms/internal/ads/zzfac;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzd:Lcom/google/android/gms/internal/ads/zzfad;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzt;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzb:Lcom/google/android/gms/internal/ads/zzcws;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zza:Lcom/google/android/gms/internal/ads/zzffa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcws;->zzb()Lcom/google/android/gms/internal/ads/zzcue;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzffa;->zza()Lcom/google/android/gms/internal/ads/zzffh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcue;->zze(Lcom/google/android/gms/internal/ads/zzffh;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzk;->zzu(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfab;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfab;-><init>(Lcom/google/android/gms/internal/ads/zzfae;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzt;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfsk;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfaa;-><init>(Lcom/google/android/gms/internal/ads/zzfae;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzc:Ljava/util/concurrent/Executor;

    const-class v3, Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzt;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfsk;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfae;->zzc:Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzezz;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfsk;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzt;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
