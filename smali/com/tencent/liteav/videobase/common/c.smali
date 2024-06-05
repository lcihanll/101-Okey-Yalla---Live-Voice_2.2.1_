.class public final enum Lcom/tencent/liteav/videobase/common/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/common/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum b:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum c:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum d:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum e:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum f:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum g:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum h:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum i:Lcom/tencent/liteav/videobase/common/c;

.field public static final enum j:Lcom/tencent/liteav/videobase/common/c;

.field private static final k:[Lcom/tencent/liteav/videobase/common/c;

.field private static final synthetic l:[Lcom/tencent/liteav/videobase/common/c;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/liteav/videobase/common/c;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const v3, 0xffff

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videobase/common/c;->a:Lcom/tencent/liteav/videobase/common/c;

    new-instance v1, Lcom/tencent/liteav/videobase/common/c;

    const-string v3, "IDR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videobase/common/c;->b:Lcom/tencent/liteav/videobase/common/c;

    new-instance v3, Lcom/tencent/liteav/videobase/common/c;

    const-string v5, "P"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videobase/common/c;->c:Lcom/tencent/liteav/videobase/common/c;

    new-instance v5, Lcom/tencent/liteav/videobase/common/c;

    const-string v7, "B"

    const/4 v8, 0x3

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videobase/common/c;->d:Lcom/tencent/liteav/videobase/common/c;

    new-instance v7, Lcom/tencent/liteav/videobase/common/c;

    const-string v10, "P_MULTI_REF"

    const/4 v11, 0x4

    const/4 v12, 0x7

    invoke-direct {v7, v10, v11, v12}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/liteav/videobase/common/c;->e:Lcom/tencent/liteav/videobase/common/c;

    new-instance v10, Lcom/tencent/liteav/videobase/common/c;

    const-string v13, "I"

    const/4 v14, 0x5

    const/16 v15, 0x8

    invoke-direct {v10, v13, v14, v15}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tencent/liteav/videobase/common/c;->f:Lcom/tencent/liteav/videobase/common/c;

    new-instance v13, Lcom/tencent/liteav/videobase/common/c;

    const-string v14, "SEI"

    const/16 v11, 0x11

    invoke-direct {v13, v14, v9, v11}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tencent/liteav/videobase/common/c;->g:Lcom/tencent/liteav/videobase/common/c;

    new-instance v11, Lcom/tencent/liteav/videobase/common/c;

    const-string v14, "SPS"

    const/16 v9, 0x12

    invoke-direct {v11, v14, v12, v9}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/liteav/videobase/common/c;->h:Lcom/tencent/liteav/videobase/common/c;

    new-instance v9, Lcom/tencent/liteav/videobase/common/c;

    const-string v14, "PPS"

    const/16 v12, 0x13

    invoke-direct {v9, v14, v15, v12}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/liteav/videobase/common/c;->i:Lcom/tencent/liteav/videobase/common/c;

    new-instance v12, Lcom/tencent/liteav/videobase/common/c;

    const-string v14, "VPS"

    const/16 v15, 0x9

    const/16 v8, 0x14

    invoke-direct {v12, v14, v15, v8}, Lcom/tencent/liteav/videobase/common/c;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tencent/liteav/videobase/common/c;->j:Lcom/tencent/liteav/videobase/common/c;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/tencent/liteav/videobase/common/c;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v10, v8, v0

    const/4 v0, 0x6

    aput-object v13, v8, v0

    const/4 v0, 0x7

    aput-object v11, v8, v0

    const/16 v0, 0x8

    aput-object v9, v8, v0

    aput-object v12, v8, v15

    sput-object v8, Lcom/tencent/liteav/videobase/common/c;->l:[Lcom/tencent/liteav/videobase/common/c;

    invoke-static {}, Lcom/tencent/liteav/videobase/common/c;->values()[Lcom/tencent/liteav/videobase/common/c;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/videobase/common/c;->k:[Lcom/tencent/liteav/videobase/common/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/liteav/videobase/common/c;->mValue:I

    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/common/c;
    .locals 5

    sget-object v0, Lcom/tencent/liteav/videobase/common/c;->k:[Lcom/tencent/liteav/videobase/common/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/tencent/liteav/videobase/common/c;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/tencent/liteav/videobase/common/c;->a:Lcom/tencent/liteav/videobase/common/c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/common/c;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/common/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/common/c;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/common/c;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/common/c;->l:[Lcom/tencent/liteav/videobase/common/c;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/common/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/common/c;

    return-object v0
.end method
