.class public final synthetic Lcom/google/android/gms/internal/ads/zzno;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzel;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzmc;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzid;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmc;Lcom/google/android/gms/internal/ads/zzid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzno;->zzb:Lcom/google/android/gms/internal/ads/zzid;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzme;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzno;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzno;->zzb:Lcom/google/android/gms/internal/ads/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzme;->zzo(Lcom/google/android/gms/internal/ads/zzmc;Lcom/google/android/gms/internal/ads/zzid;)V

    return-void
.end method