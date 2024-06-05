.class public Lcom/appsflyer/internal/ad;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final $$a:[I

.field static final $$b:[B

.field static final AFDateFormat:[I

.field private static collectIntentsFromActivities:[I

.field static final getDataFormatter:[I

.field static final valueOf:[B

.field static final values:[I


# direct methods
.method static $$b([BI)[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/appsflyer/internal/ad;->values([BI)[I

    move-result-object v0

    array-length p0, p0

    const/16 v1, 0x10

    if-ne p0, v1, :cond_1

    add-int/lit8 p0, p1, 0x1

    const/4 v1, 0x4

    mul-int/lit8 p0, p0, 0x4

    new-array p0, p0, [I

    mul-int/lit8 v2, p1, 0x4

    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    aget v2, v0, v2

    aput v2, p0, v3

    add-int/lit8 v2, v4, 0x1

    aget v3, v0, v4

    const/4 v4, 0x1

    aput v3, p0, v4

    const/4 v3, 0x2

    add-int/lit8 v5, v2, 0x1

    aget v2, v0, v2

    aput v2, p0, v3

    const/4 v2, 0x3

    aget v3, v0, v5

    aput v3, p0, v2

    add-int/lit8 v5, v5, -0x7

    :goto_0
    if-ge v4, p1, :cond_0

    add-int/lit8 v2, v5, 0x1

    aget v3, v0, v5

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lcom/appsflyer/internal/ad;->$$a:[I

    sget-object v7, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v8, v3, 0x18

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    sget-object v9, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    ushr-int/lit8 v10, v3, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v9, v10

    xor-int/2addr v8, v10

    sget-object v10, Lcom/appsflyer/internal/ad;->values:[I

    ushr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v7, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v10, v11

    xor-int/2addr v8, v11

    sget-object v11, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v11, v3

    xor-int/2addr v3, v8

    aput v3, p0, v1

    add-int/lit8 v1, v2, 0x1

    aget v2, v0, v2

    add-int/lit8 v3, v5, 0x1

    ushr-int/lit8 v8, v2, 0x18

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    ushr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v9, v12

    xor-int/2addr v8, v12

    ushr-int/lit8 v12, v2, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v10, v12

    xor-int/2addr v8, v12

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v11, v2

    xor-int/2addr v2, v8

    aput v2, p0, v5

    add-int/lit8 v2, v1, 0x1

    aget v1, v0, v1

    add-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v8, v1, 0x18

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    ushr-int/lit8 v12, v1, 0x10

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v9, v12

    xor-int/2addr v8, v12

    ushr-int/lit8 v12, v1, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v10, v12

    xor-int/2addr v8, v12

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v11, v1

    xor-int/2addr v1, v8

    aput v1, p0, v3

    aget v1, v0, v2

    add-int/lit8 v3, v5, 0x1

    ushr-int/lit8 v8, v1, 0x18

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    ushr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v9, v8

    xor-int/2addr v6, v8

    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v10, v8

    xor-int/2addr v6, v8

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v11, v1

    xor-int/2addr v1, v6

    aput v1, p0, v5

    add-int/lit8 v5, v2, -0x7

    add-int/lit8 v4, v4, 0x1

    move v1, v3

    goto/16 :goto_0

    :cond_0
    add-int/lit8 p1, v1, 0x1

    add-int/lit8 v2, v5, 0x1

    aget v3, v0, v5

    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    aget v2, v0, v2

    aput v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    add-int/lit8 v2, v3, 0x1

    aget v3, v0, v3

    aput v3, p0, v1

    aget v0, v0, v2

    aput v0, p0, p1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x100

    new-array v1, v0, [B

    sput-object v1, Lcom/appsflyer/internal/ad;->$$b:[B

    new-array v1, v0, [B

    sput-object v1, Lcom/appsflyer/internal/ad;->valueOf:[B

    new-array v1, v0, [I

    sput-object v1, Lcom/appsflyer/internal/ad;->$$a:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/appsflyer/internal/ad;->values:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    const/16 v1, 0xa

    new-array v2, v1, [I

    sput-object v2, Lcom/appsflyer/internal/ad;->collectIntentsFromActivities:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_0
    shl-int/lit8 v5, v3, 0x1

    xor-int/2addr v5, v3

    and-int/lit16 v3, v3, 0x80

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    const/16 v3, 0x1b

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    xor-int/2addr v3, v5

    int-to-byte v3, v3

    shl-int/lit8 v5, v4, 0x1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    xor-int/2addr v4, v5

    int-to-byte v4, v4

    sget-object v5, Lcom/appsflyer/internal/ad;->$$b:[B

    and-int/lit16 v7, v3, 0xff

    xor-int/lit8 v8, v4, 0x63

    and-int/lit16 v9, v4, 0xff

    shl-int/lit8 v10, v9, 0x1

    shr-int/lit8 v11, v9, 0x7

    or-int/2addr v10, v11

    xor-int/2addr v8, v10

    shl-int/lit8 v10, v9, 0x2

    shr-int/lit8 v11, v9, 0x6

    or-int/2addr v10, v11

    xor-int/2addr v8, v10

    shl-int/lit8 v10, v9, 0x3

    shr-int/lit8 v11, v9, 0x5

    or-int/2addr v10, v11

    xor-int/2addr v8, v10

    shl-int/lit8 v10, v9, 0x4

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    if-ne v7, v2, :cond_0

    const/16 v3, 0x63

    aput-byte v3, v5, v6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_6

    sget-object v4, Lcom/appsflyer/internal/ad;->$$b:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lcom/appsflyer/internal/ad;->valueOf:[B

    int-to-byte v7, v3

    aput-byte v7, v5, v4

    shl-int/lit8 v5, v3, 0x1

    if-lt v5, v0, :cond_3

    xor-int/lit16 v5, v5, 0x11b

    :cond_3
    shl-int/lit8 v7, v5, 0x1

    if-lt v7, v0, :cond_4

    xor-int/lit16 v7, v7, 0x11b

    :cond_4
    shl-int/lit8 v8, v7, 0x1

    if-lt v8, v0, :cond_5

    xor-int/lit16 v8, v8, 0x11b

    :cond_5
    xor-int v9, v8, v3

    xor-int v10, v9, v5

    xor-int v11, v9, v7

    xor-int/2addr v7, v8

    xor-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v7, v9, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v7, v11, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v10

    sget-object v7, Lcom/appsflyer/internal/ad;->$$a:[I

    aput v5, v7, v4

    sget-object v7, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    ushr-int/lit8 v8, v5, 0x8

    shl-int/lit8 v9, v5, 0x18

    or-int/2addr v8, v9

    aput v8, v7, v4

    sget-object v7, Lcom/appsflyer/internal/ad;->values:[I

    ushr-int/lit8 v8, v5, 0x10

    shl-int/lit8 v9, v5, 0x10

    or-int/2addr v8, v9

    aput v8, v7, v4

    sget-object v7, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    ushr-int/lit8 v8, v5, 0x18

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    aput v5, v7, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/appsflyer/internal/ad;->collectIntentsFromActivities:[I

    const/high16 v4, 0x1000000

    aput v4, v3, v6

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_3
    if-ge v3, v1, :cond_8

    shl-int/2addr v4, v2

    if-lt v4, v0, :cond_7

    xor-int/lit16 v4, v4, 0x11b

    :cond_7
    sget-object v5, Lcom/appsflyer/internal/ad;->collectIntentsFromActivities:[I

    shl-int/lit8 v6, v4, 0x18

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method static values([BI)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x4

    mul-int/lit8 p1, p1, 0x4

    new-array v2, p1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v1

    or-int/2addr v5, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v4, 0x4

    :goto_1
    if-ge v4, p1, :cond_2

    add-int/lit8 v5, v4, -0x1

    aget v5, v2, v5

    if-nez v3, :cond_1

    sget-object v3, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v3, v6

    shl-int/lit8 v6, v6, 0x18

    ushr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v1

    or-int/2addr v6, v7

    and-int/lit16 v7, v5, 0xff

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x18

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v6

    sget-object v5, Lcom/appsflyer/internal/ad;->collectIntentsFromActivities:[I

    add-int/lit8 v6, p0, 0x1

    aget p0, v5, p0

    xor-int v5, v3, p0

    move p0, v6

    const/4 v3, 0x4

    :cond_1
    add-int/lit8 v6, v4, -0x4

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static values(I)[[B
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    shl-int/lit8 v4, v3, 0x3

    ushr-int v4, p0, v4

    new-array v5, v0, [B

    and-int/lit8 v6, v4, 0x3

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    shr-int/lit8 v6, v4, 0x2

    const/4 v7, 0x3

    and-int/2addr v6, v7

    int-to-byte v6, v6

    const/4 v8, 0x1

    aput-byte v6, v5, v8

    shr-int/lit8 v6, v4, 0x4

    and-int/2addr v6, v7

    int-to-byte v6, v6

    const/4 v8, 0x2

    aput-byte v6, v5, v8

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v7

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
