.class public final Lcom/google/android/gms/internal/ads/zzebo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhbp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebo;->zza:Lcom/google/android/gms/internal/ads/zzhbp;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzebn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebo;->zza:Lcom/google/android/gms/internal/ads/zzhbp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcix;->zza()Lcom/google/android/gms/internal/ads/zzbvr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzebn;-><init>(Lcom/google/android/gms/internal/ads/zzbvr;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzebo;->zza()Lcom/google/android/gms/internal/ads/zzebn;

    move-result-object v0

    return-object v0
.end method
