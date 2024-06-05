.class public final synthetic Lcom/google/android/gms/internal/ads/zzgdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgio;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgdc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgdc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgdc;->zza:Lcom/google/android/gms/internal/ads/zzgdc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgbw;)Lcom/google/android/gms/internal/ads/zzgjh;
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdb;

    sget v0, Lcom/google/android/gms/internal/ads/zzgdg;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zza()Lcom/google/android/gms/internal/ads/zzgpd;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpd;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgpd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmz;->zza()Lcom/google/android/gms/internal/ads/zzgmy;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnf;->zzc()Lcom/google/android/gms/internal/ads/zzgne;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgni;->zzc()Lcom/google/android/gms/internal/ads/zzgnh;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzc()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgnh;->zza(I)Lcom/google/android/gms/internal/ads/zzgnh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgtv;->zzal()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgni;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(Lcom/google/android/gms/internal/ads/zzgni;)Lcom/google/android/gms/internal/ads/zzgne;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zza()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgne;->zza(I)Lcom/google/android/gms/internal/ads/zzgne;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgtv;->zzal()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgnf;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgmy;->zza(Lcom/google/android/gms/internal/ads/zzgnf;)Lcom/google/android/gms/internal/ads/zzgmy;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgor;->zzc()Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgou;->zzd()Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzd()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zzb(I)Lcom/google/android/gms/internal/ads/zzgot;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zze()Lcom/google/android/gms/internal/ads/zzgcy;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgcy;->zza:Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgol;->zzb:Lcom/google/android/gms/internal/ads/zzgol;

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgcy;->zzb:Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgol;->zzf:Lcom/google/android/gms/internal/ads/zzgol;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgcy;->zzc:Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgol;->zzd:Lcom/google/android/gms/internal/ads/zzgol;

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgcy;->zzd:Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgol;->zzc:Lcom/google/android/gms/internal/ads/zzgol;

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgcy;->zze:Lcom/google/android/gms/internal/ads/zzgcy;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgol;->zze:Lcom/google/android/gms/internal/ads/zzgol;

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Lcom/google/android/gms/internal/ads/zzgol;)Lcom/google/android/gms/internal/ads/zzgot;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgtv;->zzal()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgou;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgou;)Lcom/google/android/gms/internal/ads/zzgoq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzb()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zza(I)Lcom/google/android/gms/internal/ads/zzgoq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgtv;->zzal()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgor;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgmy;->zzb(Lcom/google/android/gms/internal/ads/zzgor;)Lcom/google/android/gms/internal/ads/zzgmy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtv;->zzal()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgmz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsa;->zzau()Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpd;->zzc(Lcom/google/android/gms/internal/ads/zzgsr;)Lcom/google/android/gms/internal/ads/zzgpd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzf()Lcom/google/android/gms/internal/ads/zzgcz;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcz;->zza:Lcom/google/android/gms/internal/ads/zzgcz;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgqf;->zzb:Lcom/google/android/gms/internal/ads/zzgqf;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcz;->zzb:Lcom/google/android/gms/internal/ads/zzgcz;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgqf;->zze:Lcom/google/android/gms/internal/ads/zzgqf;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcz;->zzc:Lcom/google/android/gms/internal/ads/zzgcz;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgqf;->zzd:Lcom/google/android/gms/internal/ads/zzgqf;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpd;->zza(Lcom/google/android/gms/internal/ads/zzgqf;)Lcom/google/android/gms/internal/ads/zzgpd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtv;->zzal()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgjd;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to serialize HashType "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
