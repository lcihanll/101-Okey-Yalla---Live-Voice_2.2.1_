.class public final Lcom/google/android/gms/internal/ads/zzgcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgqi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final zzb:Lcom/google/android/gms/internal/ads/zzgqi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final zzc:Lcom/google/android/gms/internal/ads/zzgqi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgcv;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgeh;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgey;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgdq;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfm;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggl;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqi;->zzc()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcj;->zza:Lcom/google/android/gms/internal/ads/zzgqi;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcj;->zzb:Lcom/google/android/gms/internal/ads/zzgqi;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcj;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgcj;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgco;->zzd()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgle;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgcv;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcg;->zzf(Lcom/google/android/gms/internal/ads/zzghv;Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzgdg;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgii;->zzb()Lcom/google/android/gms/internal/ads/zzgii;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdg;->zza(Lcom/google/android/gms/internal/ads/zzgii;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgeh;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcg;->zzf(Lcom/google/android/gms/internal/ads/zzghv;Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzger;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgii;->zzb()Lcom/google/android/gms/internal/ads/zzgii;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzger;->zza(Lcom/google/android/gms/internal/ads/zzgii;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghg;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgdq;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcg;->zzf(Lcom/google/android/gms/internal/ads/zzghv;Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzgea;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgii;->zzb()Lcom/google/android/gms/internal/ads/zzgii;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgea;->zza(Lcom/google/android/gms/internal/ads/zzgii;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgey;->zzg(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfm;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcg;->zzf(Lcom/google/android/gms/internal/ads/zzghv;Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzgft;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgii;->zzb()Lcom/google/android/gms/internal/ads/zzgii;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgft;->zza(Lcom/google/android/gms/internal/ads/zzgii;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcg;->zzf(Lcom/google/android/gms/internal/ads/zzghv;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcg;->zzf(Lcom/google/android/gms/internal/ads/zzghv;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggl;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcg;->zzf(Lcom/google/android/gms/internal/ads/zzghv;Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzggs;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgii;->zzb()Lcom/google/android/gms/internal/ads/zzgii;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzggs;->zza(Lcom/google/android/gms/internal/ads/zzgii;)V

    return-void
.end method
