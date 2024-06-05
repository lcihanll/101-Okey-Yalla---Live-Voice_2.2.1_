.class public final Lcom/google/android/gms/internal/ads/zzajb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakp;


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvs;->zzl()Lcom/google/android/gms/internal/ads/zzfvs;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zza:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajb;->zza:Ljava/util/List;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajb;->zzd(Lcom/google/android/gms/internal/ads/zzako;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakt;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajb;->zzd(Lcom/google/android/gms/internal/ads/zzako;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzakt;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzako;)Ljava/util/List;
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzako;->zzd:[B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfb;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajb;->zza:Ljava/util/List;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zza()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzl()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzl()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzc()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzl()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    const/4 v5, 0x3

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfsi;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfb;->zzy(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzl()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_1

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_3

    :cond_1
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzl()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfb;->zzH(I)V

    if-eqz v7, :cond_3

    and-int/lit8 v7, v10, 0x40

    sget v10, Lcom/google/android/gms/internal/ads/zzdz;->zza:I

    if-eqz v7, :cond_2

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_4

    :cond_2
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    :goto_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_3
    const/4 v7, 0x0

    :goto_5
    new-instance v8, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzw(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfb;->zzG(I)V

    goto/16 :goto_0

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakr;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x24

    if-eq p1, v0, :cond_6

    const/16 v0, 0x59

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_4

    const/16 v0, 0xac

    if-eq p1, v0, :cond_3

    const/16 v0, 0x101

    if-eq p1, v0, :cond_2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_a

    const/16 v0, 0x81

    if-eq p1, v0, :cond_1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzako;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzajr;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p2

    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzajb;->zzc(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakt;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzajj;-><init>(Lcom/google/android/gms/internal/ads/zzakt;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p1

    :pswitch_2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzako;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(ZLjava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p2

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzake;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaju;

    const-string v0, "application/x-scte35"

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzaju;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Lcom/google/android/gms/internal/ads/zzakd;)V

    return-object p1

    :cond_1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzako;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p2

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzake;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaju;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzaju;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Lcom/google/android/gms/internal/ads/zzakd;)V

    return-object p1

    :cond_3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzako;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaix;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaix;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p2

    :cond_4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzako;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p2

    :cond_5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzako;->zzc:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Ljava/util/List;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p2

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajp;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakf;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(Lcom/google/android/gms/internal/ads/zzakf;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajn;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakf;

    move-result-object p2

    invoke-direct {v0, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzajn;-><init>(Lcom/google/android/gms/internal/ads/zzakf;ZZ)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p1

    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzajq;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p1

    :cond_9
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzako;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p2

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzajb;->zzc(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakt;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzajg;-><init>(Lcom/google/android/gms/internal/ads/zzakt;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
