.class public final synthetic Lcom/google/android/gms/internal/ads/zzers;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeru;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzert;

.field public final synthetic zzb:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzert;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzers;->zza:Lcom/google/android/gms/internal/ads/zzert;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzers;->zzb:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzj(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzers;->zza:Lcom/google/android/gms/internal/ads/zzert;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzers;->zzb:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzert;->zzd(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method