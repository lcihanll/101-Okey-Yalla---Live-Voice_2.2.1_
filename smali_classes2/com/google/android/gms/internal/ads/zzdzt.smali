.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfza;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzt;->zza:Lcom/google/android/gms/internal/ads/zzdze;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzt;->zza:Lcom/google/android/gms/internal/ads/zzdze;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdze;->zzc(Lcom/google/android/gms/internal/ads/zzbuo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
