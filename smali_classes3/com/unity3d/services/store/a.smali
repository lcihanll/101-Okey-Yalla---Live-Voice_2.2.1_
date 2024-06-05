.class public final enum Lcom/unity3d/services/store/a;
.super Ljava/lang/Enum;
.source "StoreError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/store/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/store/a;

.field public static final enum b:Lcom/unity3d/services/store/a;

.field public static final enum c:Lcom/unity3d/services/store/a;

.field public static final enum d:Lcom/unity3d/services/store/a;

.field public static final enum e:Lcom/unity3d/services/store/a;

.field public static final enum f:Lcom/unity3d/services/store/a;

.field public static final enum g:Lcom/unity3d/services/store/a;

.field public static final enum h:Lcom/unity3d/services/store/a;

.field private static final synthetic i:[Lcom/unity3d/services/store/a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/unity3d/services/store/a;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/store/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/store/a;->a:Lcom/unity3d/services/store/a;

    new-instance v1, Lcom/unity3d/services/store/a;

    const-string v3, "CLASS_NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/store/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/store/a;->b:Lcom/unity3d/services/store/a;

    new-instance v3, Lcom/unity3d/services/store/a;

    const-string v5, "NO_SUCH_METHOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/store/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/store/a;->c:Lcom/unity3d/services/store/a;

    new-instance v5, Lcom/unity3d/services/store/a;

    const-string v7, "INVOCATION_TARGET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/store/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/store/a;->d:Lcom/unity3d/services/store/a;

    new-instance v7, Lcom/unity3d/services/store/a;

    const-string v9, "ILLEGAL_ACCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/store/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/store/a;->e:Lcom/unity3d/services/store/a;

    new-instance v9, Lcom/unity3d/services/store/a;

    const-string v11, "JSON_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/store/a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/store/a;->f:Lcom/unity3d/services/store/a;

    new-instance v11, Lcom/unity3d/services/store/a;

    const-string v13, "STORE_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/store/a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/store/a;->g:Lcom/unity3d/services/store/a;

    new-instance v13, Lcom/unity3d/services/store/a;

    const-string v15, "UNKNOWN_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/services/store/a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/store/a;->h:Lcom/unity3d/services/store/a;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/unity3d/services/store/a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/unity3d/services/store/a;->i:[Lcom/unity3d/services/store/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/store/a;
    .locals 1

    const-class v0, Lcom/unity3d/services/store/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/store/a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/store/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/store/a;->i:[Lcom/unity3d/services/store/a;

    invoke-virtual {v0}, [Lcom/unity3d/services/store/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/store/a;

    return-object v0
.end method
