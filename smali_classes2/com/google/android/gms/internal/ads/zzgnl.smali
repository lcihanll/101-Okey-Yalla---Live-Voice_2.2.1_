.class public final Lcom/google/android/gms/internal/ads/zzgnl;
.super Lcom/google/android/gms/internal/ads/zzgtz;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgvk;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgnl;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzgnr;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgsr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgnl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgnl;->zzb:Lcom/google/android/gms/internal/ads/zzgnl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgtz;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsr;->zzb:Lcom/google/android/gms/internal/ads/zzgsr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzg:Lcom/google/android/gms/internal/ads/zzgsr;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgnk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgnl;->zzb:Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaA()Lcom/google/android/gms/internal/ads/zzgtv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgnk;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzgnl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgnl;->zzb:Lcom/google/android/gms/internal/ads/zzgnl;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzgsr;Lcom/google/android/gms/internal/ads/zzgtl;)Lcom/google/android/gms/internal/ads/zzgnl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgul;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgnl;->zzb:Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaG(Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzgsr;Lcom/google/android/gms/internal/ads/zzgtl;)Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgnl;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzgnl;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zze:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgnr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzf:Lcom/google/android/gms/internal/ads/zzgnr;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzd:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgsr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzg:Lcom/google/android/gms/internal/ads/zzgsr;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zze:I

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgnl;->zzb:Lcom/google/android/gms/internal/ads/zzgnl;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgnk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgnk;-><init>(Lcom/google/android/gms/internal/ads/zzgnj;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgnl;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzd"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgnl;->zzb:Lcom/google/android/gms/internal/ads/zzgnl;

    const-string p3, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzaR(Lcom/google/android/gms/internal/ads/zzgvj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgnr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzf:Lcom/google/android/gms/internal/ads/zzgnr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnr;->zze()Lcom/google/android/gms/internal/ads/zzgnr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgsr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnl;->zzg:Lcom/google/android/gms/internal/ads/zzgsr;

    return-object v0
.end method
