.class public final enum Lcom/tencent/liteav/videobase/common/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/common/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum b:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum c:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum d:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum e:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum f:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum g:Lcom/tencent/liteav/videobase/common/d;

.field private static final h:[Lcom/tencent/liteav/videobase/common/d;

.field private static final synthetic i:[Lcom/tencent/liteav/videobase/common/d;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/liteav/videobase/common/d;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videobase/common/d;->a:Lcom/tencent/liteav/videobase/common/d;

    new-instance v1, Lcom/tencent/liteav/videobase/common/d;

    const-string v3, "BASELINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videobase/common/d;->b:Lcom/tencent/liteav/videobase/common/d;

    new-instance v3, Lcom/tencent/liteav/videobase/common/d;

    const-string v5, "MAIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videobase/common/d;->c:Lcom/tencent/liteav/videobase/common/d;

    new-instance v5, Lcom/tencent/liteav/videobase/common/d;

    const-string v7, "HIGH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videobase/common/d;->d:Lcom/tencent/liteav/videobase/common/d;

    new-instance v7, Lcom/tencent/liteav/videobase/common/d;

    const-string v9, "BASELINE_RPS"

    const/4 v10, 0x4

    const/16 v11, 0xb

    invoke-direct {v7, v9, v10, v11}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/liteav/videobase/common/d;->e:Lcom/tencent/liteav/videobase/common/d;

    new-instance v9, Lcom/tencent/liteav/videobase/common/d;

    const-string v11, "MAIN_RPS"

    const/4 v12, 0x5

    const/16 v13, 0xc

    invoke-direct {v9, v11, v12, v13}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/liteav/videobase/common/d;->f:Lcom/tencent/liteav/videobase/common/d;

    new-instance v11, Lcom/tencent/liteav/videobase/common/d;

    const-string v13, "HIGH_RPS"

    const/4 v14, 0x6

    const/16 v15, 0xd

    invoke-direct {v11, v13, v14, v15}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/liteav/videobase/common/d;->g:Lcom/tencent/liteav/videobase/common/d;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/tencent/liteav/videobase/common/d;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/tencent/liteav/videobase/common/d;->i:[Lcom/tencent/liteav/videobase/common/d;

    invoke-static {}, Lcom/tencent/liteav/videobase/common/d;->values()[Lcom/tencent/liteav/videobase/common/d;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/videobase/common/d;->h:[Lcom/tencent/liteav/videobase/common/d;

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

    iput p3, p0, Lcom/tencent/liteav/videobase/common/d;->mValue:I

    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/common/d;
    .locals 5

    sget-object v0, Lcom/tencent/liteav/videobase/common/d;->h:[Lcom/tencent/liteav/videobase/common/d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/tencent/liteav/videobase/common/d;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/tencent/liteav/videobase/common/d;->a:Lcom/tencent/liteav/videobase/common/d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/common/d;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/common/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/common/d;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/common/d;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/common/d;->i:[Lcom/tencent/liteav/videobase/common/d;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/common/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/common/d;

    return-object v0
.end method
