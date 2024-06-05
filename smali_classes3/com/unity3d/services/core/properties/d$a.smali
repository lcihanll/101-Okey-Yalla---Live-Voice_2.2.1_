.class public final enum Lcom/unity3d/services/core/properties/d$a;
.super Ljava/lang/Enum;
.source "SdkProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/properties/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/properties/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/properties/d$a;

.field public static final enum b:Lcom/unity3d/services/core/properties/d$a;

.field public static final enum c:Lcom/unity3d/services/core/properties/d$a;

.field public static final enum d:Lcom/unity3d/services/core/properties/d$a;

.field private static final synthetic e:[Lcom/unity3d/services/core/properties/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/unity3d/services/core/properties/d$a;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/properties/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/properties/d$a;->a:Lcom/unity3d/services/core/properties/d$a;

    new-instance v1, Lcom/unity3d/services/core/properties/d$a;

    const-string v3, "INITIALIZING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/properties/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/properties/d$a;->b:Lcom/unity3d/services/core/properties/d$a;

    new-instance v3, Lcom/unity3d/services/core/properties/d$a;

    const-string v5, "INITIALIZED_SUCCESSFULLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/properties/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/properties/d$a;->c:Lcom/unity3d/services/core/properties/d$a;

    new-instance v5, Lcom/unity3d/services/core/properties/d$a;

    const-string v7, "INITIALIZED_FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/properties/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/properties/d$a;->d:Lcom/unity3d/services/core/properties/d$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/unity3d/services/core/properties/d$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/unity3d/services/core/properties/d$a;->e:[Lcom/unity3d/services/core/properties/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/properties/d$a;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/properties/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/properties/d$a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/properties/d$a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/properties/d$a;->e:[Lcom/unity3d/services/core/properties/d$a;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/properties/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/properties/d$a;

    return-object v0
.end method
