.class public final Lcom/google/android/gms/internal/ads/zzfwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# direct methods
.method public static zza(I)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfup;->zza(ILjava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfsk;)Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfwf;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfsk;)V

    return-object v0
.end method
