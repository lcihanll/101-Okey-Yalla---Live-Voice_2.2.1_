.class public final Lcom/google/android/gms/internal/ads/zzdhp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdho;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhp;->zza:Lcom/google/android/gms/internal/ads/zzdho;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzbh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhp;->zza:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdho;->zza()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhp;->zza:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdho;->zza()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    return-object v0
.end method
