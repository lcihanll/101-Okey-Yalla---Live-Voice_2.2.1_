.class final enum Lcom/unity3d/services/banners/UnityBannerSize$b;
.super Ljava/lang/Enum;
.source "UnityBannerSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/banners/UnityBannerSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/banners/UnityBannerSize$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/banners/UnityBannerSize$b;

.field public static final enum b:Lcom/unity3d/services/banners/UnityBannerSize$b;

.field public static final enum c:Lcom/unity3d/services/banners/UnityBannerSize$b;

.field public static final enum d:Lcom/unity3d/services/banners/UnityBannerSize$b;

.field private static final synthetic e:[Lcom/unity3d/services/banners/UnityBannerSize$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/unity3d/services/banners/UnityBannerSize$b;

    const-string v1, "BANNER_SIZE_STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/banners/UnityBannerSize$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/banners/UnityBannerSize$b;->a:Lcom/unity3d/services/banners/UnityBannerSize$b;

    new-instance v1, Lcom/unity3d/services/banners/UnityBannerSize$b;

    const-string v3, "BANNER_SIZE_LEADERBOARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/banners/UnityBannerSize$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/banners/UnityBannerSize$b;->b:Lcom/unity3d/services/banners/UnityBannerSize$b;

    new-instance v3, Lcom/unity3d/services/banners/UnityBannerSize$b;

    const-string v5, "BANNER_SIZE_IAB_STANDARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/banners/UnityBannerSize$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/banners/UnityBannerSize$b;->c:Lcom/unity3d/services/banners/UnityBannerSize$b;

    new-instance v5, Lcom/unity3d/services/banners/UnityBannerSize$b;

    const-string v7, "BANNER_SIZE_DYNAMIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/banners/UnityBannerSize$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/banners/UnityBannerSize$b;->d:Lcom/unity3d/services/banners/UnityBannerSize$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/unity3d/services/banners/UnityBannerSize$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/unity3d/services/banners/UnityBannerSize$b;->e:[Lcom/unity3d/services/banners/UnityBannerSize$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/unity3d/services/banners/UnityBannerSize$b;->b(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize$b;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/banners/UnityBannerSize$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 p1, 0x32

    return p1

    :cond_0
    const/16 p1, 0x3c

    return p1

    :cond_1
    const/16 p1, 0x5a

    return p1
.end method

.method static synthetic a(Lcom/unity3d/services/banners/UnityBannerSize$b;Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/banners/UnityBannerSize$b;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/unity3d/services/banners/UnityBannerSize$b;Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/banners/UnityBannerSize$b;->a(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private b(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize$b;
    .locals 1

    sget-object v0, Lcom/unity3d/services/banners/UnityBannerSize$b;->d:Lcom/unity3d/services/banners/UnityBannerSize$b;

    if-ne p0, v0, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/unity3d/services/core/misc/k;->a(Landroid/content/Context;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 v0, 0x2d8

    if-lt p1, v0, :cond_0

    sget-object p1, Lcom/unity3d/services/banners/UnityBannerSize$b;->b:Lcom/unity3d/services/banners/UnityBannerSize$b;

    return-object p1

    :cond_0
    const/16 v0, 0x1d4

    if-lt p1, v0, :cond_1

    sget-object p1, Lcom/unity3d/services/banners/UnityBannerSize$b;->c:Lcom/unity3d/services/banners/UnityBannerSize$b;

    return-object p1

    :cond_1
    sget-object p1, Lcom/unity3d/services/banners/UnityBannerSize$b;->a:Lcom/unity3d/services/banners/UnityBannerSize$b;

    return-object p1

    :cond_2
    return-object p0
.end method

.method private c(Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/unity3d/services/banners/UnityBannerSize$b;->b(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize$b;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/banners/UnityBannerSize$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 p1, 0x140

    return p1

    :cond_0
    const/16 p1, 0x1d4

    return p1

    :cond_1
    const/16 p1, 0x2d8

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/banners/UnityBannerSize$b;
    .locals 1

    const-class v0, Lcom/unity3d/services/banners/UnityBannerSize$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/banners/UnityBannerSize$b;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/banners/UnityBannerSize$b;
    .locals 1

    sget-object v0, Lcom/unity3d/services/banners/UnityBannerSize$b;->e:[Lcom/unity3d/services/banners/UnityBannerSize$b;

    invoke-virtual {v0}, [Lcom/unity3d/services/banners/UnityBannerSize$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/banners/UnityBannerSize$b;

    return-object v0
.end method
