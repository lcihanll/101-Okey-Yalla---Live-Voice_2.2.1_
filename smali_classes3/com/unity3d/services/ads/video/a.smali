.class public final enum Lcom/unity3d/services/ads/video/a;
.super Ljava/lang/Enum;
.source "VideoPlayerError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/ads/video/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/ads/video/a;

.field public static final enum b:Lcom/unity3d/services/ads/video/a;

.field public static final enum c:Lcom/unity3d/services/ads/video/a;

.field private static final synthetic d:[Lcom/unity3d/services/ads/video/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/unity3d/services/ads/video/a;

    const-string v1, "VIDEOVIEW_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/video/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/video/a;->a:Lcom/unity3d/services/ads/video/a;

    new-instance v1, Lcom/unity3d/services/ads/video/a;

    const-string v3, "PREPARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/ads/video/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/video/a;->b:Lcom/unity3d/services/ads/video/a;

    new-instance v3, Lcom/unity3d/services/ads/video/a;

    const-string v5, "API_LEVEL_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/ads/video/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/ads/video/a;->c:Lcom/unity3d/services/ads/video/a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/unity3d/services/ads/video/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unity3d/services/ads/video/a;->d:[Lcom/unity3d/services/ads/video/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/ads/video/a;
    .locals 1

    const-class v0, Lcom/unity3d/services/ads/video/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/ads/video/a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/ads/video/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/ads/video/a;->d:[Lcom/unity3d/services/ads/video/a;

    invoke-virtual {v0}, [Lcom/unity3d/services/ads/video/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/ads/video/a;

    return-object v0
.end method
