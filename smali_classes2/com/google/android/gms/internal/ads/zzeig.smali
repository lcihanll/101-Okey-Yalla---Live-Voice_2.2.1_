.class public final Lcom/google/android/gms/internal/ads/zzeig;
.super Lcom/google/android/gms/internal/ads/zzeid;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcwt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzekt;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzddc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdho;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdaa;

.field private final zzg:Landroid/view/ViewGroup;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdch;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzeio;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzeez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchw;Lcom/google/android/gms/internal/ads/zzcwt;Lcom/google/android/gms/internal/ads/zzekt;Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzdho;Lcom/google/android/gms/internal/ads/zzdaa;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzdch;Lcom/google/android/gms/internal/ads/zzeio;Lcom/google/android/gms/internal/ads/zzeez;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeid;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zza:Lcom/google/android/gms/internal/ads/zzchw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzb:Lcom/google/android/gms/internal/ads/zzcwt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzc:Lcom/google/android/gms/internal/ads/zzekt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzd:Lcom/google/android/gms/internal/ads/zzddc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeig;->zze:Lcom/google/android/gms/internal/ads/zzdho;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzf:Lcom/google/android/gms/internal/ads/zzdaa;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzg:Landroid/view/ViewGroup;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzh:Lcom/google/android/gms/internal/ads/zzdch;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzi:Lcom/google/android/gms/internal/ads/zzeio;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzj:Lcom/google/android/gms/internal/ads/zzeez;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfdn;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfcr;Lcom/google/android/gms/internal/ads/zzfde;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzb:Lcom/google/android/gms/internal/ads/zzcwt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwt;->zzi(Lcom/google/android/gms/internal/ads/zzfdn;)Lcom/google/android/gms/internal/ads/zzcwt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcwt;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcwt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwn;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzi:Lcom/google/android/gms/internal/ads/zzeio;

    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzcwn;-><init>(Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzfcr;Lcom/google/android/gms/internal/ads/zzeio;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwt;->zzg(Lcom/google/android/gms/internal/ads/zzcwn;)Lcom/google/android/gms/internal/ads/zzcwt;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzdp:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzb:Lcom/google/android/gms/internal/ads/zzcwt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzj:Lcom/google/android/gms/internal/ads/zzeez;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcwt;->zzd(Lcom/google/android/gms/internal/ads/zzeez;)Lcom/google/android/gms/internal/ads/zzcwt;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeig;->zza:Lcom/google/android/gms/internal/ads/zzchw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzb:Lcom/google/android/gms/internal/ads/zzcwt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchw;->zze()Lcom/google/android/gms/internal/ads/zzcrr;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcwt;->zzj()Lcom/google/android/gms/internal/ads/zzcwv;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrr;->zzi(Lcom/google/android/gms/internal/ads/zzcwv;)Lcom/google/android/gms/internal/ads/zzcrr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzd:Lcom/google/android/gms/internal/ads/zzddc;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrr;->zzf(Lcom/google/android/gms/internal/ads/zzddc;)Lcom/google/android/gms/internal/ads/zzcrr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzc:Lcom/google/android/gms/internal/ads/zzekt;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrr;->zze(Lcom/google/android/gms/internal/ads/zzekt;)Lcom/google/android/gms/internal/ads/zzcrr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zze:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrr;->zzd(Lcom/google/android/gms/internal/ads/zzdho;)Lcom/google/android/gms/internal/ads/zzcrr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzf:Lcom/google/android/gms/internal/ads/zzdaa;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzh:Lcom/google/android/gms/internal/ads/zzdch;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcsp;

    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/zzcsp;-><init>(Lcom/google/android/gms/internal/ads/zzdaa;Lcom/google/android/gms/internal/ads/zzdch;)V

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzcrr;->zzg(Lcom/google/android/gms/internal/ads/zzcsp;)Lcom/google/android/gms/internal/ads/zzcrr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeig;->zzg:Landroid/view/ViewGroup;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcqs;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzcqs;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzcrr;->zzc(Lcom/google/android/gms/internal/ads/zzcqs;)Lcom/google/android/gms/internal/ads/zzcrr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcrr;->zzk()Lcom/google/android/gms/internal/ads/zzcrs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrs;->zzd()Lcom/google/android/gms/internal/ads/zzcue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcue;->zzj()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcue;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method