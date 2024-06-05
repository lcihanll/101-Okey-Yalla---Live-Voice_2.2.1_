.class public final enum Lcom/unity3d/services/core/connectivity/b;
.super Ljava/lang/Enum;
.source "ConnectivityEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/connectivity/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/connectivity/b;

.field public static final enum b:Lcom/unity3d/services/core/connectivity/b;

.field public static final enum c:Lcom/unity3d/services/core/connectivity/b;

.field private static final synthetic d:[Lcom/unity3d/services/core/connectivity/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/unity3d/services/core/connectivity/b;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/connectivity/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/connectivity/b;->a:Lcom/unity3d/services/core/connectivity/b;

    new-instance v1, Lcom/unity3d/services/core/connectivity/b;

    const-string v3, "DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/connectivity/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/connectivity/b;->b:Lcom/unity3d/services/core/connectivity/b;

    new-instance v3, Lcom/unity3d/services/core/connectivity/b;

    const-string v5, "NETWORK_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/connectivity/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/connectivity/b;->c:Lcom/unity3d/services/core/connectivity/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/unity3d/services/core/connectivity/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unity3d/services/core/connectivity/b;->d:[Lcom/unity3d/services/core/connectivity/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/connectivity/b;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/connectivity/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/connectivity/b;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/connectivity/b;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/connectivity/b;->d:[Lcom/unity3d/services/core/connectivity/b;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/connectivity/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/connectivity/b;

    return-object v0
.end method
