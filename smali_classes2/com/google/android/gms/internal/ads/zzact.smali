.class public final Lcom/google/android/gms/internal/ads/zzact;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zza:[B

.field private zzb:Z

.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzacr;)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:I

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzd:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzact;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzact;->zzf:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzact;->zzg:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzacs;->zzt(JIIILcom/google/android/gms/internal/ads/zzacr;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:I

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:I

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacs;JIIILcom/google/android/gms/internal/ads/zzacr;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzg:I

    add-int v1, p5, p6

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:I

    if-nez v0, :cond_1

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzd:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzact;->zze:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzf:I

    :cond_1
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzf:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzf:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzact;->zzg:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_2

    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzact;->zza(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzacr;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzabn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zza:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabn;->zzh([BII)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzabn;->zzj()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzact;->zza:[B

    sget v0, Lcom/google/android/gms/internal/ads/zzaan;->zza:I

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xfe

    const/16 v0, 0xba

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:Z

    :cond_2
    :goto_0
    return-void
.end method
