.class public final enum Lcom/unity3d/services/analytics/interfaces/a;
.super Ljava/lang/Enum;
.source "AnalyticsError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/analytics/interfaces/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/analytics/interfaces/a;

.field private static final synthetic b:[Lcom/unity3d/services/analytics/interfaces/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unity3d/services/analytics/interfaces/a;

    const-string v1, "API_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/analytics/interfaces/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/analytics/interfaces/a;->a:Lcom/unity3d/services/analytics/interfaces/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/unity3d/services/analytics/interfaces/a;

    aput-object v0, v1, v2

    sput-object v1, Lcom/unity3d/services/analytics/interfaces/a;->b:[Lcom/unity3d/services/analytics/interfaces/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/analytics/interfaces/a;
    .locals 1

    const-class v0, Lcom/unity3d/services/analytics/interfaces/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/analytics/interfaces/a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/analytics/interfaces/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/analytics/interfaces/a;->b:[Lcom/unity3d/services/analytics/interfaces/a;

    invoke-virtual {v0}, [Lcom/unity3d/services/analytics/interfaces/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/analytics/interfaces/a;

    return-object v0
.end method
