.class final Lcom/google/android/gms/internal/ads/zzbpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbpd;

.field final synthetic zzb:Lcom/google/android/gms/ads/mediation/Adapter;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbpy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpy;Lcom/google/android/gms/internal/ads/zzbpd;Lcom/google/android/gms/ads/mediation/Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzc:Lcom/google/android/gms/internal/ads/zzbpy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zza:Lcom/google/android/gms/internal/ads/zzbpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzb:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzb:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "failed to load mediation ad: ErrorCode = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". ErrorMessage = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". ErrorDomain = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcat;->zze(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zza:Lcom/google/android/gms/internal/ads/zzbpd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zza()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zza:Lcom/google/android/gms/internal/ads/zzbpd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbpd;->zzi(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zza:Lcom/google/android/gms/internal/ads/zzbpd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcat;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const/4 v1, 0x0

    const-string v2, "undefined"

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpr;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzc:Lcom/google/android/gms/internal/ads/zzbpy;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpy;->zzd(Lcom/google/android/gms/internal/ads/zzbpy;Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zza:Lcom/google/android/gms/internal/ads/zzbpd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcat;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zza:Lcom/google/android/gms/internal/ads/zzbpd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpo;-><init>(Lcom/google/android/gms/internal/ads/zzbpd;)V

    return-object v0
.end method
