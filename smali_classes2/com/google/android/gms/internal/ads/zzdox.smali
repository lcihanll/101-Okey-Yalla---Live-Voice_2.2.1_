.class public final Lcom/google/android/gms/internal/ads/zzdox;
.super Lcom/google/android/gms/internal/ads/zzcsx;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdhf;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcxy;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzczf;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzctr;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzbwm;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfnb;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfdg;

.field private zzm:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgb;Lcom/google/android/gms/internal/ads/zzdhf;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzcxy;Lcom/google/android/gms/internal/ads/zzczf;Lcom/google/android/gms/internal/ads/zzctr;Lcom/google/android/gms/internal/ads/zzfcr;Lcom/google/android/gms/internal/ads/zzfnb;Lcom/google/android/gms/internal/ads/zzfdg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcsx;-><init>(Lcom/google/android/gms/internal/ads/zzcsw;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzm:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdox;->zze:Lcom/google/android/gms/internal/ads/zzdhf;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzf:Lcom/google/android/gms/internal/ads/zzdel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzg:Lcom/google/android/gms/internal/ads/zzcxy;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzh:Lcom/google/android/gms/internal/ads/zzczf;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzi:Lcom/google/android/gms/internal/ads/zzctr;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzk:Lcom/google/android/gms/internal/ads/zzfnb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbxg;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzfcr;->zzn:Lcom/google/android/gms/internal/ads/zzbwi;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzbwi;->zza:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    if-eqz p2, :cond_1

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbwi;->zzb:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbxg;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzj:Lcom/google/android/gms/internal/ads/zzbwm;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzl:Lcom/google/android/gms/internal/ads/zzfdg;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzgH:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzm:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcbg;->zze:Lcom/google/android/gms/internal/ads/zzgad;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdow;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdow;-><init>(Lcom/google/android/gms/internal/ads/zzcgb;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgad;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgb;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzh:Lcom/google/android/gms/internal/ads/zzczf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczf;->zzb()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbwm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzj:Lcom/google/android/gms/internal/ads/zzbwm;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfdg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzl:Lcom/google/android/gms/internal/ads/zzfdg;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzi:Lcom/google/android/gms/internal/ads/zzctr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctr;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzm:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgb;->zzaB()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(ZLandroid/app/Activity;)Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzaA:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcat;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzg:Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxy;->zzb()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzaB:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzk:Lcom/google/android/gms/internal/ads/zzfnb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdox;->zza:Lcom/google/android/gms/internal/ads/zzfde;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfde;->zzb:Lcom/google/android/gms/internal/ads/zzfdd;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfdd;->zzb:Lcom/google/android/gms/internal/ads/zzfcv;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcv;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfnb;->zza(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzm:Z

    if-eqz v0, :cond_2

    const-string p1, "The rewarded ad have been showed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcat;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzg:Lcom/google/android/gms/internal/ads/zzcxy;

    const/16 p2, 0xa

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfeo;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxy;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzm:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzf:Lcom/google/android/gms/internal/ads/zzdel;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdel;->zzb()V

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzc:Landroid/content/Context;

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdox;->zze:Lcom/google/android/gms/internal/ads/zzdhf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzg:Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-interface {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzdhf;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcxy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzf:Lcom/google/android/gms/internal/ads/zzdel;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdel;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhe; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdox;->zzg:Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcxy;->zzc(Lcom/google/android/gms/internal/ads/zzdhe;)V

    return v1
.end method
