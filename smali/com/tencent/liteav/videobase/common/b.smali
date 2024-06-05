.class public final enum Lcom/tencent/liteav/videobase/common/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/common/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/common/b;

.field public static final enum b:Lcom/tencent/liteav/videobase/common/b;

.field public static final enum c:Lcom/tencent/liteav/videobase/common/b;

.field public static final enum d:Lcom/tencent/liteav/videobase/common/b;

.field private static final synthetic e:[Lcom/tencent/liteav/videobase/common/b;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/tencent/liteav/videobase/common/b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/common/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videobase/common/b;->a:Lcom/tencent/liteav/videobase/common/b;

    new-instance v1, Lcom/tencent/liteav/videobase/common/b;

    const-string v3, "HDR10"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/tencent/liteav/videobase/common/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videobase/common/b;->b:Lcom/tencent/liteav/videobase/common/b;

    new-instance v3, Lcom/tencent/liteav/videobase/common/b;

    const-string v5, "HLG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/tencent/liteav/videobase/common/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videobase/common/b;->c:Lcom/tencent/liteav/videobase/common/b;

    new-instance v5, Lcom/tencent/liteav/videobase/common/b;

    const-string v7, "UNSUPPORTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/tencent/liteav/videobase/common/b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videobase/common/b;->d:Lcom/tencent/liteav/videobase/common/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tencent/liteav/videobase/common/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tencent/liteav/videobase/common/b;->e:[Lcom/tencent/liteav/videobase/common/b;

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

    iput p3, p0, Lcom/tencent/liteav/videobase/common/b;->mValue:I

    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/common/b;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/tencent/liteav/videobase/common/b;->a:Lcom/tencent/liteav/videobase/common/b;

    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/liteav/videobase/common/b;->d:Lcom/tencent/liteav/videobase/common/b;

    return-object p0

    :cond_1
    sget-object p0, Lcom/tencent/liteav/videobase/common/b;->c:Lcom/tencent/liteav/videobase/common/b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/tencent/liteav/videobase/common/b;->b:Lcom/tencent/liteav/videobase/common/b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/common/b;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/common/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/common/b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/common/b;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/common/b;->e:[Lcom/tencent/liteav/videobase/common/b;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/common/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/common/b;

    return-object v0
.end method
