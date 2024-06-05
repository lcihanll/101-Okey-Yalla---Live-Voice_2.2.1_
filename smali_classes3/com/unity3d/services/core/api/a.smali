.class final enum Lcom/unity3d/services/core/api/a;
.super Ljava/lang/Enum;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/api/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/api/a;

.field public static final enum b:Lcom/unity3d/services/core/api/a;

.field public static final enum c:Lcom/unity3d/services/core/api/a;

.field public static final enum d:Lcom/unity3d/services/core/api/a;

.field private static final synthetic e:[Lcom/unity3d/services/core/api/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/unity3d/services/core/api/a;

    const-string v1, "COULDNT_GET_PERMISSIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/api/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/api/a;->a:Lcom/unity3d/services/core/api/a;

    new-instance v1, Lcom/unity3d/services/core/api/a;

    const-string v3, "NO_REQUESTED_PERMISSIONS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/api/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/api/a;->b:Lcom/unity3d/services/core/api/a;

    new-instance v3, Lcom/unity3d/services/core/api/a;

    const-string v5, "ERROR_CHECKING_PERMISSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/api/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/api/a;->c:Lcom/unity3d/services/core/api/a;

    new-instance v5, Lcom/unity3d/services/core/api/a;

    const-string v7, "ERROR_REQUESTING_PERMISSIONS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/api/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/api/a;->d:Lcom/unity3d/services/core/api/a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/unity3d/services/core/api/a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/unity3d/services/core/api/a;->e:[Lcom/unity3d/services/core/api/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/api/a;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/api/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/api/a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/api/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/api/a;->e:[Lcom/unity3d/services/core/api/a;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/api/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/api/a;

    return-object v0
.end method
