.class public final Lcom/google/android/gms/internal/ads/zzbaj;
.super Lcom/google/android/gms/internal/ads/zzgtz;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgvk;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbaj;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgui;

.field private zzf:I

.field private zzg:I

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:J

.field private zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbaj;->zzb:Lcom/google/android/gms/internal/ads/zzbaj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbaj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgtz;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbaj;->zzaN()Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zze:Lcom/google/android/gms/internal/ads/zzgui;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbaj;->zzb:Lcom/google/android/gms/internal/ads/zzbaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaA()Lcom/google/android/gms/internal/ads/zzgtv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbaf;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzbaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbaj;->zzb:Lcom/google/android/gms/internal/ads/zzbaj;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbaj;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zze:Lcom/google/android/gms/internal/ads/zzgui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaO(Lcom/google/android/gms/internal/ads/zzgui;)Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zze:Lcom/google/android/gms/internal/ads/zzgui;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zze:Lcom/google/android/gms/internal/ads/zzgui;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgsa;->zzav(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbaj;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzf:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbaj;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzg:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzbaj;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzh:J

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzbaj;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzbaj;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzbaj;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzk:J

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzbaj;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbaj;->zzl:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbaj;->zzb:Lcom/google/android/gms/internal/ads/zzbaj;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbaf;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbaf;-><init>(Lcom/google/android/gms/internal/ads/zzayc;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbaj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbaj;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-class p2, Lcom/google/android/gms/internal/ads/zzbae;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbaj;->zzb:Lcom/google/android/gms/internal/ads/zzbaj;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u001b\u0002\u1004\u0000\u0003\u1004\u0001\u0004\u1002\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u1002\u0005\u0008\u1004\u0006"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbaj;->zzaR(Lcom/google/android/gms/internal/ads/zzgvj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
