.class public final Lcom/google/android/gms/internal/ads/zzajj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaje;


# static fields
.field private static final zza:[F


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzakt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfb;

.field private final zzd:[Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzajh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzajt;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaji;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/ads/zzacs;

.field private zzk:Z

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajj;->zza:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzajj;-><init>(Lcom/google/android/gms/internal/ads/zzakt;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakt;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:Lcom/google/android/gms/internal/ads/zzakt;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzajh;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzajh;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzajt;

    const/16 v1, 0xb2

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzajt;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzajt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Lcom/google/android/gms/internal/ads/zzfb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfb;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfb;->zzc()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfb;->zzI()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfb;->zza()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzacs;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfb;->zza()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzr(Lcom/google/android/gms/internal/ads/zzfb;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:[Z

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfy;->zza([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zza([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaji;->zza([BII)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajt;->zza([BII)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfb;->zzI()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:Z

    if-nez v9, :cond_d

    if-lez v8, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzajh;->zza([BII)V

    :cond_2
    if-gez v8, :cond_3

    neg-int v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzajh;->zzc(II)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzacs;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzajh;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/lang/String;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[B

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzajh;->zza:I

    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lcom/google/android/gms/internal/ads/zzfa;

    array-length v10, v12

    invoke-direct {v15, v12, v10}, Lcom/google/android/gms/internal/ads/zzfa;-><init>([BI)V

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzfa;->zzm(I)V

    const/4 v10, 0x4

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzm(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    const/16 v13, 0x8

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzn()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_4

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    :cond_4
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzd(I)I

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "Invalid aspect ratio"

    const-string v13, "H263Reader"

    const/16 v6, 0xf

    if-ne v10, v6, :cond_6

    const/16 v6, 0x8

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzfa;->zzd(I)I

    move-result v10

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzfa;->zzd(I)I

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    int-to-float v10, v10

    int-to-float v6, v6

    div-float v16, v10, v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x7

    if-ge v10, v6, :cond_7

    sget-object v6, Lcom/google/android/gms/internal/ads/zzajj;->zza:[F

    aget v16, v6, v10

    :goto_2
    move/from16 v6, v16

    goto :goto_4

    :cond_7
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzn()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_8

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    const/4 v10, 0x1

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzn()Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0xf

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    const/4 v11, 0x3

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    const/16 v11, 0xb

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    :cond_8
    const/4 v10, 0x2

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzd(I)I

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "Unhandled video object layer shape"

    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    const/16 v10, 0x10

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzd(I)I

    move-result v10

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzn()Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez v10, :cond_a

    const-string v10, "Invalid vop_increment_time_resolution"

    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_5
    if-lez v10, :cond_b

    shr-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfa;->zzl(I)V

    :cond_c
    :goto_6
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    const/16 v10, 0xd

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzd(I)I

    move-result v11

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfa;->zzd(I)I

    move-result v10

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfa;->zzk()V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    const-string v14, "video/mp4v-es"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzak;->zzH(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzR(F)Lcom/google/android/gms/internal/ads/zzak;

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v6

    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:Z

    :cond_d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzaji;->zza([BII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzajt;

    if-lez v8, :cond_e

    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzajt;->zza([BII)V

    const/4 v10, 0x0

    goto :goto_7

    :cond_e
    neg-int v10, v8

    :goto_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzajt;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzajt;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzajt;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzb:I

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzb([BI)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Lcom/google/android/gms/internal/ads/zzfb;

    sget v8, Lcom/google/android/gms/internal/ads/zzfk;->zza:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzajt;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzajt;->zza:[B

    invoke-virtual {v6, v8, v1}, Lcom/google/android/gms/internal/ads/zzfb;->zzE([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:Lcom/google/android/gms/internal/ads/zzakt;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {v1, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzakt;->zza(JLcom/google/android/gms/internal/ads/zzfb;)V

    :cond_f
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfb;->zzI()[B

    move-result-object v5

    add-int/lit8 v6, v4, 0x2

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzajt;->zzc(I)V

    :cond_10
    const/16 v5, 0xb2

    :cond_11
    sub-int v1, v2, v4

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:Z

    invoke-virtual {v4, v8, v9, v1, v6}, Lcom/google/android/gms/internal/ads/zzaji;->zzb(JIZ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:J

    invoke-virtual {v1, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzaji;->zzc(IJ)V

    move-object/from16 v6, p1

    move v1, v7

    goto/16 :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzabp;Lcom/google/android/gms/internal/ads/zzakq;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzakq;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzakq;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzakq;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzabp;->zzw(II)Lcom/google/android/gms/internal/ads/zzacs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzacs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzacs;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:Lcom/google/android/gms/internal/ads/zzakt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakt;->zzb(Lcom/google/android/gms/internal/ads/zzabp;Lcom/google/android/gms/internal/ads/zzakq;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:J

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaji;->zzb(JIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaji;->zzd()V

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:J

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzf([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajh;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Lcom/google/android/gms/internal/ads/zzaji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaji;->zzd()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzajt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajt;->zzb()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:J

    return-void
.end method