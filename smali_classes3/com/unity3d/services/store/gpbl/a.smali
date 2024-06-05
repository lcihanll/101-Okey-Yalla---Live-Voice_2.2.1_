.class public final enum Lcom/unity3d/services/store/gpbl/a;
.super Ljava/lang/Enum;
.source "BillingResultResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/store/gpbl/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum b:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum c:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum d:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum e:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum f:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum g:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum h:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum i:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum j:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum k:Lcom/unity3d/services/store/gpbl/a;

.field public static final enum l:Lcom/unity3d/services/store/gpbl/a;

.field private static final synthetic m:[Lcom/unity3d/services/store/gpbl/a;


# instance fields
.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/unity3d/services/store/gpbl/a;

    const-string v1, "SERVICE_TIMEOUT"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/services/store/gpbl/a;->a:Lcom/unity3d/services/store/gpbl/a;

    new-instance v1, Lcom/unity3d/services/store/gpbl/a;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/unity3d/services/store/gpbl/a;->b:Lcom/unity3d/services/store/gpbl/a;

    new-instance v3, Lcom/unity3d/services/store/gpbl/a;

    const-string v5, "SERVICE_DISCONNECTED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/unity3d/services/store/gpbl/a;->c:Lcom/unity3d/services/store/gpbl/a;

    new-instance v5, Lcom/unity3d/services/store/gpbl/a;

    const-string v7, "OK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/unity3d/services/store/gpbl/a;->d:Lcom/unity3d/services/store/gpbl/a;

    new-instance v7, Lcom/unity3d/services/store/gpbl/a;

    const-string v9, "USER_CANCELED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/unity3d/services/store/gpbl/a;->e:Lcom/unity3d/services/store/gpbl/a;

    new-instance v9, Lcom/unity3d/services/store/gpbl/a;

    const-string v11, "SERVICE_UNAVAILABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v6}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/unity3d/services/store/gpbl/a;->f:Lcom/unity3d/services/store/gpbl/a;

    new-instance v11, Lcom/unity3d/services/store/gpbl/a;

    const-string v13, "BILLING_UNAVAILABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v8}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/unity3d/services/store/gpbl/a;->g:Lcom/unity3d/services/store/gpbl/a;

    new-instance v13, Lcom/unity3d/services/store/gpbl/a;

    const-string v15, "ITEM_UNAVAILABLE"

    const/4 v8, 0x7

    invoke-direct {v13, v15, v8, v10}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/unity3d/services/store/gpbl/a;->h:Lcom/unity3d/services/store/gpbl/a;

    new-instance v15, Lcom/unity3d/services/store/gpbl/a;

    const-string v10, "DEVELOPER_ERROR"

    const/16 v6, 0x8

    invoke-direct {v15, v10, v6, v12}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/unity3d/services/store/gpbl/a;->i:Lcom/unity3d/services/store/gpbl/a;

    new-instance v10, Lcom/unity3d/services/store/gpbl/a;

    const-string v12, "ERROR"

    const/16 v4, 0x9

    invoke-direct {v10, v12, v4, v14}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/unity3d/services/store/gpbl/a;->j:Lcom/unity3d/services/store/gpbl/a;

    new-instance v12, Lcom/unity3d/services/store/gpbl/a;

    const-string v4, "ITEM_ALREADY_OWNED"

    const/16 v14, 0xa

    invoke-direct {v12, v4, v14, v8}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/unity3d/services/store/gpbl/a;->k:Lcom/unity3d/services/store/gpbl/a;

    new-instance v4, Lcom/unity3d/services/store/gpbl/a;

    const-string v14, "ITEM_NOT_OWNED"

    const/16 v8, 0xb

    invoke-direct {v4, v14, v8, v6}, Lcom/unity3d/services/store/gpbl/a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/unity3d/services/store/gpbl/a;->l:Lcom/unity3d/services/store/gpbl/a;

    const/16 v14, 0xc

    new-array v14, v14, [Lcom/unity3d/services/store/gpbl/a;

    aput-object v0, v14, v2

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v6

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    aput-object v4, v14, v8

    sput-object v14, Lcom/unity3d/services/store/gpbl/a;->m:[Lcom/unity3d/services/store/gpbl/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/unity3d/services/store/gpbl/a;->n:I

    return-void
.end method

.method public static a(I)Lcom/unity3d/services/store/gpbl/a;
    .locals 5

    invoke-static {}, Lcom/unity3d/services/store/gpbl/a;->values()[Lcom/unity3d/services/store/gpbl/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/unity3d/services/store/gpbl/a;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/a;
    .locals 1

    const-class v0, Lcom/unity3d/services/store/gpbl/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/store/gpbl/a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/store/gpbl/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/store/gpbl/a;->m:[Lcom/unity3d/services/store/gpbl/a;

    invoke-virtual {v0}, [Lcom/unity3d/services/store/gpbl/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/store/gpbl/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/store/gpbl/a;->n:I

    return v0
.end method
