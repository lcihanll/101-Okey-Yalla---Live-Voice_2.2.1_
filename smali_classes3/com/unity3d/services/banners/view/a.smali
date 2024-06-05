.class public final enum Lcom/unity3d/services/banners/view/a;
.super Ljava/lang/Enum;
.source "BannerPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/banners/view/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/banners/view/a;

.field public static final enum b:Lcom/unity3d/services/banners/view/a;

.field public static final enum c:Lcom/unity3d/services/banners/view/a;

.field public static final enum d:Lcom/unity3d/services/banners/view/a;

.field public static final enum e:Lcom/unity3d/services/banners/view/a;

.field public static final enum f:Lcom/unity3d/services/banners/view/a;

.field public static final enum g:Lcom/unity3d/services/banners/view/a;

.field public static final enum h:Lcom/unity3d/services/banners/view/a;

.field private static final synthetic i:[Lcom/unity3d/services/banners/view/a;


# instance fields
.field private final j:[I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/unity3d/services/banners/view/a;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "TOP_LEFT"

    const/4 v4, 0x0

    const/16 v5, 0x33

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/unity3d/services/banners/view/a;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/unity3d/services/banners/view/a;->a:Lcom/unity3d/services/banners/view/a;

    new-instance v2, Lcom/unity3d/services/banners/view/a;

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    const-string v5, "TOP_CENTER"

    const/4 v6, 0x1

    const/16 v7, 0x31

    invoke-direct {v2, v5, v6, v3, v7}, Lcom/unity3d/services/banners/view/a;-><init>(Ljava/lang/String;I[II)V

    sput-object v2, Lcom/unity3d/services/banners/view/a;->b:Lcom/unity3d/services/banners/view/a;

    new-instance v3, Lcom/unity3d/services/banners/view/a;

    new-array v5, v1, [I

    fill-array-data v5, :array_2

    const-string v7, "TOP_RIGHT"

    const/16 v8, 0x35

    invoke-direct {v3, v7, v1, v5, v8}, Lcom/unity3d/services/banners/view/a;-><init>(Ljava/lang/String;I[II)V

    sput-object v3, Lcom/unity3d/services/banners/view/a;->c:Lcom/unity3d/services/banners/view/a;

    new-instance v5, Lcom/unity3d/services/banners/view/a;

    new-array v7, v1, [I

    fill-array-data v7, :array_3

    const-string v8, "BOTTOM_LEFT"

    const/4 v9, 0x3

    const/16 v10, 0x53

    invoke-direct {v5, v8, v9, v7, v10}, Lcom/unity3d/services/banners/view/a;-><init>(Ljava/lang/String;I[II)V

    sput-object v5, Lcom/unity3d/services/banners/view/a;->d:Lcom/unity3d/services/banners/view/a;

    new-instance v7, Lcom/unity3d/services/banners/view/a;

    new-array v8, v1, [I

    fill-array-data v8, :array_4

    const-string v10, "BOTTOM_CENTER"

    const/4 v11, 0x4

    const/16 v12, 0x51

    invoke-direct {v7, v10, v11, v8, v12}, Lcom/unity3d/services/banners/view/a;-><init>(Ljava/lang/String;I[II)V

    sput-object v7, Lcom/unity3d/services/banners/view/a;->e:Lcom/unity3d/services/banners/view/a;

    new-instance v8, Lcom/unity3d/services/banners/view/a;

    new-array v10, v1, [I

    fill-array-data v10, :array_5

    const-string v12, "BOTTOM_RIGHT"

    const/4 v13, 0x5

    const/16 v14, 0x55

    invoke-direct {v8, v12, v13, v10, v14}, Lcom/unity3d/services/banners/view/a;-><init>(Ljava/lang/String;I[II)V

    sput-object v8, Lcom/unity3d/services/banners/view/a;->f:Lcom/unity3d/services/banners/view/a;

    new-instance v10, Lcom/unity3d/services/banners/view/a;

    new-array v12, v6, [I

    const/16 v14, 0xd

    aput v14, v12, v4

    const-string v14, "CENTER"

    const/4 v15, 0x6

    const/16 v13, 0x11

    invoke-direct {v10, v14, v15, v12, v13}, Lcom/unity3d/services/banners/view/a;-><init>(Ljava/lang/String;I[II)V

    sput-object v10, Lcom/unity3d/services/banners/view/a;->g:Lcom/unity3d/services/banners/view/a;

    new-instance v12, Lcom/unity3d/services/banners/view/a;

    new-array v13, v4, [I

    const-string v14, "NONE"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v15, v13, v4}, Lcom/unity3d/services/banners/view/a;-><init>(Ljava/lang/String;I[II)V

    sput-object v12, Lcom/unity3d/services/banners/view/a;->h:Lcom/unity3d/services/banners/view/a;

    const/16 v13, 0x8

    new-array v13, v13, [Lcom/unity3d/services/banners/view/a;

    aput-object v0, v13, v4

    aput-object v2, v13, v6

    aput-object v3, v13, v1

    aput-object v5, v13, v9

    aput-object v7, v13, v11

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    aput-object v12, v13, v15

    sput-object v13, Lcom/unity3d/services/banners/view/a;->i:[Lcom/unity3d/services/banners/view/a;

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x9
    .end array-data

    :array_1
    .array-data 4
        0xa
        0xe
    .end array-data

    :array_2
    .array-data 4
        0xa
        0xb
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x9
    .end array-data

    :array_4
    .array-data 4
        0xc
        0xe
    .end array-data

    :array_5
    .array-data 4
        0xc
        0xb
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/unity3d/services/banners/view/a;->j:[I

    iput p4, p0, Lcom/unity3d/services/banners/view/a;->k:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/banners/view/a;
    .locals 1

    const-class v0, Lcom/unity3d/services/banners/view/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/banners/view/a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/banners/view/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/banners/view/a;->i:[Lcom/unity3d/services/banners/view/a;

    invoke-virtual {v0}, [Lcom/unity3d/services/banners/view/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/banners/view/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/banners/view/a;->k:I

    return v0
.end method
