.class final Lcom/google/android/gms/internal/ads/zzgcu;
.super Lcom/google/android/gms/internal/ads/zzghu;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgcv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgcv;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcu;->zza:Lcom/google/android/gms/internal/ads/zzgcv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgvj;)Lcom/google/android/gms/internal/ads/zzgvj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgdj;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmz;->zze()Lcom/google/android/gms/internal/ads/zzgnf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdi;->zzf(Lcom/google/android/gms/internal/ads/zzgnf;)Lcom/google/android/gms/internal/ads/zzgnc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgkx;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghv;->zza()Lcom/google/android/gms/internal/ads/zzghu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmz;->zzf()Lcom/google/android/gms/internal/ads/zzgor;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzghu;->zza(Lcom/google/android/gms/internal/ads/zzgvj;)Lcom/google/android/gms/internal/ads/zzgvj;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmw;->zzc()Lcom/google/android/gms/internal/ads/zzgmv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(Lcom/google/android/gms/internal/ads/zzgnc;)Lcom/google/android/gms/internal/ads/zzgmv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgmv;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;)Lcom/google/android/gms/internal/ads/zzgmv;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgmv;->zzc(I)Lcom/google/android/gms/internal/ads/zzgmv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtv;->zzal()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmw;

    return-object p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzgsr;)Lcom/google/android/gms/internal/ads/zzgvj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgul;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtl;->zza()Lcom/google/android/gms/internal/ads/zzgtl;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgmz;->zzd(Lcom/google/android/gms/internal/ads/zzgsr;Lcom/google/android/gms/internal/ads/zzgtl;)Lcom/google/android/gms/internal/ads/zzgmz;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggh;->zze:Lcom/google/android/gms/internal/ads/zzgdb;

    const-string v2, "AES128_CTR_HMAC_SHA256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgcx;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcx;-><init>(Lcom/google/android/gms/internal/ads/zzgcw;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgcx;->zza(I)Lcom/google/android/gms/internal/ads/zzgcx;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgcx;->zzc(I)Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgcx;->zze(I)Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgcx;->zzd(I)Lcom/google/android/gms/internal/ads/zzgcx;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgcy;->zzc:Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgcx;->zzb(Lcom/google/android/gms/internal/ads/zzgcy;)Lcom/google/android/gms/internal/ads/zzgcx;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgcz;->zzc:Lcom/google/android/gms/internal/ads/zzgcz;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgcx;->zzf(Lcom/google/android/gms/internal/ads/zzgcz;)Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgcx;->zzg()Lcom/google/android/gms/internal/ads/zzgdb;

    move-result-object v1

    const-string v5, "AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggh;->zzf:Lcom/google/android/gms/internal/ads/zzgdb;

    const-string v5, "AES256_CTR_HMAC_SHA256"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcx;-><init>(Lcom/google/android/gms/internal/ads/zzgcw;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgcx;->zza(I)Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgcx;->zzc(I)Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgcx;->zze(I)Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgcx;->zzd(I)Lcom/google/android/gms/internal/ads/zzgcx;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgcy;->zzc:Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcx;->zzb(Lcom/google/android/gms/internal/ads/zzgcy;)Lcom/google/android/gms/internal/ads/zzgcx;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgcz;->zzc:Lcom/google/android/gms/internal/ads/zzgcz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcx;->zzf(Lcom/google/android/gms/internal/ads/zzgcz;)Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgcx;->zzg()Lcom/google/android/gms/internal/ads/zzgdb;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzgvj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgdj;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghv;->zza()Lcom/google/android/gms/internal/ads/zzghu;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmz;->zze()Lcom/google/android/gms/internal/ads/zzgnf;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdi;->zze(Lcom/google/android/gms/internal/ads/zzgnf;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkx;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghv;->zza()Lcom/google/android/gms/internal/ads/zzghu;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmz;->zzf()Lcom/google/android/gms/internal/ads/zzgor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghu;->zzd(Lcom/google/android/gms/internal/ads/zzgvj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmz;->zze()Lcom/google/android/gms/internal/ads/zzgnf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnf;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrv;->zza(I)V

    return-void
.end method