.class public final enum Lcom/unity3d/services/core/cache/c;
.super Ljava/lang/Enum;
.source "CacheError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/cache/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/cache/c;

.field public static final enum b:Lcom/unity3d/services/core/cache/c;

.field public static final enum c:Lcom/unity3d/services/core/cache/c;

.field public static final enum d:Lcom/unity3d/services/core/cache/c;

.field public static final enum e:Lcom/unity3d/services/core/cache/c;

.field public static final enum f:Lcom/unity3d/services/core/cache/c;

.field public static final enum g:Lcom/unity3d/services/core/cache/c;

.field public static final enum h:Lcom/unity3d/services/core/cache/c;

.field public static final enum i:Lcom/unity3d/services/core/cache/c;

.field public static final enum j:Lcom/unity3d/services/core/cache/c;

.field public static final enum k:Lcom/unity3d/services/core/cache/c;

.field public static final enum l:Lcom/unity3d/services/core/cache/c;

.field public static final enum m:Lcom/unity3d/services/core/cache/c;

.field public static final enum n:Lcom/unity3d/services/core/cache/c;

.field public static final enum o:Lcom/unity3d/services/core/cache/c;

.field public static final enum p:Lcom/unity3d/services/core/cache/c;

.field public static final enum q:Lcom/unity3d/services/core/cache/c;

.field private static final synthetic r:[Lcom/unity3d/services/core/cache/c;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/unity3d/services/core/cache/c;

    const-string v1, "FILE_IO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    new-instance v1, Lcom/unity3d/services/core/cache/c;

    const-string v3, "FILE_NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/cache/c;->b:Lcom/unity3d/services/core/cache/c;

    new-instance v3, Lcom/unity3d/services/core/cache/c;

    const-string v5, "FILE_ALREADY_CACHING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/cache/c;->c:Lcom/unity3d/services/core/cache/c;

    new-instance v5, Lcom/unity3d/services/core/cache/c;

    const-string v7, "NOT_CACHING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/cache/c;->d:Lcom/unity3d/services/core/cache/c;

    new-instance v7, Lcom/unity3d/services/core/cache/c;

    const-string v9, "JSON_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/cache/c;->e:Lcom/unity3d/services/core/cache/c;

    new-instance v9, Lcom/unity3d/services/core/cache/c;

    const-string v11, "NO_INTERNET"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/core/cache/c;->f:Lcom/unity3d/services/core/cache/c;

    new-instance v11, Lcom/unity3d/services/core/cache/c;

    const-string v13, "MALFORMED_URL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/core/cache/c;->g:Lcom/unity3d/services/core/cache/c;

    new-instance v13, Lcom/unity3d/services/core/cache/c;

    const-string v15, "NETWORK_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/core/cache/c;->h:Lcom/unity3d/services/core/cache/c;

    new-instance v15, Lcom/unity3d/services/core/cache/c;

    const-string v14, "ILLEGAL_STATE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/services/core/cache/c;->i:Lcom/unity3d/services/core/cache/c;

    new-instance v14, Lcom/unity3d/services/core/cache/c;

    const-string v12, "INVALID_ARGUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/core/cache/c;->j:Lcom/unity3d/services/core/cache/c;

    new-instance v12, Lcom/unity3d/services/core/cache/c;

    const-string v10, "UNSUPPORTED_ENCODING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/services/core/cache/c;->k:Lcom/unity3d/services/core/cache/c;

    new-instance v10, Lcom/unity3d/services/core/cache/c;

    const-string v8, "FILE_STATE_WRONG"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/services/core/cache/c;->l:Lcom/unity3d/services/core/cache/c;

    new-instance v8, Lcom/unity3d/services/core/cache/c;

    const-string v6, "CACHE_DIRECTORY_NULL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/services/core/cache/c;->m:Lcom/unity3d/services/core/cache/c;

    new-instance v6, Lcom/unity3d/services/core/cache/c;

    const-string v4, "CACHE_DIRECTORY_TYPE_NULL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/core/cache/c;->n:Lcom/unity3d/services/core/cache/c;

    new-instance v4, Lcom/unity3d/services/core/cache/c;

    const-string v2, "CACHE_DIRECTORY_EXISTS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/services/core/cache/c;->o:Lcom/unity3d/services/core/cache/c;

    new-instance v2, Lcom/unity3d/services/core/cache/c;

    const-string v6, "CACHE_DIRECTORY_DOESNT_EXIST"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/core/cache/c;->p:Lcom/unity3d/services/core/cache/c;

    new-instance v6, Lcom/unity3d/services/core/cache/c;

    const-string v4, "UNKNOWN_ERROR"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/unity3d/services/core/cache/c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/core/cache/c;->q:Lcom/unity3d/services/core/cache/c;

    const/16 v4, 0x11

    new-array v4, v4, [Lcom/unity3d/services/core/cache/c;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/unity3d/services/core/cache/c;->r:[Lcom/unity3d/services/core/cache/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/cache/c;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/cache/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/cache/c;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/cache/c;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/cache/c;->r:[Lcom/unity3d/services/core/cache/c;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/cache/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/cache/c;

    return-object v0
.end method
