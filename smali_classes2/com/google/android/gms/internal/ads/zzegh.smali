.class public final synthetic Lcom/google/android/gms/internal/ads/zzegh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfza;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzegj;

.field public final synthetic zzb:Landroid/net/Uri;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfde;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfcr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegj;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzfcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zza:Lcom/google/android/gms/internal/ads/zzegj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzc:Lcom/google/android/gms/internal/ads/zzfde;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzd:Lcom/google/android/gms/internal/ads/zzfcr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegh;->zza:Lcom/google/android/gms/internal/ads/zzegj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzb:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzc:Lcom/google/android/gms/internal/ads/zzfde;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzd:Lcom/google/android/gms/internal/ads/zzfcr;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzegj;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzfcr;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
