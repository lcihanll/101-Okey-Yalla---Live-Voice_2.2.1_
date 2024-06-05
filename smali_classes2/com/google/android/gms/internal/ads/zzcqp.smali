.class public final Lcom/google/android/gms/internal/ads/zzcqp;
.super Lcom/google/android/gms/internal/ads/zzcsx;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgb;

.field private final zzd:I

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcqe;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdhf;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdel;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcxy;

.field private final zzj:Z

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcag;

.field private zzl:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgb;ILcom/google/android/gms/internal/ads/zzcqe;Lcom/google/android/gms/internal/ads/zzdhf;Lcom/google/android/gms/internal/ads/zzdel;Lcom/google/android/gms/internal/ads/zzcxy;Lcom/google/android/gms/internal/ads/zzcag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcsx;-><init>(Lcom/google/android/gms/internal/ads/zzcsw;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzl:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzc:Lcom/google/android/gms/internal/ads/zzcgb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zze:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzf:Lcom/google/android/gms/internal/ads/zzcqe;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzg:Lcom/google/android/gms/internal/ads/zzdhf;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzh:Lcom/google/android/gms/internal/ads/zzdel;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzi:Lcom/google/android/gms/internal/ads/zzcxy;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzfh:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzj:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzk:Lcom/google/android/gms/internal/ads/zzcag;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzd:I

    return v0
.end method

.method public final zzb()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcsx;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzc:Lcom/google/android/gms/internal/ads/zzcgb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgb;->destroy()V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzawj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzc:Lcom/google/android/gms/internal/ads/zzcgb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgb;->zzah(Lcom/google/android/gms/internal/ads/zzawj;)V

    :cond_0
    return-void
.end method

.method public final zzd(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzaww;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zze:Landroid/content/Context;

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzj:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzh:Lcom/google/android/gms/internal/ads/zzdel;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdel;->zzb()V

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzaA:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzF(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcat;->zzj(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzi:Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcxy;->zzb()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzaB:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzt()Lcom/google/android/gms/ads/internal/util/zzbx;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfnb;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zza:Lcom/google/android/gms/internal/ads/zzfde;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfde;->zzb:Lcom/google/android/gms/internal/ads/zzfdd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfdd;->zzb:Lcom/google/android/gms/internal/ads/zzfcv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcv;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfnb;->zza(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzkP:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzc:Lcom/google/android/gms/internal/ads/zzcgb;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcgb;->zzD()Lcom/google/android/gms/internal/ads/zzfcr;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/zzfcr;->zzas:Z

    if-eqz v1, :cond_4

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzfcr;->zzat:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzk:Lcom/google/android/gms/internal/ads/zzcag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcag;->zzb()I

    move-result v1

    if-ne p2, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "The app open consent form has been shown."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcat;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzi:Lcom/google/android/gms/internal/ads/zzcxy;

    const/16 p2, 0xc

    const-string p3, "The consent form has already been shown."

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfeo;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxy;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_4
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzl:Z

    if-eqz p2, :cond_5

    const-string p2, "App open interstitial ad is already visible."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcat;->zzj(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzi:Lcom/google/android/gms/internal/ads/zzcxy;

    const/16 v1, 0xa

    invoke-static {v1, v0, v0}, Lcom/google/android/gms/internal/ads/zzfeo;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcxy;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_5
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzl:Z

    if-nez p2, :cond_7

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzg:Lcom/google/android/gms/internal/ads/zzdhf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzi:Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-interface {p2, p3, p1, v0}, Lcom/google/android/gms/internal/ads/zzdhf;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcxy;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzj:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzh:Lcom/google/android/gms/internal/ads/zzdel;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdel;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhe; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzl:Z

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzi:Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcxy;->zzc(Lcom/google/android/gms/internal/ads/zzdhe;)V

    :cond_7
    return-void
.end method

.method public final zze(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzf:Lcom/google/android/gms/internal/ads/zzcqe;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcqe;->zza(JI)V

    return-void
.end method
