.class public final enum Lcom/unity3d/services/ads/adunit/b;
.super Ljava/lang/Enum;
.source "AdUnitEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/ads/adunit/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum b:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum c:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum d:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum e:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum f:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum g:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum h:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum i:Lcom/unity3d/services/ads/adunit/b;

.field public static final enum j:Lcom/unity3d/services/ads/adunit/b;

.field private static final synthetic k:[Lcom/unity3d/services/ads/adunit/b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/unity3d/services/ads/adunit/b;

    const-string v1, "ON_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/adunit/b;->a:Lcom/unity3d/services/ads/adunit/b;

    new-instance v1, Lcom/unity3d/services/ads/adunit/b;

    const-string v3, "ON_CREATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/adunit/b;->b:Lcom/unity3d/services/ads/adunit/b;

    new-instance v3, Lcom/unity3d/services/ads/adunit/b;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/ads/adunit/b;->c:Lcom/unity3d/services/ads/adunit/b;

    new-instance v5, Lcom/unity3d/services/ads/adunit/b;

    const-string v7, "ON_DESTROY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/ads/adunit/b;->d:Lcom/unity3d/services/ads/adunit/b;

    new-instance v7, Lcom/unity3d/services/ads/adunit/b;

    const-string v9, "ON_PAUSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/ads/adunit/b;->e:Lcom/unity3d/services/ads/adunit/b;

    new-instance v9, Lcom/unity3d/services/ads/adunit/b;

    const-string v11, "KEY_DOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/ads/adunit/b;->f:Lcom/unity3d/services/ads/adunit/b;

    new-instance v11, Lcom/unity3d/services/ads/adunit/b;

    const-string v13, "ON_RESTORE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/ads/adunit/b;->g:Lcom/unity3d/services/ads/adunit/b;

    new-instance v13, Lcom/unity3d/services/ads/adunit/b;

    const-string v15, "ON_STOP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/ads/adunit/b;->h:Lcom/unity3d/services/ads/adunit/b;

    new-instance v15, Lcom/unity3d/services/ads/adunit/b;

    const-string v14, "ON_FOCUS_GAINED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/services/ads/adunit/b;->i:Lcom/unity3d/services/ads/adunit/b;

    new-instance v14, Lcom/unity3d/services/ads/adunit/b;

    const-string v12, "ON_FOCUS_LOST"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/unity3d/services/ads/adunit/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/ads/adunit/b;->j:Lcom/unity3d/services/ads/adunit/b;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/unity3d/services/ads/adunit/b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/unity3d/services/ads/adunit/b;->k:[Lcom/unity3d/services/ads/adunit/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/b;
    .locals 1

    const-class v0, Lcom/unity3d/services/ads/adunit/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/ads/adunit/b;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/ads/adunit/b;
    .locals 1

    sget-object v0, Lcom/unity3d/services/ads/adunit/b;->k:[Lcom/unity3d/services/ads/adunit/b;

    invoke-virtual {v0}, [Lcom/unity3d/services/ads/adunit/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/ads/adunit/b;

    return-object v0
.end method
