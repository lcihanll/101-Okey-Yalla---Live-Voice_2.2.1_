.class public final Lcom/google/android/gms/internal/ads/zzgzx;
.super Lcom/google/android/gms/internal/ads/zzgtz;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgvk;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgzx;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgsr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzx;->zzb:Lcom/google/android/gms/internal/ads/zzgzx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgzx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgtz;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzx;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsr;->zzb:Lcom/google/android/gms/internal/ads/zzgsr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzx;->zzf:Lcom/google/android/gms/internal/ads/zzgsr;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzgzx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzx;->zzb:Lcom/google/android/gms/internal/ads/zzgzx;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgzx;->zzb:Lcom/google/android/gms/internal/ads/zzgzx;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzw;-><init>(Lcom/google/android/gms/internal/ads/zzgxt;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgzx;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzd"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgzx;->zzb:Lcom/google/android/gms/internal/ads/zzgzx;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u100a\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzx;->zzaR(Lcom/google/android/gms/internal/ads/zzgvj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method