.class public abstract Lcom/google/android/gms/internal/ads/zzfxb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxb;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfxb;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvd;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzfxb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwz;->zza:Lcom/google/android/gms/internal/ads/zzfwz;

    return-object v0
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzfxb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>(Lcom/google/android/gms/internal/ads/zzfxb;)V

    return-object v0
.end method
