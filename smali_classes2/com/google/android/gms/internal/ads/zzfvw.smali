.class public final Lcom/google/android/gms/internal/ads/zzfvw;
.super Lcom/google/android/gms/internal/ads/zzfvl;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field zzd:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private zze:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfvl;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvl;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfvx;->zzh(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfvm;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvw;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfvw;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfvw;
    .locals 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvx;->zzh(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    array-length v2, v1

    if-gt v0, v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvk;->zza(I)I

    move-result v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    and-int/2addr v1, v3

    aget-object v3, v4, v1

    if-nez v3, :cond_0

    aput-object p1, v4, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zze:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zze:I

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvl;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfvl;

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvl;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfvl;

    return-object p0
.end method

.method public final zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfvw;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfvw;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfvw;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvl;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfvm;

    :cond_1
    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfvx;
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzb:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvx;->zzh(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zza:[Ljava/lang/Object;

    array-length v3, v2

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfvx;->zzq(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :cond_0
    move-object v4, v2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxi;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zze:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    array-length v2, v6

    add-int/lit8 v7, v2, -0x1

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzb:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfxi;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zza:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfvx;->zzk(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfvx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvx;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzb:I

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzc:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zzd:[Ljava/lang/Object;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvw;->zza:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfxp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfxp;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfxi;->zza:Lcom/google/android/gms/internal/ads/zzfxi;

    return-object v0
.end method