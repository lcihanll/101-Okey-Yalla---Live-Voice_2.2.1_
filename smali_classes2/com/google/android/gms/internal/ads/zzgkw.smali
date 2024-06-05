.class final Lcom/google/android/gms/internal/ads/zzgkw;
.super Lcom/google/android/gms/internal/ads/zzghu;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgkx;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkw;->zza:Lcom/google/android/gms/internal/ads/zzgkx;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgvj;)Lcom/google/android/gms/internal/ads/zzgvj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgor;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoo;->zzc()Lcom/google/android/gms/internal/ads/zzgon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgon;->zzc(I)Lcom/google/android/gms/internal/ads/zzgon;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgor;->zzg()Lcom/google/android/gms/internal/ads/zzgou;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgon;->zzb(Lcom/google/android/gms/internal/ads/zzgou;)Lcom/google/android/gms/internal/ads/zzgon;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgor;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgjf;->zzb(I)[B

    move-result-object p1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgsr;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgon;->zza(Lcom/google/android/gms/internal/ads/zzgsr;)Lcom/google/android/gms/internal/ads/zzgon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtv;->zzal()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgoo;

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgor;->zzf(Lcom/google/android/gms/internal/ads/zzgsr;Lcom/google/android/gms/internal/ads/zzgtl;)Lcom/google/android/gms/internal/ads/zzgor;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzglq;->zza:Lcom/google/android/gms/internal/ads/zzgld;

    const-string v2, "HMAC_SHA256_128BITTAG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgky;)V

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgkz;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgkz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzglb;->zzd:Lcom/google/android/gms/internal/ads/zzglb;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzd(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgla;->zzc:Lcom/google/android/gms/internal/ads/zzgla;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgla;)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkz;->zze()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v1

    const-string v5, "HMAC_SHA256_128BITTAG_RAW"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgky;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzglb;->zza:Lcom/google/android/gms/internal/ads/zzglb;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzd(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgla;->zzc:Lcom/google/android/gms/internal/ads/zzgla;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgla;)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkz;->zze()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v1

    const-string v5, "HMAC_SHA256_256BITTAG"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgky;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzglb;->zzd:Lcom/google/android/gms/internal/ads/zzglb;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzd(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgla;->zzc:Lcom/google/android/gms/internal/ads/zzgla;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgla;)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkz;->zze()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v1

    const-string v5, "HMAC_SHA256_256BITTAG_RAW"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgky;)V

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgkz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzglb;->zza:Lcom/google/android/gms/internal/ads/zzglb;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzgkz;->zzd(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgla;->zze:Lcom/google/android/gms/internal/ads/zzgla;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgla;)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkz;->zze()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v1

    const-string v6, "HMAC_SHA512_128BITTAG"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgky;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgkz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzglb;->zzd:Lcom/google/android/gms/internal/ads/zzglb;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgkz;->zzd(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgla;->zze:Lcom/google/android/gms/internal/ads/zzgla;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgla;)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkz;->zze()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v1

    const-string v4, "HMAC_SHA512_128BITTAG_RAW"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgky;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzglb;->zza:Lcom/google/android/gms/internal/ads/zzglb;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgkz;->zzd(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgla;->zze:Lcom/google/android/gms/internal/ads/zzgla;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgla;)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkz;->zze()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v1

    const-string v4, "HMAC_SHA512_256BITTAG"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgky;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzglb;->zzd:Lcom/google/android/gms/internal/ads/zzglb;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zzd(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgla;->zze:Lcom/google/android/gms/internal/ads/zzgla;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgla;)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkz;->zze()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v1

    const-string v3, "HMAC_SHA512_256BITTAG_RAW"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzglq;->zzd:Lcom/google/android/gms/internal/ads/zzgld;

    const-string v3, "HMAC_SHA512_512BITTAG"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;-><init>(Lcom/google/android/gms/internal/ads/zzgky;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgkz;->zzc(I)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzglb;->zzd:Lcom/google/android/gms/internal/ads/zzglb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;->zzd(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgkz;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgla;->zze:Lcom/google/android/gms/internal/ads/zzgla;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgkz;->zza(Lcom/google/android/gms/internal/ads/zzgla;)Lcom/google/android/gms/internal/ads/zzgkz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgkz;->zze()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object v1

    const-string v2, "HMAC_SHA512_512BITTAG_RAW"

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgor;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgor;->zza()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgor;->zzg()Lcom/google/android/gms/internal/ads/zzgou;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgkx;->zzg(Lcom/google/android/gms/internal/ads/zzgou;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
