.class final Lcom/google/android/gms/internal/ads/zzxh;
.super Lcom/google/android/gms/internal/ads/zzxe;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzww;

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Z

.field private final zzn:I

.field private final zzo:Z

.field private final zzp:Z

.field private final zzq:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzcx;ILcom/google/android/gms/internal/ads/zzww;IIZ)V
    .locals 4

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxe;-><init>(ILcom/google/android/gms/internal/ads/zzcx;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzf:Lcom/google/android/gms/internal/ads/zzww;

    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzww;->zzJ:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    :goto_0
    iget-boolean p6, p4, Lcom/google/android/gms/internal/ads/zzww;->zzI:Z

    const/high16 p6, -0x40800000    # -1.0f

    const/4 v0, -0x1

    if-eqz p7, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    if-eq v2, v0, :cond_1

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzww;->zzd:I

    :cond_1
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    if-eq v2, v0, :cond_2

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzww;->zze:I

    :cond_2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    cmpl-float v3, v2, p6

    if-eqz v3, :cond_3

    iget v3, p4, Lcom/google/android/gms/internal/ads/zzww;->zzf:I

    const/high16 v3, 0x4f000000

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    :cond_3
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    if-eq v1, v0, :cond_4

    iget v1, p4, Lcom/google/android/gms/internal/ads/zzww;->zzg:I

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zze:Z

    if-eqz p7, :cond_a

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget v1, p7, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    if-eq v1, v0, :cond_6

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzww;->zzh:I

    if-ltz v1, :cond_a

    :cond_6
    iget v1, p7, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    if-eq v1, v0, :cond_7

    iget v2, p4, Lcom/google/android/gms/internal/ads/zzww;->zzi:I

    if-ltz v1, :cond_a

    :cond_7
    iget v1, p7, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    cmpl-float p6, v1, p6

    if-eqz p6, :cond_8

    iget p6, p4, Lcom/google/android/gms/internal/ads/zzww;->zzj:I

    const/4 p6, 0x0

    cmpl-float p6, v1, p6

    if-ltz p6, :cond_a

    :cond_8
    iget p6, p7, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    if-eq p6, v0, :cond_9

    iget p7, p4, Lcom/google/android/gms/internal/ads/zzww;->zzk:I

    if-ltz p6, :cond_a

    :cond_9
    const/4 p6, 0x1

    goto :goto_2

    :cond_a
    const/4 p6, 0x0

    :goto_2
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzg:Z

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzxi;->zzn(IZ)Z

    move-result p6

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Z

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget p7, p6, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzi:I

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzam;->zza()I

    move-result p6

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzj:I

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget p6, p6, Lcom/google/android/gms/internal/ads/zzam;->zzf:I

    iget p6, p4, Lcom/google/android/gms/internal/ads/zzww;->zzp:I

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p6

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzl:I

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget p6, p6, Lcom/google/android/gms/internal/ads/zzam;->zzf:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzm:Z

    const/4 p6, 0x0

    :goto_3
    iget-object p7, p4, Lcom/google/android/gms/internal/ads/zzww;->zzo:Lcom/google/android/gms/internal/ads/zzfvs;

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzfvs;->size()I

    move-result p7

    if-ge p6, p7, :cond_c

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget-object p7, p7, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    if-eqz p7, :cond_b

    iget-object v1, p4, Lcom/google/android/gms/internal/ads/zzww;->zzo:Lcom/google/android/gms/internal/ads/zzfvs;

    invoke-virtual {v1, p6}, Lcom/google/android/gms/internal/ads/zzfvs;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 p6, p6, 0x1

    goto :goto_3

    :cond_c
    const p6, 0x7fffffff

    :goto_4
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzk:I

    and-int/lit16 p4, p5, 0x180

    const/16 p6, 0x80

    if-ne p4, p6, :cond_d

    const/4 p4, 0x1

    goto :goto_5

    :cond_d
    const/4 p4, 0x0

    :goto_5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzo:Z

    and-int/lit8 p4, p5, 0x40

    const/16 p6, 0x40

    if-ne p4, p6, :cond_e

    const/4 p4, 0x1

    goto :goto_6

    :cond_e
    const/4 p4, 0x0

    :goto_6
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzp:Z

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget-object p6, p4, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const/4 p7, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-nez p6, :cond_f

    :goto_7
    const/4 p7, 0x0

    goto :goto_a

    :cond_f
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v3, "video/x-vnd.on2.vp9"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_10

    const/4 p6, 0x3

    goto :goto_9

    :sswitch_1
    const-string v3, "video/avc"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_10

    const/4 p6, 0x4

    goto :goto_9

    :sswitch_2
    const-string v3, "video/hevc"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_10

    const/4 p6, 0x2

    goto :goto_9

    :sswitch_3
    const-string v3, "video/av01"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_10

    const/4 p6, 0x1

    goto :goto_9

    :sswitch_4
    const-string v3, "video/dolby-vision"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_10

    const/4 p6, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 p6, -0x1

    :goto_9
    if-eqz p6, :cond_14

    if-eq p6, p2, :cond_15

    if-eq p6, v2, :cond_13

    if-eq p6, v1, :cond_12

    if-eq p6, p7, :cond_11

    goto :goto_7

    :cond_11
    const/4 p7, 0x1

    goto :goto_a

    :cond_12
    const/4 p7, 0x2

    goto :goto_a

    :cond_13
    const/4 p7, 0x3

    goto :goto_a

    :cond_14
    const/4 p7, 0x5

    :cond_15
    :goto_a
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzq:I

    iget p6, p4, Lcom/google/android/gms/internal/ads/zzam;->zzf:I

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzf:Lcom/google/android/gms/internal/ads/zzww;

    iget-boolean p7, p6, Lcom/google/android/gms/internal/ads/zzww;->zzR:Z

    invoke-static {p5, p7}, Lcom/google/android/gms/internal/ads/zzxi;->zzn(IZ)Z

    move-result p7

    if-nez p7, :cond_16

    goto :goto_b

    :cond_16
    iget-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzxh;->zze:Z

    if-nez p7, :cond_17

    iget-boolean v1, p6, Lcom/google/android/gms/internal/ads/zzww;->zzH:Z

    if-nez v1, :cond_17

    goto :goto_b

    :cond_17
    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzxi;->zzn(IZ)Z

    move-result p3

    if-eqz p3, :cond_18

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzg:Z

    if-eqz p3, :cond_18

    if-eqz p7, :cond_18

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    if-eq p3, v0, :cond_18

    iget-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzww;->zzB:Z

    iget-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzww;->zzA:Z

    and-int/2addr p1, p5

    if-eqz p1, :cond_18

    const/4 p3, 0x2

    goto :goto_b

    :cond_18
    const/4 p3, 0x1

    :goto_b
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzn:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzxh;Lcom/google/android/gms/internal/ads/zzxh;)I
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxi;->zze()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxi;->zze()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxb;->zza()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvh;->zzj()Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzf:Lcom/google/android/gms/internal/ads/zzww;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzww;->zzA:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxi;->zzf()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzi:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzi:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvh;->zza()I

    move-result p0

    return p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzxh;Lcom/google/android/gms/internal/ads/zzxh;)I
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvh;->zzj()Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvh;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzl:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzl:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb(II)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzm:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzm:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfvh;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zze:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxh;->zze:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvh;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzg:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzg:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvh;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxb;->zzc()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfxb;->zza()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzo:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzo:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvh;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzp:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzp:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfvh;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzq:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzq:I

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb(II)Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvh;->zza()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzn:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzxe;)Z
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzf:Lcom/google/android/gms/internal/ads/zzww;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzww;->zzK:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzo:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzo:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzp:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzxh;->zzp:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
