.class public final enum Lcom/unity3d/services/core/lifecycle/d;
.super Ljava/lang/Enum;
.source "LifecycleError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/lifecycle/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/lifecycle/d;

.field public static final enum b:Lcom/unity3d/services/core/lifecycle/d;

.field public static final enum c:Lcom/unity3d/services/core/lifecycle/d;

.field private static final synthetic d:[Lcom/unity3d/services/core/lifecycle/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/unity3d/services/core/lifecycle/d;

    const-string v1, "APPLICATION_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/lifecycle/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/lifecycle/d;->a:Lcom/unity3d/services/core/lifecycle/d;

    new-instance v1, Lcom/unity3d/services/core/lifecycle/d;

    const-string v3, "LISTENER_NOT_NULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/lifecycle/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/lifecycle/d;->b:Lcom/unity3d/services/core/lifecycle/d;

    new-instance v3, Lcom/unity3d/services/core/lifecycle/d;

    const-string v5, "JSON_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/lifecycle/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/lifecycle/d;->c:Lcom/unity3d/services/core/lifecycle/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/unity3d/services/core/lifecycle/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unity3d/services/core/lifecycle/d;->d:[Lcom/unity3d/services/core/lifecycle/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/lifecycle/d;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/lifecycle/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/lifecycle/d;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/lifecycle/d;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/lifecycle/d;->d:[Lcom/unity3d/services/core/lifecycle/d;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/lifecycle/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/lifecycle/d;

    return-object v0
.end method
