.class public final enum Lcom/unity3d/services/core/lifecycle/e;
.super Ljava/lang/Enum;
.source "LifecycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/lifecycle/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/lifecycle/e;

.field public static final enum b:Lcom/unity3d/services/core/lifecycle/e;

.field public static final enum c:Lcom/unity3d/services/core/lifecycle/e;

.field public static final enum d:Lcom/unity3d/services/core/lifecycle/e;

.field public static final enum e:Lcom/unity3d/services/core/lifecycle/e;

.field public static final enum f:Lcom/unity3d/services/core/lifecycle/e;

.field public static final enum g:Lcom/unity3d/services/core/lifecycle/e;

.field private static final synthetic h:[Lcom/unity3d/services/core/lifecycle/e;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/unity3d/services/core/lifecycle/e;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/lifecycle/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/lifecycle/e;->a:Lcom/unity3d/services/core/lifecycle/e;

    new-instance v1, Lcom/unity3d/services/core/lifecycle/e;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/lifecycle/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/lifecycle/e;->b:Lcom/unity3d/services/core/lifecycle/e;

    new-instance v3, Lcom/unity3d/services/core/lifecycle/e;

    const-string v5, "RESUMED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/lifecycle/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/lifecycle/e;->c:Lcom/unity3d/services/core/lifecycle/e;

    new-instance v5, Lcom/unity3d/services/core/lifecycle/e;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/lifecycle/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/lifecycle/e;->d:Lcom/unity3d/services/core/lifecycle/e;

    new-instance v7, Lcom/unity3d/services/core/lifecycle/e;

    const-string v9, "STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/core/lifecycle/e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/lifecycle/e;->e:Lcom/unity3d/services/core/lifecycle/e;

    new-instance v9, Lcom/unity3d/services/core/lifecycle/e;

    const-string v11, "SAVE_INSTANCE_STATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/core/lifecycle/e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/core/lifecycle/e;->f:Lcom/unity3d/services/core/lifecycle/e;

    new-instance v11, Lcom/unity3d/services/core/lifecycle/e;

    const-string v13, "DESTROYED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/core/lifecycle/e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/core/lifecycle/e;->g:Lcom/unity3d/services/core/lifecycle/e;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/unity3d/services/core/lifecycle/e;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/unity3d/services/core/lifecycle/e;->h:[Lcom/unity3d/services/core/lifecycle/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/lifecycle/e;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/lifecycle/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/lifecycle/e;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/lifecycle/e;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/lifecycle/e;->h:[Lcom/unity3d/services/core/lifecycle/e;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/lifecycle/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/lifecycle/e;

    return-object v0
.end method
