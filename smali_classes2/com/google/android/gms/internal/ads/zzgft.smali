.class final Lcom/google/android/gms/internal/ads/zzgft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgrx;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgiq;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgim;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzght;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzghp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgjr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgrx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgft;->zzb:Lcom/google/android/gms/internal/ads/zzgrx;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfp;->zza:Lcom/google/android/gms/internal/ads/zzgfp;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfo;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgjd;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgiq;->zzb(Lcom/google/android/gms/internal/ads/zzgio;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgiq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgft;->zzc:Lcom/google/android/gms/internal/ads/zzgiq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfq;->zza:Lcom/google/android/gms/internal/ads/zzgfq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgjd;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgim;->zza(Lcom/google/android/gms/internal/ads/zzgik;Lcom/google/android/gms/internal/ads/zzgrx;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgim;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgft;->zzd:Lcom/google/android/gms/internal/ads/zzgim;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfr;->zza:Lcom/google/android/gms/internal/ads/zzgfr;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfj;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgjc;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzght;->zza(Lcom/google/android/gms/internal/ads/zzghr;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzght;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgft;->zze:Lcom/google/android/gms/internal/ads/zzght;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgjc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgfs;->zza:Lcom/google/android/gms/internal/ads/zzgfs;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzghp;->zzb(Lcom/google/android/gms/internal/ads/zzghn;Lcom/google/android/gms/internal/ads/zzgrx;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzghp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgft;->zzf:Lcom/google/android/gms/internal/ads/zzghp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgii;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgft;->zzc:Lcom/google/android/gms/internal/ads/zzgiq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgii;->zzg(Lcom/google/android/gms/internal/ads/zzgiq;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgft;->zzd:Lcom/google/android/gms/internal/ads/zzgim;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgii;->zzf(Lcom/google/android/gms/internal/ads/zzgim;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgft;->zze:Lcom/google/android/gms/internal/ads/zzght;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgii;->zze(Lcom/google/android/gms/internal/ads/zzght;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgft;->zzf:Lcom/google/android/gms/internal/ads/zzghp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgii;->zzd(Lcom/google/android/gms/internal/ads/zzghp;)V

    return-void
.end method
