.class public final enum Lcom/unity3d/services/core/request/i;
.super Ljava/lang/Enum;
.source "WebRequestError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/request/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/request/i;

.field private static final synthetic b:[Lcom/unity3d/services/core/request/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unity3d/services/core/request/i;

    const-string v1, "MAPPING_HEADERS_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/request/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/request/i;->a:Lcom/unity3d/services/core/request/i;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/unity3d/services/core/request/i;

    aput-object v0, v1, v2

    sput-object v1, Lcom/unity3d/services/core/request/i;->b:[Lcom/unity3d/services/core/request/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/request/i;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/request/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/request/i;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/request/i;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/request/i;->b:[Lcom/unity3d/services/core/request/i;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/request/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/request/i;

    return-object v0
.end method
