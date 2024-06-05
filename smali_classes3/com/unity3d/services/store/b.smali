.class public final enum Lcom/unity3d/services/store/b;
.super Ljava/lang/Enum;
.source "StoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/store/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/store/b;

.field public static final enum b:Lcom/unity3d/services/store/b;

.field public static final enum c:Lcom/unity3d/services/store/b;

.field public static final enum d:Lcom/unity3d/services/store/b;

.field public static final enum e:Lcom/unity3d/services/store/b;

.field public static final enum f:Lcom/unity3d/services/store/b;

.field public static final enum g:Lcom/unity3d/services/store/b;

.field public static final enum h:Lcom/unity3d/services/store/b;

.field public static final enum i:Lcom/unity3d/services/store/b;

.field public static final enum j:Lcom/unity3d/services/store/b;

.field public static final enum k:Lcom/unity3d/services/store/b;

.field public static final enum l:Lcom/unity3d/services/store/b;

.field public static final enum m:Lcom/unity3d/services/store/b;

.field public static final enum n:Lcom/unity3d/services/store/b;

.field public static final enum o:Lcom/unity3d/services/store/b;

.field private static final synthetic p:[Lcom/unity3d/services/store/b;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/unity3d/services/store/b;

    const-string v1, "INITIALIZATION_REQUEST_RESULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/b;->a:Lcom/unity3d/services/store/b;

    new-instance v1, Lcom/unity3d/services/store/b;

    const-string v3, "INITIALIZATION_REQUEST_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/store/b;->b:Lcom/unity3d/services/store/b;

    new-instance v3, Lcom/unity3d/services/store/b;

    const-string v5, "DISCONNECTED_RESULT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/store/b;->c:Lcom/unity3d/services/store/b;

    new-instance v5, Lcom/unity3d/services/store/b;

    const-string v7, "PURCHASES_ON_RESUME_RESULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/store/b;->d:Lcom/unity3d/services/store/b;

    new-instance v7, Lcom/unity3d/services/store/b;

    const-string v9, "PURCHASES_ON_RESUME_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/store/b;->e:Lcom/unity3d/services/store/b;

    new-instance v9, Lcom/unity3d/services/store/b;

    const-string v11, "PURCHASES_UPDATED_RESULT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/store/b;->f:Lcom/unity3d/services/store/b;

    new-instance v11, Lcom/unity3d/services/store/b;

    const-string v13, "PURCHASES_UPDATED_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/store/b;->g:Lcom/unity3d/services/store/b;

    new-instance v13, Lcom/unity3d/services/store/b;

    const-string v15, "PURCHASES_REQUEST_RESULT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/store/b;->h:Lcom/unity3d/services/store/b;

    new-instance v15, Lcom/unity3d/services/store/b;

    const-string v14, "PURCHASES_REQUEST_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/services/store/b;->i:Lcom/unity3d/services/store/b;

    new-instance v14, Lcom/unity3d/services/store/b;

    const-string v12, "PURCHASE_HISTORY_LIST_REQUEST_RESULT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/store/b;->j:Lcom/unity3d/services/store/b;

    new-instance v12, Lcom/unity3d/services/store/b;

    const-string v10, "PURCHASE_HISTORY_LIST_REQUEST_ERROR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/services/store/b;->k:Lcom/unity3d/services/store/b;

    new-instance v10, Lcom/unity3d/services/store/b;

    const-string v8, "SKU_DETAILS_LIST_REQUEST_RESULT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/services/store/b;->l:Lcom/unity3d/services/store/b;

    new-instance v8, Lcom/unity3d/services/store/b;

    const-string v6, "SKU_DETAILS_LIST_REQUEST_ERROR"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/services/store/b;->m:Lcom/unity3d/services/store/b;

    new-instance v6, Lcom/unity3d/services/store/b;

    const-string v4, "IS_FEATURE_SUPPORTED_REQUEST_RESULT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/store/b;->n:Lcom/unity3d/services/store/b;

    new-instance v4, Lcom/unity3d/services/store/b;

    const-string v2, "IS_FEATURE_SUPPORTED_REQUEST_ERROR"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/unity3d/services/store/b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/services/store/b;->o:Lcom/unity3d/services/store/b;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/unity3d/services/store/b;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/unity3d/services/store/b;->p:[Lcom/unity3d/services/store/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/store/b;
    .locals 1

    const-class v0, Lcom/unity3d/services/store/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/store/b;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/store/b;
    .locals 1

    sget-object v0, Lcom/unity3d/services/store/b;->p:[Lcom/unity3d/services/store/b;

    invoke-virtual {v0}, [Lcom/unity3d/services/store/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/store/b;

    return-object v0
.end method
