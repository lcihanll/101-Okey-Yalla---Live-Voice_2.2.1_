.class public final enum Lcom/unity3d/services/core/device/h;
.super Ljava/lang/Enum;
.source "StorageEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/device/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/device/h;

.field public static final enum b:Lcom/unity3d/services/core/device/h;

.field public static final enum c:Lcom/unity3d/services/core/device/h;

.field public static final enum d:Lcom/unity3d/services/core/device/h;

.field public static final enum e:Lcom/unity3d/services/core/device/h;

.field public static final enum f:Lcom/unity3d/services/core/device/h;

.field private static final synthetic g:[Lcom/unity3d/services/core/device/h;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/unity3d/services/core/device/h;

    const-string v1, "SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/device/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/device/h;->a:Lcom/unity3d/services/core/device/h;

    new-instance v1, Lcom/unity3d/services/core/device/h;

    const-string v3, "DELETE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/device/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/device/h;->b:Lcom/unity3d/services/core/device/h;

    new-instance v3, Lcom/unity3d/services/core/device/h;

    const-string v5, "CLEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/device/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/device/h;->c:Lcom/unity3d/services/core/device/h;

    new-instance v5, Lcom/unity3d/services/core/device/h;

    const-string v7, "WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/device/h;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/device/h;->d:Lcom/unity3d/services/core/device/h;

    new-instance v7, Lcom/unity3d/services/core/device/h;

    const-string v9, "READ"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/core/device/h;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/device/h;->e:Lcom/unity3d/services/core/device/h;

    new-instance v9, Lcom/unity3d/services/core/device/h;

    const-string v11, "INIT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/core/device/h;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/core/device/h;->f:Lcom/unity3d/services/core/device/h;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/unity3d/services/core/device/h;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/unity3d/services/core/device/h;->g:[Lcom/unity3d/services/core/device/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/device/h;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/device/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/device/h;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/device/h;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/device/h;->g:[Lcom/unity3d/services/core/device/h;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/device/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/device/h;

    return-object v0
.end method