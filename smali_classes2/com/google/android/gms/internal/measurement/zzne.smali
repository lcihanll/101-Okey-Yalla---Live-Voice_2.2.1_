.class public final enum Lcom/google/android/gms/internal/measurement/zzne;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@21.2.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzm:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzn:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzo:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzp:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzq:Lcom/google/android/gms/internal/measurement/zzne;

.field public static final enum zzr:Lcom/google/android/gms/internal/measurement/zzne;

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/measurement/zzne;


# instance fields
.field private final zzt:Lcom/google/android/gms/internal/measurement/zznf;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznf;->zzd:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zznf;->zzc:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzne;->zzb:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzne;->zzc:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzne;->zzd:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v9, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/zzne;->zze:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v11, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v13, "FIXED64"

    invoke-direct {v9, v13, v6, v11, v4}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/zzne;->zzf:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v13, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v11, Lcom/google/android/gms/internal/measurement/zzne;->zzg:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v13, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v14, Lcom/google/android/gms/internal/measurement/zznf;->zze:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v13, Lcom/google/android/gms/internal/measurement/zzne;->zzh:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v14, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v15, Lcom/google/android/gms/internal/measurement/zznf;->zzf:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v12, "STRING"

    const/16 v4, 0x8

    invoke-direct {v14, v12, v4, v15, v8}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/zzne;->zzi:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v12, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v15, Lcom/google/android/gms/internal/measurement/zznf;->zzi:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v12, v4, v6, v15, v10}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v12, Lcom/google/android/gms/internal/measurement/zzne;->zzj:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v15, Lcom/google/android/gms/internal/measurement/zznf;->zzi:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v6, "MESSAGE"

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzne;->zzk:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v15, Lcom/google/android/gms/internal/measurement/zznf;->zzg:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzne;->zzl:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v15, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v3, "UINT32"

    const/16 v8, 0xc

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v10, v3, v8, v15, v6}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v10, Lcom/google/android/gms/internal/measurement/zzne;->zzm:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v15, Lcom/google/android/gms/internal/measurement/zznf;->zzh:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v8, "ENUM"

    move-object/from16 v17, v10

    const/16 v10, 0xd

    invoke-direct {v3, v8, v10, v15, v6}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzne;->zzn:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v15, "SFIXED32"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-direct {v6, v15, v10, v8, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzne;->zzo:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v15, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v10, v8, v6}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzne;->zzp:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v15, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v6, v15, v10, v8, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzne;->zzq:Lcom/google/android/gms/internal/measurement/zzne;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzne;

    sget-object v15, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    const-string v10, "SINT64"

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v8, v10, v6, v15, v3}, Lcom/google/android/gms/internal/measurement/zzne;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zzne;->zzr:Lcom/google/android/gms/internal/measurement/zzne;

    const/16 v10, 0x12

    new-array v10, v10, [Lcom/google/android/gms/internal/measurement/zzne;

    aput-object v0, v10, v3

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v14, v10, v0

    const/16 v0, 0x9

    aput-object v12, v10, v0

    const/16 v0, 0xa

    aput-object v4, v10, v0

    const/16 v0, 0xb

    aput-object v16, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    aput-object v8, v10, v6

    sput-object v10, Lcom/google/android/gms/internal/measurement/zzne;->zzs:[Lcom/google/android/gms/internal/measurement/zzne;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznf;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzne;->zzt:Lcom/google/android/gms/internal/measurement/zznf;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzne;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zzs:[Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzne;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzne;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zznf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzne;->zzt:Lcom/google/android/gms/internal/measurement/zznf;

    return-object v0
.end method
