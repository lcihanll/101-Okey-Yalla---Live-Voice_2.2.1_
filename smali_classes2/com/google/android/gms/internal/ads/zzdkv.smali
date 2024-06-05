.class public final Lcom/google/android/gms/internal/ads/zzdkv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdpt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdoi;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcqb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdjr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpt;Lcom/google/android/gms/internal/ads/zzdoi;Lcom/google/android/gms/internal/ads/zzcqb;Lcom/google/android/gms/internal/ads/zzdjr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zza:Lcom/google/android/gms/internal/ads/zzdpt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzc:Lcom/google/android/gms/internal/ads/zzcqb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzd:Lcom/google/android/gms/internal/ads/zzdjr;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcgm;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zza:Lcom/google/android/gms/internal/ads/zzdpt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzq;->zzc()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdpt;->zza(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzfcr;Lcom/google/android/gms/internal/ads/zzfcv;)Lcom/google/android/gms/internal/ads/zzcgb;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdkq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdkq;-><init>(Lcom/google/android/gms/internal/ads/zzdkv;)V

    const-string v3, "/sendMessageToSdk"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgb;->zzad(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdkr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdkr;-><init>(Lcom/google/android/gms/internal/ads/zzdkv;)V

    const-string v3, "/adMuted"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgb;->zzad(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdks;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdks;-><init>(Lcom/google/android/gms/internal/ads/zzdkv;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const-string v5, "/loadHtml"

    invoke-virtual {v4, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdoi;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdkt;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdkt;-><init>(Lcom/google/android/gms/internal/ads/zzdkv;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const-string v5, "/showOverlay"

    invoke-virtual {v4, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdoi;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdku;-><init>(Lcom/google/android/gms/internal/ads/zzdkv;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const-string v4, "/hideOverlay"

    invoke-virtual {v3, v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    return-object v1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcgb;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdoi;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcgb;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzd:Lcom/google/android/gms/internal/ads/zzdjr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjr;->zzg()V

    return-void
.end method

.method final synthetic zzd(Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "messageType"

    const-string p4, "htmlLoaded"

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "id"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const-string p3, "sendMessageToNativeJs"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdoi;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzcgb;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcat;->zzi(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgb;->zzF()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzc:Lcom/google/android/gms/internal/ads/zzcqb;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcqb;->zze(Z)V

    return-void
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzcgb;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcat;->zzi(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgb;->zzF()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkv;->zzc:Lcom/google/android/gms/internal/ads/zzcqb;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcqb;->zze(Z)V

    return-void
.end method
