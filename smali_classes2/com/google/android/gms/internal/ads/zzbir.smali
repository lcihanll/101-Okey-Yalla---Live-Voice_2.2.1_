.class final Lcom/google/android/gms/internal/ads/zzbir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgb;

    const-string v0, "appId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Missing App Id, cannot show LMD Overlay without it"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfra;->zzl()Lcom/google/android/gms/internal/ads/zzfqz;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfqz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgb;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqz;->zzh(I)Lcom/google/android/gms/internal/ads/zzfqz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgb;->zzF()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqz;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfqz;

    const-string v0, "gravityX"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gravityY"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqz;->zzd(I)Lcom/google/android/gms/internal/ads/zzfqz;

    goto :goto_0

    :cond_1
    const/16 v0, 0x51

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqz;->zzd(I)Lcom/google/android/gms/internal/ads/zzfqz;

    :goto_0
    const-string v0, "verticalMargin"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqz;->zze(F)Lcom/google/android/gms/internal/ads/zzfqz;

    goto :goto_1

    :cond_2
    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqz;->zze(F)Lcom/google/android/gms/internal/ads/zzfqz;

    :goto_1
    const-string v0, "enifd"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfqz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfqz;

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzw;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfqz;->zzi()Lcom/google/android/gms/internal/ads/zzfra;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzj(Lcom/google/android/gms/internal/ads/zzcgb;Lcom/google/android/gms/internal/ads/zzfra;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcac;

    move-result-object p2

    const-string v0, "DefaultGmsgHandlers.ShowLMDOverlay"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcac;->zzu(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "Missing parameters for LMD Overlay show request"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void
.end method