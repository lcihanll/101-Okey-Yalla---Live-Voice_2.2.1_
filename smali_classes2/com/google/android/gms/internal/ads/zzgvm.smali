.class final Lcom/google/android/gms/internal/ads/zzgvm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgwc<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgvj;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/ads/zzgux;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzgwt;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzgtm;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzgvo;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzgve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvm;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxd;->zzi()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzgvj;IZ[IIILcom/google/android/gms/internal/ads/zzgvo;Lcom/google/android/gms/internal/ads/zzgux;Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgtm;Lcom/google/android/gms/internal/ads/zzgve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/ads/zzgtz;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzi:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/ads/zzgtm;->zzh(Lcom/google/android/gms/internal/ads/zzgvj;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzj:[I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzk:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzl:I

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzp:Lcom/google/android/gms/internal/ads/zzgvo;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzg:Lcom/google/android/gms/internal/ads/zzgvj;

    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzq:Lcom/google/android/gms/internal/ads/zzgve;

    return-void
.end method

.method private final zzA(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzQ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzB(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzQ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private static zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzD(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzE(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzQ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgwc;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzQ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgwc;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/ads/zzgwc;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    aget p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzF(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, p3

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzQ(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgwc;->zze()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgwc;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzgwc;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    aget p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgvu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzM(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgvu;->zzs()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzi:Z

    if-eqz p2, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgvu;->zzr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgvu;->zzp()Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zzH(Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzI(Ljava/lang/Object;II)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzJ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzK(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzM(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzN(Ljava/lang/Object;I)Z
    .locals 9

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgsr;->zzb:Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgsr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzgsr;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgsr;->zzb:Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgsr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzz(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzc(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzb(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_13

    return v5

    :cond_13
    return v4

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzO(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgwc;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzgwc;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzQ(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgtz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaY()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzR(Ljava/lang/Object;II)Z
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzS(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgth;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzgth;->zzF(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzgth;->zzd(ILcom/google/android/gms/internal/ads/zzgsr;)V

    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwu;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgtz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzc:Lcom/google/android/gms/internal/ads/zzgwu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwu;->zzc()Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwu;->zzf()Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzc:Lcom/google/android/gms/internal/ads/zzgwu;

    :cond_0
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgvg;Lcom/google/android/gms/internal/ads/zzgvo;Lcom/google/android/gms/internal/ads/zzgux;Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgtm;Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzgvm;
    .locals 33

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgvt;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvt;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgvm;->zza:[I

    move-object/from16 v17, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move-object/from16 v17, v7

    move v13, v9

    move/from16 v18, v14

    move v7, v4

    move v14, v10

    move v4, v15

    :goto_a
    sget-object v9, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvt;->zze()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()Lcom/google/android/gms/internal/ads/zzgvj;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    add-int v19, v18, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v22, v18

    move/from16 v23, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v25, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v25

    goto :goto_c

    :cond_15
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_d

    :cond_16
    move/from16 v3, v24

    :goto_d
    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_18

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v25, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_17

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v3, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_e

    :cond_17
    shl-int v8, v8, v24

    or-int/2addr v3, v8

    move/from16 v8, v25

    goto :goto_f

    :cond_18
    move/from16 v8, v24

    :goto_f
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_19

    add-int/lit8 v6, v20, 0x1

    aput v21, v17, v20

    move/from16 v20, v6

    :cond_19
    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v5, v3, 0x800

    move/from16 v26, v2

    const/16 v2, 0x33

    if-lt v6, v2, :cond_23

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v8, v2, :cond_1b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v30, 0xd

    move/from16 v32, v27

    move/from16 v27, v8

    move/from16 v8, v32

    :goto_10
    add-int/lit8 v31, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v2, :cond_1a

    and-int/lit16 v2, v8, 0x1fff

    shl-int v2, v2, v30

    or-int v27, v27, v2

    add-int/lit8 v30, v30, 0xd

    move/from16 v8, v31

    const v2, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v2, v8, v30

    or-int v8, v27, v2

    move/from16 v2, v31

    goto :goto_11

    :cond_1b
    move/from16 v2, v27

    :goto_11
    move/from16 v27, v2

    add-int/lit8 v2, v6, -0x33

    move/from16 v30, v14

    const/16 v14, 0x9

    if-eq v2, v14, :cond_1f

    const/16 v14, 0x11

    if-ne v2, v14, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v14, 0xc

    if-ne v2, v14, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvt;->zzc()I

    move-result v2

    const/4 v14, 0x1

    if-eq v2, v14, :cond_1e

    if-eqz v5, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v5, 0x0

    goto :goto_15

    :cond_1e
    :goto_12
    add-int/lit8 v2, v16, 0x1

    div-int/lit8 v24, v21, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v16, v10, v16

    aput-object v16, v12, v24

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v14, 0x1

    add-int/lit8 v2, v16, 0x1

    div-int/lit8 v24, v21, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    aget-object v14, v10, v16

    aput-object v14, v12, v28

    :goto_14
    move/from16 v16, v2

    :cond_20
    :goto_15
    add-int/2addr v8, v8

    aget-object v2, v10, v8

    instance-of v14, v2, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v10, v8

    :goto_16
    move/from16 v31, v13

    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    add-int/lit8 v8, v8, 0x1

    aget-object v13, v10, v8

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_22

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_22
    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/zzgvm;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v10, v8

    :goto_17
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v8, v13

    move-object/from16 v29, v1

    move/from16 v24, v8

    move/from16 v25, v27

    const/4 v8, 0x0

    move-object/from16 v27, v0

    goto/16 :goto_23

    :cond_23
    move/from16 v31, v13

    move/from16 v30, v14

    add-int/lit8 v2, v16, 0x1

    aget-object v13, v10, v16

    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/zzgvm;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v14, 0x9

    if-eq v6, v14, :cond_2d

    const/16 v14, 0x11

    if-ne v6, v14, :cond_24

    goto/16 :goto_1d

    :cond_24
    const/16 v14, 0x1b

    if-eq v6, v14, :cond_2c

    const/16 v14, 0x31

    if-ne v6, v14, :cond_25

    add-int/lit8 v14, v2, 0x1

    move-object/from16 v27, v0

    const/4 v0, 0x1

    goto :goto_1b

    :cond_25
    const/16 v14, 0xc

    if-eq v6, v14, :cond_29

    const/16 v14, 0x1e

    if-eq v6, v14, :cond_29

    const/16 v14, 0x2c

    if-ne v6, v14, :cond_26

    goto :goto_19

    :cond_26
    const/16 v14, 0x32

    if-ne v6, v14, :cond_28

    add-int/lit8 v14, v2, 0x1

    add-int/lit8 v27, v22, 0x1

    aput v21, v17, v22

    div-int/lit8 v22, v21, 0x3

    aget-object v2, v10, v2

    add-int v22, v22, v22

    aput-object v2, v12, v22

    if-eqz v5, :cond_27

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v2, v14, 0x1

    aget-object v14, v10, v14

    aput-object v14, v12, v22

    move/from16 v22, v27

    goto :goto_18

    :cond_27
    move v2, v14

    move/from16 v22, v27

    const/4 v5, 0x0

    :cond_28
    :goto_18
    move-object/from16 v27, v0

    const/4 v0, 0x1

    goto :goto_1e

    :cond_29
    :goto_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvt;->zzc()I

    move-result v14

    move-object/from16 v27, v0

    const/4 v0, 0x1

    if-eq v14, v0, :cond_2b

    if-eqz v5, :cond_2a

    goto :goto_1a

    :cond_2a
    const/4 v5, 0x0

    goto :goto_1e

    :cond_2b
    :goto_1a
    add-int/lit8 v14, v2, 0x1

    div-int/lit8 v24, v21, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v2, v10, v2

    aput-object v2, v12, v24

    goto :goto_1c

    :cond_2c
    move-object/from16 v27, v0

    const/4 v0, 0x1

    add-int/lit8 v14, v2, 0x1

    :goto_1b
    div-int/lit8 v24, v21, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v2, v10, v2

    aput-object v2, v12, v24

    :goto_1c
    move v2, v14

    goto :goto_1e

    :cond_2d
    :goto_1d
    move-object/from16 v27, v0

    const/4 v0, 0x1

    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v12, v14

    :goto_1e
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v14, v13

    and-int/lit16 v13, v3, 0x1000

    const v24, 0xfffff

    if-eqz v13, :cond_31

    const/16 v13, 0x11

    if-gt v6, v13, :cond_31

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v0, 0xd800

    if-lt v8, v0, :cond_2f

    and-int/lit16 v8, v8, 0x1fff

    const/16 v24, 0xd

    :goto_1f
    add-int/lit8 v25, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v0, :cond_2e

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v24

    or-int/2addr v8, v13

    add-int/lit8 v24, v24, 0xd

    move/from16 v13, v25

    goto :goto_1f

    :cond_2e
    shl-int v13, v13, v24

    or-int/2addr v8, v13

    goto :goto_20

    :cond_2f
    move/from16 v25, v13

    :goto_20
    add-int v13, v7, v7

    div-int/lit8 v24, v8, 0x20

    add-int v13, v13, v24

    aget-object v0, v10, v13

    move-object/from16 v29, v1

    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_21

    :cond_30
    check-cast v0, Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v10, v13

    :goto_21
    invoke-virtual {v9, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v8, v8, 0x20

    move/from16 v24, v1

    goto :goto_22

    :cond_31
    move-object/from16 v29, v1

    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_22
    const/16 v0, 0x12

    if-lt v6, v0, :cond_32

    const/16 v0, 0x31

    if-gt v6, v0, :cond_32

    add-int/lit8 v0, v23, 0x1

    aput v14, v17, v23

    move/from16 v23, v0

    :cond_32
    move/from16 v16, v2

    move v2, v14

    :goto_23
    add-int/lit8 v0, v21, 0x1

    aput v4, v11, v21

    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_33

    const/high16 v4, 0x20000000

    goto :goto_24

    :cond_33
    const/4 v4, 0x0

    :goto_24
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_34

    const/high16 v3, 0x10000000

    goto :goto_25

    :cond_34
    const/4 v3, 0x0

    :goto_25
    if-eqz v5, :cond_35

    const/high16 v5, -0x80000000

    goto :goto_26

    :cond_35
    const/4 v5, 0x0

    :goto_26
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    aput v2, v11, v0

    add-int/lit8 v21, v1, 0x1

    shl-int/lit8 v0, v8, 0x14

    or-int v0, v0, v24

    aput v0, v11, v1

    move/from16 v4, v25

    move/from16 v2, v26

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v14, v30

    move/from16 v13, v31

    const/4 v3, 0x0

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v27, v0

    move/from16 v31, v13

    move/from16 v30, v14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()Lcom/google/android/gms/internal/ads/zzgvj;

    move-result-object v14

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzgvt;->zzc()I

    move-result v15

    const/16 v16, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v31

    move/from16 v13, v30

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/ads/zzgvm;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzgvj;IZ[IIILcom/google/android/gms/internal/ads/zzgvo;Lcom/google/android/gms/internal/ads/zzgux;Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgtm;Lcom/google/android/gms/internal/ads/zzgve;)V

    return-object v0

    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwq;

    const/4 v0, 0x0

    throw v0
.end method

.method private static zzn(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzo(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzp(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzq(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzs(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzr(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzs(II)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static zzt(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzu(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzv(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzw(I)Lcom/google/android/gms/internal/ads/zzgud;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgud;

    return-object p1
.end method

.method private final zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwc;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgvr;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgvr;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget p4, p4, p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result p4

    const p5, 0xfffff

    and-int/2addr p4, p5

    int-to-long p4, p4

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzw(I)Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object p4

    if-nez p4, :cond_1

    return-object p3

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzz(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvc;

    const/4 p1, 0x0

    throw p1
.end method

.method private final zzz(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v8, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    const v9, 0xfffff

    const/4 v10, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v11, v2, :cond_1c

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v4

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    add-int/lit8 v13, v11, 0x2

    aget v14, v5, v11

    aget v5, v5, v13

    and-int v13, v5, v9

    const/16 v15, 0x11

    const/16 v16, 0x1

    if-gt v4, v15, :cond_2

    if-eq v13, v0, :cond_1

    if-ne v13, v9, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v13

    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_1
    move v1, v0

    move v0, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v16, v5

    move v13, v0

    move v15, v1

    goto :goto_2

    :cond_2
    move v13, v0

    move v15, v1

    const/4 v5, 0x0

    :goto_2
    and-int v0, v2, v9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgtr;->zzJ:Lcom/google/android/gms/internal/ads/zzgtr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtr;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgtr;->zzW:Lcom/google/android/gms/internal/ads/zzgtr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgtr;->zza()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzw(ILcom/google/android/gms/internal/ads/zzgvj;Lcom/google/android/gms/internal/ads/zzgwc;)I

    move-result v0

    goto/16 :goto_13

    :pswitch_1
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzB(J)I

    move-result v1

    goto/16 :goto_16

    :pswitch_2
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_16

    :pswitch_3
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_4
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_5
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzx(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_6
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_7
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgsr;

    sget v2, Lcom/google/android/gms/internal/ads/zzgtg;->zzf:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_14

    :pswitch_8
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;)I

    move-result v0

    goto/16 :goto_13

    :pswitch_9
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzgsr;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgsr;

    sget v2, Lcom/google/android/gms/internal/ads/zzgtg;->zzf:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_14

    :cond_4
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzz(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_a
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_15

    :pswitch_b
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_c
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_d
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzx(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_e
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzB(J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_f
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzB(J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_10
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_11
    invoke-direct {v6, v7, v14, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_12
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzz(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvd;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgvc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvd;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_19

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    throw v3

    :pswitch_13
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v3, v2, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-static {v14, v5, v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzw(ILcom/google/android/gms/internal/ads/zzgvj;Lcom/google/android/gms/internal/ads/zzgwc;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/2addr v12, v4

    goto/16 :goto_19

    :pswitch_14
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzj(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzi(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_16
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_17
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_18
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zza(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_19
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzk(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_1a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_1b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_1c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_5

    :pswitch_1d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto :goto_5

    :pswitch_1e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzl(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto :goto_5

    :pswitch_1f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzg(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto :goto_5

    :pswitch_20
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto :goto_5

    :pswitch_21
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    :goto_5
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_6
    add-int/2addr v12, v1

    goto/16 :goto_19

    :pswitch_22
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_9
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzj(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    :goto_8
    mul-int v1, v1, v2

    goto/16 :goto_16

    :pswitch_23
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzi(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    goto :goto_8

    :pswitch_24
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzgwe;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    :pswitch_25
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzgwe;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    :pswitch_26
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zza(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    goto :goto_8

    :pswitch_27
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzk(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    goto :goto_8

    :pswitch_28
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_d
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    mul-int v1, v1, v2

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgsr;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :pswitch_29
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    const/4 v3, 0x0

    goto :goto_c

    :cond_e
    shl-int/lit8 v3, v14, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v3

    mul-int v3, v3, v2

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v14, v5, Lcom/google/android/gms/internal/ads/zzgup;

    if-eqz v14, :cond_f

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgup;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgup;->zza()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v14

    add-int/2addr v14, v5

    add-int/2addr v3, v14

    goto :goto_b

    :cond_f
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzy(Lcom/google/android/gms/internal/ads/zzgvj;Lcom/google/android/gms/internal/ads/zzgwc;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_10
    :goto_c
    add-int/2addr v12, v3

    goto/16 :goto_19

    :pswitch_2a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_11

    :cond_11
    shl-int/lit8 v2, v14, 0x3

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/zzgur;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    mul-int v2, v2, v1

    if-eqz v3, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgur;

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_19

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzgur;->zzf(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzgsr;

    if-eqz v5, :cond_12

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgsr;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_e

    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgtg;->zzz(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzgsr;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgsr;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_10

    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgtg;->zzz(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :pswitch_2b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_7

    :cond_15
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    goto/16 :goto_13

    :pswitch_2c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzgwe;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    :pswitch_2d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzgwe;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    :pswitch_2e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_7

    :cond_16
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzf(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    goto/16 :goto_8

    :pswitch_2f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_7

    :cond_17
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzl(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    goto/16 :goto_8

    :pswitch_30
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    :goto_11
    const/4 v2, 0x0

    goto :goto_12

    :cond_18
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzg(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr v2, v0

    :cond_19
    :goto_12
    add-int/2addr v12, v2

    goto/16 :goto_19

    :pswitch_31
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzgwe;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto :goto_13

    :pswitch_32
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzgwe;->zzd(ILjava/util/List;Z)I

    move-result v0

    :goto_13
    add-int/2addr v12, v0

    goto/16 :goto_19

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v11

    move-wide v9, v3

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzw(ILcom/google/android/gms/internal/ads/zzgvj;Lcom/google/android/gms/internal/ads/zzgwc;)I

    move-result v0

    goto :goto_13

    :pswitch_34
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzB(J)I

    move-result v1

    goto/16 :goto_16

    :pswitch_35
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    goto/16 :goto_16

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_38
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzx(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_39
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_3a
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgsr;

    sget v2, Lcom/google/android/gms/internal/ads/zzgtg;->zzf:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    goto/16 :goto_13

    :pswitch_3b
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;)I

    move-result v0

    goto/16 :goto_13

    :pswitch_3c
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzgsr;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgsr;

    sget v2, Lcom/google/android/gms/internal/ads/zzgtg;->zzf:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto :goto_14

    :cond_1a
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzz(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_40
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzx(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto :goto_16

    :pswitch_41
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzB(J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    goto :goto_16

    :pswitch_42
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtg;->zzB(J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    :goto_16
    add-int/2addr v0, v1

    goto/16 :goto_13

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    :goto_17
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_13

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtg;->zzA(I)I

    move-result v0

    :goto_18
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_13

    :cond_1b
    :goto_19
    add-int/lit8 v11, v11, 0x3

    move v0, v13

    move v1, v15

    const v9, 0xfffff

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1c
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgwt;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwt;->zza(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    if-nez v0, :cond_1d

    return v12

    :cond_1d
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgtm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtq;

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v2

    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzS(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzguj;->zza(Z)I

    move-result v2

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzo(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzn(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_2

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_1
    add-int/2addr v1, v6

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzz(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzguj;->zza(Z)I

    move-result v2

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzc(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    goto :goto_4

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzd:[B

    :goto_3
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgwt;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtq;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzgsd;)I
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v12, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzD(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    :goto_0
    if-ge v0, v14, :cond_64

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v15, v0

    if-gez v0, :cond_0

    invoke-static {v0, v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzi(I[BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v3, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    move v8, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v8, v0

    :goto_1
    ushr-int/lit8 v0, v8, 0x3

    const/4 v9, 0x3

    if-le v0, v1, :cond_2

    div-int/2addr v2, v9

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zze:I

    if-lt v0, v1, :cond_1

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzf:I

    if-gt v0, v1, :cond_1

    invoke-direct {v6, v0, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzs(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    :cond_2
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzq(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/16 v18, 0x0

    if-ne v2, v10, :cond_3

    move v2, v3

    move/from16 v19, v4

    move/from16 v24, v5

    move v3, v8

    move-object/from16 v20, v11

    move-object v8, v12

    move v9, v13

    move v10, v14

    const/4 v6, 0x0

    const/16 v17, -0x1

    move v11, v0

    goto/16 :goto_3d

    :cond_3
    and-int/lit8 v1, v8, 0x7

    iget-object v10, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    add-int/lit8 v20, v2, 0x1

    aget v9, v10, v20

    move/from16 v20, v0

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v0

    const v17, 0xfffff

    and-int v13, v9, v17

    int-to-long v13, v13

    move/from16 v21, v8

    const-wide/16 v22, 0x0

    const-string v8, ""

    move-object/from16 v25, v8

    const/16 v8, 0x11

    if-gt v0, v8, :cond_12

    add-int/lit8 v8, v2, 0x2

    aget v8, v10, v8

    ushr-int/lit8 v10, v8, 0x14

    const/16 v24, 0x1

    shl-int v10, v24, v10

    move/from16 v27, v9

    const v9, 0xfffff

    and-int/2addr v8, v9

    move/from16 v17, v10

    if-eq v8, v5, :cond_6

    if-eq v5, v9, :cond_4

    int-to-long v9, v5

    invoke-virtual {v11, v7, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v9, 0xfffff

    :cond_4
    if-ne v8, v9, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    int-to-long v4, v8

    invoke-virtual {v11, v7, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_3
    move/from16 v24, v8

    goto :goto_4

    :cond_6
    move/from16 v24, v5

    :goto_4
    packed-switch v0, :pswitch_data_0

    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v0, 0x3

    if-ne v1, v0, :cond_11

    or-int v4, v4, v17

    invoke-direct {v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzgvm;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v1, v9, 0x3

    or-int/lit8 v13, v1, 0x4

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    move v2, v8

    move-object v8, v0

    move v5, v9

    const v14, 0xfffff

    move-object v9, v1

    move v1, v10

    const/16 v17, -0x1

    move-object/from16 v10, p2

    move/from16 v20, v5

    move-object v5, v11

    move v11, v3

    move-object v3, v12

    move/from16 v12, p4

    move/from16 p3, v4

    move/from16 v4, p4

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzgse;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;[BIIILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    invoke-direct {v6, v7, v1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v13, p5

    move-object v12, v3

    move v14, v4

    move-object v11, v5

    move v0, v8

    move/from16 v5, v24

    const/4 v10, -0x1

    move/from16 v4, p3

    move v3, v2

    move v2, v1

    move/from16 v1, v20

    goto/16 :goto_0

    :pswitch_0
    if-nez v1, :cond_7

    or-int v8, v4, v17

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v10

    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsz;->zzG(J)J

    move-result-wide v4

    move/from16 v3, v20

    move-object v0, v11

    move-object/from16 v1, p1

    move v9, v3

    move/from16 p3, v10

    move v10, v2

    move-wide v2, v13

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v0, p3

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v8

    goto :goto_5

    :cond_7
    move/from16 v9, v20

    move v1, v2

    move v0, v4

    goto :goto_7

    :pswitch_1
    move v10, v2

    move/from16 v9, v20

    if-nez v1, :cond_a

    or-int v4, v4, v17

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsz;->zzF(I)I

    move-result v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v14, p4

    move/from16 v13, p5

    :goto_5
    move v1, v9

    move v2, v10

    move/from16 v3, v21

    goto/16 :goto_d

    :pswitch_2
    move v10, v2

    move/from16 v9, v20

    if-nez v1, :cond_a

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/zzgvm;->zzw(I)Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object v2

    const/high16 v3, -0x80000000

    and-int v3, v27, v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzgud;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v2

    int-to-long v13, v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move/from16 v8, v21

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzgwu;->zzj(ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_9
    :goto_6
    move/from16 v8, v21

    or-int v4, v4, v17

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :cond_a
    move v0, v4

    move/from16 v20, v9

    move v1, v10

    :goto_7
    move-object v5, v11

    move/from16 v2, v21

    goto/16 :goto_f

    :pswitch_3
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v0, 0x2

    if-ne v1, v0, :cond_11

    or-int v4, v4, v17

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zza([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_4
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v0, 0x2

    if-ne v1, v0, :cond_11

    or-int v13, v4, v17

    invoke-direct {v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzgvm;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    move-object v0, v14

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgse;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;[BIILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    invoke-direct {v6, v7, v10, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v14, p4

    move v3, v8

    move v1, v9

    move v2, v10

    move v4, v13

    move/from16 v5, v24

    const/4 v10, -0x1

    move/from16 v13, p5

    goto/16 :goto_0

    :pswitch_5
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v0, 0x2

    if-ne v1, v0, :cond_11

    invoke-static/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzgvm;->zzM(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ltz v1, :cond_c

    or-int v2, v4, v17

    if-nez v1, :cond_b

    move-object/from16 v5, v25

    iput-object v5, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    goto :goto_9

    :cond_b
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxi;->zzh([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    goto :goto_8

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_d
    move-object/from16 v5, v25

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ltz v1, :cond_f

    or-int v2, v4, v17

    if-nez v1, :cond_e

    iput-object v5, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    goto :goto_9

    :cond_e
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzguj;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v3, v15, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v3, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    :goto_8
    add-int/2addr v0, v1

    :goto_9
    move v4, v2

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_c

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :pswitch_6
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    if-nez v1, :cond_11

    or-int v4, v4, v17

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    cmp-long v3, v1, v22

    if-eqz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    invoke-static {v7, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzp(Ljava/lang/Object;JZ)V

    goto/16 :goto_c

    :pswitch_7
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v0, 0x5

    if-ne v1, v0, :cond_11

    add-int/lit8 v0, v3, 0x4

    or-int v4, v4, v17

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_8
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v0, 0x1

    if-ne v1, v0, :cond_11

    add-int/lit8 v18, v3, 0x8

    or-int v17, v4, v17

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v4

    move-object v0, v11

    move-object/from16 v1, p1

    move-wide v2, v13

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_b

    :pswitch_9
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    if-nez v1, :cond_11

    or-int v4, v4, v17

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :pswitch_a
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    if-nez v1, :cond_11

    or-int v17, v4, v17

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v18

    iget-wide v4, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    move-object v0, v11

    move-object/from16 v1, p1

    move-wide v2, v13

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_b
    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v8

    move v1, v9

    move v2, v10

    move/from16 v4, v17

    move/from16 v0, v18

    goto :goto_d

    :pswitch_b
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v0, 0x5

    if-ne v1, v0, :cond_11

    add-int/lit8 v0, v3, 0x4

    or-int v4, v4, v17

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v7, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzs(Ljava/lang/Object;JF)V

    goto :goto_c

    :pswitch_c
    move v10, v2

    move/from16 v9, v20

    move/from16 v8, v21

    const/4 v0, 0x1

    if-ne v1, v0, :cond_11

    add-int/lit8 v0, v3, 0x8

    or-int v4, v4, v17

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v7, v13, v14, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzr(Ljava/lang/Object;JD)V

    :goto_c
    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v8

    move v1, v9

    move v2, v10

    :goto_d
    move/from16 v5, v24

    :goto_e
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_11
    move v0, v4

    move v2, v8

    move/from16 v20, v9

    move v1, v10

    move-object v5, v11

    :goto_f
    const/16 v17, -0x1

    move/from16 v4, p4

    move/from16 v9, p5

    move/from16 v19, v0

    move v6, v1

    move v10, v4

    move-object v8, v12

    move/from16 v11, v20

    move-object/from16 v20, v5

    move/from16 v31, v3

    move v3, v2

    move/from16 v2, v31

    goto/16 :goto_3d

    :cond_12
    move/from16 v19, v4

    move/from16 v24, v5

    move/from16 v27, v9

    move-object v5, v11

    move-object/from16 v8, v25

    const/16 v17, -0x1

    move/from16 v4, p4

    move v9, v2

    move/from16 v2, v21

    const/16 v11, 0x1b

    const/16 v21, 0xa

    if-ne v0, v11, :cond_16

    const/4 v11, 0x2

    if-ne v1, v11, :cond_15

    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzc()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgui;->size()I

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0xa

    goto :goto_10

    :cond_13
    add-int v21, v1, v1

    move/from16 v1, v21

    :goto_10
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(I)Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v0

    invoke-virtual {v5, v7, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object v13, v0

    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v8

    move v0, v9

    move v9, v2

    move-object/from16 v10, p2

    move/from16 v1, v20

    move v11, v3

    move-object v3, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzgse;->zze(Lcom/google/android/gms/internal/ads/zzgwc;I[BIILcom/google/android/gms/internal/ads/zzgui;Lcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    move/from16 v13, p5

    move-object v12, v3

    move v14, v4

    move-object v11, v5

    move/from16 v4, v19

    move/from16 v5, v24

    const/4 v10, -0x1

    move v3, v2

    move v2, v0

    move v0, v8

    goto/16 :goto_0

    :cond_15
    move v11, v3

    move/from16 v8, v20

    move v3, v2

    move-object/from16 v20, v5

    move v2, v9

    goto/16 :goto_34

    :cond_16
    move/from16 v11, v20

    move-object/from16 v20, v5

    const/16 v5, 0x31

    if-gt v0, v5, :cond_51

    move/from16 v25, v11

    move/from16 v5, v27

    int-to-long v10, v5

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v8

    move-object/from16 v8, v27

    check-cast v8, Lcom/google/android/gms/internal/ads/zzgui;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzgui;->zzc()Z

    move-result v27

    if-nez v27, :cond_18

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzgui;->size()I

    move-result v27

    if-nez v27, :cond_17

    move-wide/from16 v29, v10

    const/16 v10, 0xa

    goto :goto_11

    :cond_17
    add-int v21, v27, v27

    move-wide/from16 v29, v10

    move/from16 v10, v21

    :goto_11
    invoke-interface {v8, v10}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(I)Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v8

    invoke-virtual {v5, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_12

    :cond_18
    move-wide/from16 v29, v10

    :goto_12
    move-object v13, v8

    packed-switch v0, :pswitch_data_1

    move v7, v2

    move v11, v3

    move v10, v9

    move-object/from16 v14, v20

    move/from16 v8, v25

    const/4 v0, 0x3

    move v9, v4

    if-ne v1, v0, :cond_4e

    and-int/lit8 v0, v7, -0x8

    or-int/lit8 v20, v0, 0x4

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move v2, v11

    move/from16 v3, p4

    move/from16 v4, v20

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgse;->zzc(Lcom/google/android/gms/internal/ads/zzgwc;[BIIILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    :pswitch_d
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1b

    check-cast v13, Lcom/google/android/gms/internal/ads/zzguy;

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    add-int/2addr v1, v0

    :goto_13
    if-ge v0, v1, :cond_19

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzgsz;->zzG(J)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    goto :goto_13

    :cond_19
    if-ne v0, v1, :cond_1a

    goto/16 :goto_17

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_1b
    if-nez v1, :cond_21

    check-cast v13, Lcom/google/android/gms/internal/ads/zzguy;

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzgsz;->zzG(J)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    :goto_14
    if-ge v0, v4, :cond_1f

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v5, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v2, v5, :cond_1f

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzgsz;->zzG(J)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    goto :goto_14

    :pswitch_e
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1e

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgua;

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    add-int/2addr v1, v0

    :goto_15
    if-ge v0, v1, :cond_1c

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v5, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgsz;->zzF(I)I

    move-result v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzgua;->zzh(I)V

    goto :goto_15

    :cond_1c
    if-ne v0, v1, :cond_1d

    goto :goto_17

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_1e
    if-nez v1, :cond_21

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgua;

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsz;->zzF(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzgua;->zzh(I)V

    :goto_16
    if-ge v0, v4, :cond_1f

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v5, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v2, v5, :cond_1f

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsz;->zzF(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzgua;->zzh(I)V

    goto :goto_16

    :cond_1f
    :goto_17
    move v7, v2

    move v11, v3

    move v10, v9

    move-object/from16 v14, v20

    move/from16 v8, v25

    move v9, v4

    goto/16 :goto_33

    :pswitch_f
    const/4 v0, 0x2

    if-ne v1, v0, :cond_20

    invoke-static {v15, v3, v13, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzf([BILcom/google/android/gms/internal/ads/zzgui;Lcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    move v14, v2

    move v11, v3

    move v10, v4

    move-object/from16 v8, v20

    :goto_18
    move/from16 v20, v0

    goto :goto_19

    :cond_20
    if-nez v1, :cond_21

    move v0, v2

    move-object/from16 v1, p2

    move v14, v2

    move v2, v3

    move v11, v3

    move/from16 v3, p4

    move v10, v4

    move-object v4, v13

    move-object/from16 v8, v20

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgse;->zzj(I[BIILcom/google/android/gms/internal/ads/zzgui;Lcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    goto :goto_18

    :goto_19
    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/ads/zzgvm;->zzw(I)Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object v2, v13

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgwe;->zzo(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgud;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;)Ljava/lang/Object;

    move v7, v14

    move/from16 v0, v20

    :goto_1a
    move-object v14, v8

    move/from16 v8, v25

    move/from16 v31, v10

    move v10, v9

    move/from16 v9, v31

    goto/16 :goto_33

    :cond_21
    move v7, v2

    move v11, v3

    move v10, v9

    move-object/from16 v14, v20

    move/from16 v8, v25

    move v9, v4

    goto/16 :goto_32

    :pswitch_10
    move v14, v2

    move v11, v3

    move v10, v4

    move-object/from16 v8, v20

    const/4 v0, 0x2

    if-ne v1, v0, :cond_29

    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ltz v1, :cond_28

    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_27

    if-nez v1, :cond_22

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsr;->zzb:Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_22
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    :goto_1b
    add-int/2addr v0, v1

    :goto_1c
    if-ge v0, v10, :cond_26

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v14, v2, :cond_26

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ltz v1, :cond_25

    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_24

    if-nez v1, :cond_23

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgsr;->zzb:Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_23
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgsr;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_26
    move v7, v14

    goto :goto_1a

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :pswitch_11
    move v14, v2

    move v11, v3

    move v10, v4

    move-object/from16 v8, v20

    const/4 v0, 0x2

    if-ne v1, v0, :cond_29

    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v0

    move-object v5, v8

    move-object v8, v0

    move v4, v9

    move v9, v14

    move v3, v10

    move-object/from16 v10, p2

    move v0, v11

    move/from16 v2, v25

    move-object v1, v12

    move/from16 v12, p4

    move v7, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzgse;->zze(Lcom/google/android/gms/internal/ads/zzgwc;I[BIILcom/google/android/gms/internal/ads/zzgui;Lcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    move-object v12, v1

    move v9, v3

    move v10, v4

    move-object v14, v5

    move v0, v8

    move v8, v2

    goto/16 :goto_33

    :cond_29
    move v7, v14

    move-object v14, v8

    move/from16 v8, v25

    move/from16 v31, v10

    move v10, v9

    move/from16 v9, v31

    goto/16 :goto_32

    :pswitch_12
    move v7, v2

    move v0, v3

    move v3, v4

    move v4, v9

    move-object/from16 v5, v20

    move/from16 v2, v25

    const/4 v8, 0x2

    if-ne v1, v8, :cond_35

    const-wide/32 v8, 0x20000000

    and-long v8, v29, v8

    cmp-long v1, v8, v22

    if-nez v1, :cond_2e

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ltz v8, :cond_2d

    if-nez v8, :cond_2a

    move-object/from16 v9, v28

    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2a
    move-object/from16 v9, v28

    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/ads/zzguj;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v1, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/2addr v1, v8

    :goto_1e
    if-ge v1, v3, :cond_42

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    iget v10, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v10, :cond_42

    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ltz v8, :cond_2c

    if-nez v8, :cond_2b

    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2b
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/ads/zzguj;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v1, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_2e
    move-object/from16 v9, v28

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ltz v8, :cond_34

    if-nez v8, :cond_2f

    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_2f
    add-int v10, v1, v8

    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/ads/zzgxi;->zzj([BII)Z

    move-result v11

    if-eqz v11, :cond_33

    new-instance v11, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzguj;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v1, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    :goto_1f
    move v1, v10

    :goto_20
    if-ge v1, v3, :cond_42

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    iget v10, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v10, :cond_42

    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ltz v8, :cond_32

    if-nez v8, :cond_30

    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_30
    add-int v10, v1, v8

    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/ads/zzgxi;->zzj([BII)Z

    move-result v11

    if-eqz v11, :cond_31

    new-instance v11, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzguj;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v1, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzd()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzd()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_35
    move v11, v0

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v14, v5

    goto/16 :goto_32

    :pswitch_13
    move v7, v2

    move v0, v3

    move v3, v4

    move v4, v9

    move-object/from16 v5, v20

    move/from16 v2, v25

    const/4 v8, 0x2

    if-ne v1, v8, :cond_39

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgsf;

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    add-int/2addr v8, v1

    :goto_21
    if-ge v1, v8, :cond_37

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget-wide v9, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    cmp-long v11, v9, v22

    if-eqz v11, :cond_36

    const/4 v9, 0x1

    goto :goto_22

    :cond_36
    const/4 v9, 0x0

    :goto_22
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzgsf;->zze(Z)V

    goto :goto_21

    :cond_37
    if-ne v1, v8, :cond_38

    goto/16 :goto_2a

    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_39
    if-nez v1, :cond_35

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgsf;

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget-wide v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    cmp-long v10, v8, v22

    if-eqz v10, :cond_3a

    const/4 v8, 0x1

    goto :goto_23

    :cond_3a
    const/4 v8, 0x0

    :goto_23
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzgsf;->zze(Z)V

    :goto_24
    if-ge v1, v3, :cond_42

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v9, :cond_42

    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget-wide v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    cmp-long v10, v8, v22

    if-eqz v10, :cond_3b

    const/4 v8, 0x1

    goto :goto_25

    :cond_3b
    const/4 v8, 0x0

    :goto_25
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzgsf;->zze(Z)V

    goto :goto_24

    :pswitch_14
    move v7, v2

    move v0, v3

    move v3, v4

    move v4, v9

    move-object/from16 v5, v20

    move/from16 v2, v25

    const/4 v8, 0x2

    if-ne v1, v8, :cond_3e

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgua;

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    add-int/2addr v8, v1

    :goto_26
    if-ge v1, v8, :cond_3c

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v9

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzgua;->zzh(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_26

    :cond_3c
    if-ne v1, v8, :cond_3d

    goto/16 :goto_2a

    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_3e
    const/4 v8, 0x5

    if-ne v1, v8, :cond_35

    add-int/lit8 v1, v0, 0x4

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgua;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzgua;->zzh(I)V

    :goto_27
    if-ge v1, v3, :cond_42

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v9, :cond_42

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzgua;->zzh(I)V

    add-int/lit8 v1, v8, 0x4

    goto :goto_27

    :pswitch_15
    move v7, v2

    move v0, v3

    move v3, v4

    move v4, v9

    move-object/from16 v5, v20

    move/from16 v2, v25

    const/4 v8, 0x2

    if-ne v1, v8, :cond_41

    check-cast v13, Lcom/google/android/gms/internal/ads/zzguy;

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v8, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    add-int/2addr v8, v1

    :goto_28
    if-ge v1, v8, :cond_3f

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_28

    :cond_3f
    if-ne v1, v8, :cond_40

    goto :goto_2a

    :cond_40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_41
    const/4 v8, 0x1

    if-ne v1, v8, :cond_35

    add-int/lit8 v1, v0, 0x8

    check-cast v13, Lcom/google/android/gms/internal/ads/zzguy;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    :goto_29
    if-ge v1, v3, :cond_42

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v9, :cond_42

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    add-int/lit8 v1, v8, 0x8

    goto :goto_29

    :pswitch_16
    move v7, v2

    move v0, v3

    move v3, v4

    move v4, v9

    move-object/from16 v5, v20

    move/from16 v2, v25

    const/4 v8, 0x2

    if-ne v1, v8, :cond_43

    invoke-static {v15, v0, v13, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzf([BILcom/google/android/gms/internal/ads/zzgui;Lcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    :cond_42
    :goto_2a
    move v11, v0

    move v0, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v14, v5

    goto/16 :goto_33

    :cond_43
    if-nez v1, :cond_35

    move v11, v0

    move v0, v7

    move-object/from16 v1, p2

    move v8, v2

    move v2, v11

    move v9, v3

    move/from16 v3, p4

    move v10, v4

    move-object v4, v13

    move-object v14, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgse;->zzj(I[BIILcom/google/android/gms/internal/ads/zzgui;Lcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    goto/16 :goto_33

    :pswitch_17
    move v7, v2

    move v11, v3

    move v10, v9

    move-object/from16 v14, v20

    move/from16 v8, v25

    const/4 v0, 0x2

    move v9, v4

    if-ne v1, v0, :cond_46

    check-cast v13, Lcom/google/android/gms/internal/ads/zzguy;

    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    add-int/2addr v1, v0

    :goto_2b
    if-ge v0, v1, :cond_44

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v2, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    goto :goto_2b

    :cond_44
    if-ne v0, v1, :cond_45

    goto/16 :goto_33

    :cond_45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_46
    if-nez v1, :cond_4e

    check-cast v13, Lcom/google/android/gms/internal/ads/zzguy;

    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    :goto_2c
    if-ge v0, v9, :cond_4f

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v2, :cond_4f

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/zzguy;->zzg(J)V

    goto :goto_2c

    :pswitch_18
    move v7, v2

    move v11, v3

    move v10, v9

    move-object/from16 v14, v20

    move/from16 v8, v25

    const/4 v0, 0x2

    move v9, v4

    if-ne v1, v0, :cond_49

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgts;

    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    add-int/2addr v1, v0

    :goto_2d
    if-ge v0, v1, :cond_47

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzgts;->zze(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2d

    :cond_47
    if-ne v0, v1, :cond_48

    goto/16 :goto_33

    :cond_48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_49
    const/4 v0, 0x5

    if-ne v1, v0, :cond_4e

    add-int/lit8 v3, v11, 0x4

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgts;

    invoke-static {v15, v11}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzgts;->zze(F)V

    :goto_2e
    if-ge v3, v9, :cond_4d

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v1, :cond_4d

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzgts;->zze(F)V

    add-int/lit8 v3, v0, 0x4

    goto :goto_2e

    :pswitch_19
    move v7, v2

    move v11, v3

    move v10, v9

    move-object/from16 v14, v20

    move/from16 v8, v25

    const/4 v0, 0x2

    move v9, v4

    if-ne v1, v0, :cond_4c

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgti;

    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    add-int/2addr v1, v0

    :goto_2f
    if-ge v0, v1, :cond_4a

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzgti;->zze(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_2f

    :cond_4a
    if-ne v0, v1, :cond_4b

    goto :goto_33

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_4c
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4e

    add-int/lit8 v3, v11, 0x8

    check-cast v13, Lcom/google/android/gms/internal/ads/zzgti;

    invoke-static {v15, v11}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/google/android/gms/internal/ads/zzgti;->zze(D)V

    :goto_30
    if-ge v3, v9, :cond_4d

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v1, :cond_4d

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/zzgti;->zze(D)V

    add-int/lit8 v3, v0, 0x8

    goto :goto_30

    :cond_4d
    move v0, v3

    goto :goto_33

    :goto_31
    if-ge v0, v9, :cond_4f

    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v2

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-ne v7, v1, :cond_4f

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, v20

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgse;->zzc(Lcom/google/android/gms/internal/ads/zzgwc;[BIIILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/ads/zzgui;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4e
    :goto_32
    move v0, v11

    :cond_4f
    :goto_33
    if-eq v0, v11, :cond_50

    move/from16 v13, p5

    move v3, v7

    move v1, v8

    move v2, v10

    move-object v11, v14

    move/from16 v4, v19

    move/from16 v5, v24

    const/4 v10, -0x1

    move-object/from16 v7, p1

    move v14, v9

    goto/16 :goto_0

    :cond_50
    move v2, v0

    move v3, v7

    move v11, v8

    move v6, v10

    move-object v8, v12

    move-object/from16 v20, v14

    move-object/from16 v7, p1

    move v10, v9

    move/from16 v9, p5

    goto/16 :goto_3d

    :cond_51
    move v7, v2

    move v2, v9

    move/from16 v5, v27

    move-object v9, v8

    move v8, v11

    move v11, v3

    const/16 v3, 0x32

    if-ne v0, v3, :cond_54

    const/4 v3, 0x2

    if-ne v1, v3, :cond_53

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzz(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, p1

    invoke-virtual {v0, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgve;->zza(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvd;->zza()Lcom/google/android/gms/internal/ads/zzgvd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgvd;->zzb()Lcom/google/android/gms/internal/ads/zzgvd;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzgve;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_52
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgvc;

    throw v18

    :cond_53
    move v3, v7

    move-object/from16 v7, p1

    :goto_34
    move/from16 v9, p5

    move v6, v2

    move v10, v4

    move v2, v11

    move v11, v8

    move-object v8, v12

    goto/16 :goto_3d

    :cond_54
    move v3, v7

    move-object/from16 v7, p1

    add-int/lit8 v21, v2, 0x2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    aget v10, v10, v21

    move/from16 v27, v5

    const v5, 0xfffff

    and-int/2addr v10, v5

    int-to-long v5, v10

    packed-switch v0, :pswitch_data_2

    :goto_35
    move/from16 v10, p4

    move/from16 p3, v2

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    goto/16 :goto_3b

    :pswitch_1a
    const/4 v0, 0x3

    if-ne v1, v0, :cond_55

    and-int/lit8 v0, v3, -0x8

    or-int/lit8 v13, v0, 0x4

    move-object/from16 v6, p0

    invoke-direct {v6, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v9

    move v5, v8

    move-object v8, v0

    move-object/from16 v10, p2

    move v1, v11

    move-object v4, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzgse;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;[BIIILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v8

    invoke-direct {v6, v7, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v10, p4

    move v12, v1

    move/from16 p3, v2

    move v11, v5

    move v0, v8

    move-object v8, v4

    goto/16 :goto_3c

    :cond_55
    move-object/from16 v6, p0

    goto :goto_35

    :pswitch_1b
    move-wide/from16 v31, v5

    move-object/from16 v6, p0

    move v5, v8

    move-object v8, v12

    move v12, v11

    move-wide/from16 v10, v31

    if-nez v1, :cond_58

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    move/from16 p3, v0

    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsz;->zzG(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v7, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v0, p3

    goto/16 :goto_37

    :pswitch_1c
    move-wide/from16 v31, v5

    move-object/from16 v6, p0

    move v5, v8

    move-object v8, v12

    move v12, v11

    move-wide/from16 v10, v31

    if-nez v1, :cond_58

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsz;->zzF(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_37

    :pswitch_1d
    move-wide/from16 v31, v5

    move-object/from16 v6, p0

    move v5, v8

    move-object v8, v12

    move v12, v11

    move-wide/from16 v10, v31

    if-nez v1, :cond_58

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzw(I)Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object v9

    if-eqz v9, :cond_57

    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/zzgud;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_56

    goto :goto_36

    :cond_56
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v4

    int-to-long v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgwu;->zzj(ILjava/lang/Object;)V

    goto :goto_37

    :cond_57
    :goto_36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_37

    :pswitch_1e
    const/4 v0, 0x2

    move-wide/from16 v31, v5

    move-object/from16 v6, p0

    move v5, v8

    move-object v8, v12

    move v12, v11

    move-wide/from16 v10, v31

    if-ne v1, v0, :cond_58

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zza([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zzc:Ljava/lang/Object;

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_37
    move/from16 v10, p4

    move/from16 p3, v2

    move v11, v5

    goto/16 :goto_3c

    :cond_58
    move/from16 v10, p4

    move/from16 p3, v2

    move v11, v5

    goto/16 :goto_3b

    :pswitch_1f
    move-object/from16 v6, p0

    move v5, v8

    move-object v8, v12

    const/4 v0, 0x2

    move v12, v11

    if-ne v1, v0, :cond_59

    invoke-direct {v6, v7, v5, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    move-object v0, v9

    move v10, v2

    move-object/from16 v2, p2

    move v13, v3

    move-object/from16 v11, v20

    move v3, v12

    move/from16 v14, p4

    move/from16 v4, p4

    move v11, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgse;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;[BIILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    invoke-direct {v6, v7, v11, v10, v9}, Lcom/google/android/gms/internal/ads/zzgvm;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 p3, v10

    move v3, v13

    move v10, v14

    goto/16 :goto_3c

    :cond_59
    move v11, v5

    move/from16 v10, p4

    move/from16 p3, v2

    goto/16 :goto_3b

    :pswitch_20
    move/from16 v10, p4

    move v0, v2

    const/4 v2, 0x2

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    if-ne v1, v2, :cond_5d

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v1

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    if-nez v2, :cond_5a

    invoke-virtual {v4, v7, v13, v14, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 p3, v0

    goto :goto_39

    :cond_5a
    add-int v9, v1, v2

    const/high16 v21, 0x20000000

    and-int v21, v27, v21

    if-eqz v21, :cond_5c

    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/ads/zzgxi;->zzj([BII)Z

    move-result v21

    if-eqz v21, :cond_5b

    goto :goto_38

    :cond_5b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzd()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_5c
    :goto_38
    move/from16 p3, v0

    new-instance v0, Ljava/lang/String;

    move/from16 v21, v9

    sget-object v9, Lcom/google/android/gms/internal/ads/zzguj;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v0, v15, v1, v2, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v7, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v1, v21

    :goto_39
    invoke-virtual {v4, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v1

    goto/16 :goto_3c

    :cond_5d
    move/from16 p3, v0

    goto/16 :goto_3b

    :pswitch_21
    move/from16 v10, p4

    move/from16 p3, v2

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    if-nez v1, :cond_5f

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v1, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    cmp-long v9, v1, v22

    if-eqz v9, :cond_5e

    const/16 v26, 0x1

    goto :goto_3a

    :cond_5e
    const/16 v26, 0x0

    :goto_3a
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3c

    :pswitch_22
    move/from16 v10, p4

    move/from16 p3, v2

    const/4 v0, 0x5

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    if-ne v1, v0, :cond_5f

    add-int/lit8 v0, v12, 0x4

    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3c

    :pswitch_23
    move/from16 v10, p4

    move/from16 p3, v2

    const/4 v0, 0x1

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    if-ne v1, v0, :cond_5f

    add-int/lit8 v0, v12, 0x8

    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3c

    :pswitch_24
    move/from16 v10, p4

    move/from16 p3, v2

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    if-nez v1, :cond_5f

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzh([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3c

    :pswitch_25
    move/from16 v10, p4

    move/from16 p3, v2

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    if-nez v1, :cond_5f

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzgse;->zzk([BILcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    iget-wide v1, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3c

    :pswitch_26
    move/from16 v10, p4

    move/from16 p3, v2

    const/4 v0, 0x5

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    if-ne v1, v0, :cond_5f

    add-int/lit8 v0, v12, 0x4

    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3c

    :pswitch_27
    move/from16 v10, p4

    move/from16 p3, v2

    const/4 v0, 0x1

    move/from16 v31, v11

    move v11, v8

    move-object v8, v12

    move/from16 v12, v31

    if-ne v1, v0, :cond_5f

    add-int/lit8 v0, v12, 0x8

    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzgse;->zzn([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3c

    :cond_5f
    :goto_3b
    move v0, v12

    :goto_3c
    if-eq v0, v12, :cond_60

    move-object/from16 v6, p0

    move/from16 v2, p3

    move/from16 v13, p5

    move-object v12, v8

    move v14, v10

    move v1, v11

    move/from16 v4, v19

    move-object/from16 v11, v20

    goto/16 :goto_d

    :cond_60
    move/from16 v6, p3

    move/from16 v9, p5

    move v2, v0

    :goto_3d
    if-ne v3, v9, :cond_61

    if-eqz v9, :cond_61

    const v0, 0xfffff

    move-object/from16 v12, p0

    move v6, v2

    move v8, v3

    move/from16 v4, v19

    move-object/from16 v14, v20

    move/from16 v5, v24

    goto/16 :goto_3f

    :cond_61
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    if-eqz v0, :cond_63

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzgsd;->zzd:Lcom/google/android/gms/internal/ads/zzgtl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgtl;->zza:Lcom/google/android/gms/internal/ads/zzgtl;

    if-eq v0, v1, :cond_63

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzgvm;->zzg:Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/gms/internal/ads/zzgtl;->zzc(Lcom/google/android/gms/internal/ads/zzgvj;I)Lcom/google/android/gms/internal/ads/zzgtx;

    move-result-object v0

    if-nez v0, :cond_62

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v4

    move v0, v3

    move-object/from16 v1, p2

    move v13, v3

    move/from16 v3, p4

    move-object/from16 v14, v20

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgse;->zzg(I[BIILcom/google/android/gms/internal/ads/zzgwu;Lcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    goto :goto_3e

    :cond_62
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgtw;

    throw v18

    :cond_63
    move v13, v3

    move-object/from16 v14, v20

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v4

    move v0, v13

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgse;->zzg(I[BIILcom/google/android/gms/internal/ads/zzgwu;Lcom/google/android/gms/internal/ads/zzgsd;)I

    move-result v0

    :goto_3e
    move v2, v6

    move v1, v11

    move-object v6, v12

    move v3, v13

    move-object v11, v14

    move/from16 v4, v19

    move/from16 v5, v24

    move-object v12, v8

    move v13, v9

    move v14, v10

    goto/16 :goto_e

    :cond_64
    move/from16 v19, v4

    move/from16 v24, v5

    move-object v12, v6

    move v9, v13

    move v10, v14

    move-object v14, v11

    move v6, v0

    move v8, v3

    const v0, 0xfffff

    :goto_3f
    if-eq v5, v0, :cond_65

    int-to-long v0, v5

    invoke-virtual {v14, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_65
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzgvm;->zzk:I

    move v11, v0

    :goto_40
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzgvm;->zzl:I

    if-ge v11, v0, :cond_66

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzgvm;->zzj:[I

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    aget v2, v0, v11

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    :cond_66
    if-nez v9, :cond_68

    if-ne v6, v10, :cond_67

    goto :goto_41

    :cond_67
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzg()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :cond_68
    if-gt v6, v10, :cond_69

    if-ne v8, v9, :cond_69

    :goto_41
    return v6

    :cond_69
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzg()Lcom/google/android/gms/internal/ads/zzgul;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzg:Lcom/google/android/gms/internal/ads/zzgvj;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgtz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaD()Lcom/google/android/gms/internal/ads/zzgtz;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzQ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgtz;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgtz;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaV(I)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzaT()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzgvd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgvd;->zzc()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgux;->zzb(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwc;->zzf(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwc;->zzf(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgwt;->zzm(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtm;->zze(Ljava/lang/Object;)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzD(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v1

    aget v3, v3, v0

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzF(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzF(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgve;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgux;->zzc(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzE(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzE(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzz(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzp(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzc(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzs(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxd;->zzr(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwe;->zzq(Lcom/google/android/gms/internal/ads/zzgwt;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgtm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtq;

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvu;Lcom/google/android/gms/internal/ads/zzgtl;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzD(Ljava/lang/Object;)V

    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    const/16 v16, 0x0

    move-object/from16 v4, v16

    move-object v8, v4

    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzc()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzq(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-gez v1, :cond_8

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_1

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzk:I

    :goto_1
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzl:I

    if-ge v0, v1, :cond_0

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzj:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v14

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvm;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_15

    invoke-virtual {v14, v15, v4}, Lcom/google/android/gms/internal/ads/zzgwt;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    iget-boolean v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    if-nez v1, :cond_2

    move-object/from16 v11, v16

    goto :goto_2

    :cond_2
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzg:Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-virtual {v5, v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzgtm;->zzc(Lcom/google/android/gms/internal/ads/zzgtl;Lcom/google/android/gms/internal/ads/zzgvj;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v1

    :goto_2
    if-eqz v11, :cond_5

    if-nez v8, :cond_3

    :try_start_2
    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzgtm;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtq;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :cond_3
    move-object v1, v8

    move-object v8, v5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object v13, v1

    move-object v3, v14

    move-object v14, v4

    move-object v2, v15

    move-object v15, v3

    :try_start_3
    invoke-virtual/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzgtm;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgtl;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v1

    :cond_4
    move-object v15, v2

    move-object v14, v3

    goto :goto_0

    :cond_5
    move-object v3, v14

    move-object v2, v15

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzgwt;->zzq(Lcom/google/android/gms/internal/ads/zzgvu;)Z

    if-nez v4, :cond_6

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgwt;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :try_start_4
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzgwt;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvu;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_4

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzk:I

    :goto_3
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzl:I

    if-ge v0, v1, :cond_7

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzj:[I

    aget v5, v1, v0

    move-object/from16 v1, p0

    move-object v9, v2

    move-object/from16 v2, p1

    move-object v10, v3

    move v3, v5

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvm;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v2, v9

    move-object v3, v10

    goto :goto_3

    :cond_7
    move-object v9, v2

    move-object v10, v3

    if-eqz v4, :cond_15

    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/ads/zzgwt;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v9, v2

    move-object v10, v3

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    move-object v9, v2

    move-object v10, v3

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    move-object v10, v14

    move-object v9, v15

    goto/16 :goto_f

    :cond_8
    move-object v10, v14

    move-object v9, v15

    :try_start_5
    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v11
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzguk; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const v12, 0xfffff

    packed-switch v11, :pswitch_data_0

    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    if-nez v13, :cond_10

    :try_start_7
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzgwt;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzguk; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_b

    :pswitch_0
    :try_start_8
    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v11

    invoke-interface {v0, v3, v11, v6}, Lcom/google/android/gms/internal/ads/zzgvu;->zzt(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;Lcom/google/android/gms/internal/ads/zzgtl;)V

    invoke-direct {v7, v9, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzn()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_5

    :pswitch_2
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzi()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_5

    :pswitch_3
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzm()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_4
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzh()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zze()I

    move-result v11

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzw(I)Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/ads/zzgud;->zza(I)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v9, v2, v11, v4, v10}, Lcom/google/android/gms/internal/ads/zzgwe;->zzp(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v9

    goto/16 :goto_a

    :cond_a
    :goto_4
    and-int/2addr v3, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_6
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzj()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_7
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzp()Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_8
    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzB(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v11

    invoke-interface {v0, v3, v11, v6}, Lcom/google/android/gms/internal/ads/zzgvu;->zzu(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;Lcom/google/android/gms/internal/ads/zzgtl;)V

    invoke-direct {v7, v9, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzK(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_5

    :pswitch_9
    invoke-direct {v7, v9, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgvu;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    :goto_5
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    goto/16 :goto_8

    :pswitch_a
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzN()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_b
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzf()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_c
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzk()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_d
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzg()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_e
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzo()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_f
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzl()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_10
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzb()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto :goto_5

    :pswitch_11
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zza()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzI(Ljava/lang/Object;II)V

    goto/16 :goto_5

    :pswitch_12
    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzz(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v1

    and-int/2addr v1, v12

    int-to-long v11, v1

    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgve;->zza(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvd;->zza()Lcom/google/android/gms/internal/ads/zzgvd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgvd;->zzb()Lcom/google/android/gms/internal/ads/zzgvd;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzgve;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v3

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvd;->zza()Lcom/google/android/gms/internal/ads/zzgvd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvd;->zzb()Lcom/google/android/gms/internal/ads/zzgvd;

    move-result-object v1

    invoke-static {v9, v11, v12, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_c
    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgvd;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgvc;

    throw v16

    :pswitch_13
    and-int v2, v3, v12

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    int-to-long v11, v2

    invoke-virtual {v3, v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v1, v6}, Lcom/google/android/gms/internal/ads/zzgvu;->zzC(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgwc;Lcom/google/android/gms/internal/ads/zzgtl;)V

    goto/16 :goto_5

    :pswitch_14
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzJ(Ljava/util/List;)V

    goto/16 :goto_5

    :pswitch_15
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzI(Ljava/util/List;)V

    goto/16 :goto_5

    :pswitch_16
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzH(Ljava/util/List;)V

    goto/16 :goto_5

    :pswitch_17
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzG(Ljava/util/List;)V

    goto/16 :goto_5

    :pswitch_18
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int/2addr v3, v12

    int-to-long v12, v3

    invoke-virtual {v11, v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzgvu;->zzy(Ljava/util/List;)V

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzw(I)Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object v11
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzguk; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v1, p1

    move-object v13, v4

    move-object v4, v11

    move-object v11, v5

    move-object v5, v13

    move-object v14, v6

    move-object v6, v10

    :try_start_9
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgwe;->zzo(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgud;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_d

    :pswitch_19
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzL(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1a
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzv(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1b
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzz(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1c
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzA(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1d
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzD(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1e
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzM(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1f
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzE(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_20
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzB(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_21
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzx(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_22
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzJ(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_23
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzI(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_24
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzH(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_25
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzG(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_26
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int/2addr v3, v12

    int-to-long v5, v3

    invoke-virtual {v4, v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzgvu;->zzy(Ljava/util/List;)V

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzw(I)Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v5, v13

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgwe;->zzo(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgud;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_d

    :pswitch_27
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzL(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_28
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzw(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_29
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    and-int v2, v3, v12

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    int-to-long v4, v2

    invoke-virtual {v3, v9, v4, v5}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v1, v14}, Lcom/google/android/gms/internal/ads/zzgvu;->zzF(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgwc;Lcom/google/android/gms/internal/ads/zzgtl;)V

    goto/16 :goto_8

    :pswitch_2a
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzM(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgta;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgta;->zzK(Ljava/util/List;Z)V

    goto/16 :goto_8

    :cond_d
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgta;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgta;->zzK(Ljava/util/List;Z)V

    goto/16 :goto_8

    :pswitch_2b
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzv(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_2c
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzz(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_2d
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzA(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_2e
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzD(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_2f
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzM(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_30
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzE(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_31
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzB(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_32
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzm:Lcom/google/android/gms/internal/ads/zzgux;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzgux;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvu;->zzx(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_33
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v3

    invoke-interface {v0, v2, v3, v14}, Lcom/google/android/gms/internal/ads/zzgvu;->zzt(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;Lcom/google/android/gms/internal/ads/zzgtl;)V

    invoke-direct {v7, v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_34
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzn()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_35
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzi()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_36
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzm()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_37
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzh()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_38
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zze()I

    move-result v4

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzw(I)Lcom/google/android/gms/internal/ads/zzgud;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzgud;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_e
    invoke-static {v9, v2, v4, v13, v10}, Lcom/google/android/gms/internal/ads/zzgwe;->zzp(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_d

    :cond_f
    :goto_7
    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-static {v9, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_39
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzj()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_3a
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzp()Lcom/google/android/gms/internal/ads/zzgsr;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzv(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_3b
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzA(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v3

    invoke-interface {v0, v2, v3, v14}, Lcom/google/android/gms/internal/ads/zzgvu;->zzu(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;Lcom/google/android/gms/internal/ads/zzgtl;)V

    invoke-direct {v7, v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzJ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3c
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-direct {v7, v9, v3, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgvu;)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_10

    :pswitch_3d
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzN()Z

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzp(Ljava/lang/Object;JZ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_3e
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzf()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_3f
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzk()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_8

    :pswitch_40
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzg()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzt(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_8

    :pswitch_41
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzo()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_8

    :pswitch_42
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzl()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxd;->zzu(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_8

    :pswitch_43
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zzb()F

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzs(Ljava/lang/Object;JF)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V

    goto :goto_8

    :pswitch_44
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzgvu;->zza()D

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxd;->zzr(Ljava/lang/Object;JD)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzH(Ljava/lang/Object;I)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzguk; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_8
    move-object v15, v9

    move-object v5, v11

    move-object v4, v13

    :goto_9
    move-object v6, v14

    :goto_a
    move-object v14, v10

    goto/16 :goto_0

    :cond_10
    move-object v4, v13

    :goto_b
    :try_start_a
    invoke-virtual {v10, v4, v0}, Lcom/google/android/gms/internal/ads/zzgwt;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvu;)Z

    move-result v1
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzguk; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v1, :cond_12

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzk:I

    :goto_c
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzl:I

    if-ge v0, v1, :cond_11

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzj:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvm;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_11
    if-eqz v4, :cond_15

    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/ads/zzgwt;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_12
    :goto_d
    move-object v15, v9

    move-object v5, v11

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_11

    :catch_0
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    :catch_1
    move-object v4, v13

    :catch_2
    :try_start_b
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzgwt;->zzq(Lcom/google/android/gms/internal/ads/zzgvu;)Z

    if-nez v4, :cond_13

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzgwt;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    :cond_13
    invoke-virtual {v10, v4, v0}, Lcom/google/android/gms/internal/ads/zzgwt;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvu;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v1, :cond_12

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzk:I

    :goto_e
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzl:I

    if-ge v0, v1, :cond_14

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzj:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvm;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/ads/zzgwt;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    return-void

    :catchall_5
    move-exception v0

    :goto_f
    move-object v13, v4

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object v13, v4

    move-object v10, v14

    move-object v9, v15

    :goto_10
    move-object v4, v13

    :goto_11
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzk:I

    move v8, v1

    :goto_12
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzl:I

    if-ge v8, v1, :cond_16

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzgvm;->zzj:[I

    aget v3, v1, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgvm;->zzy(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwt;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/ads/zzgwt;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgsd;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgvm;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzgsd;)I

    return-void
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzz(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzz(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzc(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzc(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgwt;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzgwt;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgtm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtq;

    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzk:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzj:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v12, v2, v10

    aget v13, v4, v12

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    add-int/lit8 v4, v12, 0x2

    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v9

    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v14, v8

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvd;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzgvm;->zzz(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvc;

    throw v11

    :cond_6
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgwc;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_7
    and-int v0, v14, v8

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxd;->zzh(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzgwc;->zzk(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzP(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgwc;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    if-nez v0, :cond_c

    return v3

    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgtm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtq;

    throw v11
.end method

.method public final zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgth;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzh:Z

    const/4 v9, 0x0

    if-nez v0, :cond_6

    iget-object v10, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    sget-object v11, Lcom/google/android/gms/internal/ads/zzgvm;->zzb:Lsun/misc/Unsafe;

    const v12, 0xfffff

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v2, v10

    if-ge v14, v2, :cond_5

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzu(I)I

    move-result v2

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt(I)I

    move-result v4

    aget v15, v3, v14

    const/16 v5, 0x11

    const/4 v13, 0x1

    if-gt v4, v5, :cond_2

    add-int/lit8 v5, v14, 0x2

    aget v3, v3, v5

    and-int v5, v3, v12

    if-eq v5, v0, :cond_1

    if-ne v5, v12, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v11, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_1
    move v1, v0

    move v0, v5

    :cond_1
    ushr-int/lit8 v3, v3, 0x14

    shl-int v3, v13, v3

    move/from16 v16, v0

    move/from16 v17, v1

    move v5, v3

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    const/4 v5, 0x0

    :goto_2
    and-int v0, v2, v12

    int-to-long v2, v0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;)V

    goto/16 :goto_5

    :pswitch_1
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzC(IJ)V

    goto/16 :goto_5

    :pswitch_2
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzA(II)V

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzy(IJ)V

    goto/16 :goto_5

    :pswitch_4
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzw(II)V

    goto/16 :goto_5

    :pswitch_5
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzi(II)V

    goto/16 :goto_5

    :pswitch_6
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzH(II)V

    goto/16 :goto_5

    :pswitch_7
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzd(ILcom/google/android/gms/internal/ads/zzgsr;)V

    goto/16 :goto_5

    :pswitch_8
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;)V

    goto/16 :goto_5

    :pswitch_9
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/ads/zzgvm;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgth;)V

    goto/16 :goto_5

    :pswitch_a
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzS(Ljava/lang/Object;J)Z

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzb(IZ)V

    goto/16 :goto_5

    :pswitch_b
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzk(II)V

    goto/16 :goto_5

    :pswitch_c
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzm(IJ)V

    goto/16 :goto_5

    :pswitch_d
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzp(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzr(II)V

    goto/16 :goto_5

    :pswitch_e
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzJ(IJ)V

    goto/16 :goto_5

    :pswitch_f
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzt(IJ)V

    goto/16 :goto_5

    :pswitch_10
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzo(Ljava/lang/Object;J)F

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzo(IF)V

    goto/16 :goto_5

    :pswitch_11
    invoke-direct {v6, v7, v15, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzR(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzn(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzf(ID)V

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzz(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvc;

    throw v9

    :pswitch_13
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzgth;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_14
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_15
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_16
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_17
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_18
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_19
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_1a
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_1b
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_1c
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_1d
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_1e
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_1f
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_20
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_21
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_22
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzgwe;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_23
    const/4 v4, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzgwe;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_24
    const/4 v4, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzgwe;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_25
    const/4 v4, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzgwe;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_26
    const/4 v4, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzgwe;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_27
    const/4 v4, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzgwe;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_28
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zze(ILjava/util/List;)V

    goto/16 :goto_5

    :pswitch_29
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzgth;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :pswitch_2a
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/gms/internal/ads/zzgwe;->zza:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzG(ILjava/util/List;)V

    goto/16 :goto_5

    :pswitch_2b
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v13, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v13, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v13, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v13, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v13, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v13, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v13, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzc:[I

    aget v0, v0, v14

    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v13}, Lcom/google/android/gms/internal/ads/zzgwe;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzgth;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v14

    move-wide v12, v3

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;)V

    goto/16 :goto_5

    :pswitch_34
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzC(IJ)V

    goto/16 :goto_5

    :pswitch_35
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzA(II)V

    goto/16 :goto_5

    :pswitch_36
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzy(IJ)V

    goto/16 :goto_5

    :pswitch_37
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzw(II)V

    goto/16 :goto_5

    :pswitch_38
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzi(II)V

    goto/16 :goto_5

    :pswitch_39
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzH(II)V

    goto/16 :goto_5

    :pswitch_3a
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgsr;

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzd(ILcom/google/android/gms/internal/ads/zzgsr;)V

    goto/16 :goto_5

    :pswitch_3b
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzx(I)Lcom/google/android/gms/internal/ads/zzgwc;

    move-result-object v1

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgwc;)V

    goto/16 :goto_5

    :pswitch_3c
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/ads/zzgvm;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzgth;)V

    goto/16 :goto_5

    :pswitch_3d
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzgxd;->zzz(Ljava/lang/Object;J)Z

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzb(IZ)V

    goto/16 :goto_5

    :pswitch_3e
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzk(II)V

    goto/16 :goto_5

    :pswitch_3f
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzm(IJ)V

    goto/16 :goto_5

    :pswitch_40
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzr(II)V

    goto/16 :goto_5

    :pswitch_41
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzJ(IJ)V

    goto :goto_5

    :pswitch_42
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzt(IJ)V

    goto :goto_5

    :pswitch_43
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzgxd;->zzc(Ljava/lang/Object;J)F

    move-result v0

    invoke-virtual {v8, v15, v0}, Lcom/google/android/gms/internal/ads/zzgth;->zzo(IF)V

    goto :goto_5

    :pswitch_44
    move-wide v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgvm;->zzO(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/ads/zzgxd;->zzb(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-virtual {v8, v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzgth;->zzf(ID)V

    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    const v12, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzn:Lcom/google/android/gms/internal/ads/zzgwt;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgwt;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzgwt;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgth;)V

    return-void

    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzgvm;->zzo:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgtm;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtq;

    throw v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
