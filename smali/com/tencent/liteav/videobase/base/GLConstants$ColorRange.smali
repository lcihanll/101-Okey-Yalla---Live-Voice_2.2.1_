.class public final enum Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videobase/base/GLConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

.field public static final enum b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

.field public static final enum c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

.field private static final synthetic d:[Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;


# instance fields
.field private final mJniValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    new-instance v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    const-string v3, "VIDEO_RANGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    new-instance v3, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    const-string v5, "FULL_RANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->d:[Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

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

    iput p3, p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->mJniValue:I

    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;
    .locals 5

    invoke-static {}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->values()[Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->mJniValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->d:[Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->mJniValue:I

    return v0
.end method
