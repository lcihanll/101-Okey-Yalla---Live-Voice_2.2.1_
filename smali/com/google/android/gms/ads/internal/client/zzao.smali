.class final Lcom/google/android/gms/ads/internal/client/zzao;
.super Lcom/google/android/gms/ads/internal/client/zzax;
.source "com.google.android.gms:play-services-ads-lite@@22.5.0"


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbox;

.field final synthetic zzd:Lcom/google/android/gms/ads/internal/client/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbox;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzc:Lcom/google/android/gms/internal/ads/zzbox;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzax;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zza:Landroid/content/Context;

    const-string v1, "native_ad"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzt(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzeu;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzeu;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzc:Lcom/google/android/gms/internal/ads/zzbox;

    const v3, 0xdee0270

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzce;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbox;I)Lcom/google/android/gms/ads/internal/client/zzbq;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzc()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbci;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzjQ:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zza:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl"

    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzan;->zza:Lcom/google/android/gms/ads/internal/client/zzan;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcax;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcav;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzbr;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzc:Lcom/google/android/gms/internal/ads/zzbox;

    const v5, 0xdee0270

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/gms/ads/internal/client/zzbr;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbox;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/ads/internal/client/zzbq;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzbq;

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzbo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/client/zzbo;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcaw; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zza:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbty;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbua;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzs(Lcom/google/android/gms/ads/internal/client/zzaw;Lcom/google/android/gms/internal/ads/zzbua;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzp(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/internal/ads/zzbua;

    move-result-object v2

    const-string v3, "ClientApiBroker.createAdLoaderBuilder"

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbua;->zzf(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzd:Lcom/google/android/gms/ads/internal/client/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzao;->zzc:Lcom/google/android/gms/internal/ads/zzbox;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaw;->zza(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/ads/internal/client/zzi;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzi;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbox;)Lcom/google/android/gms/ads/internal/client/zzbq;

    move-result-object v1

    :goto_2
    return-object v1
.end method
