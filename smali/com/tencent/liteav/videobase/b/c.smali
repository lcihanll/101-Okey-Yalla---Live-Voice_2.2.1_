.class public final synthetic Lcom/tencent/liteav/videobase/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videobase/b/b;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videobase/b/b;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/b/c;->a:Lcom/tencent/liteav/videobase/b/b;

    iput-object p2, p0, Lcom/tencent/liteav/videobase/b/c;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/liteav/videobase/b/c;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videobase/b/b;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videobase/b/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videobase/b/c;-><init>(Lcom/tencent/liteav/videobase/b/b;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/liteav/videobase/b/c;->a:Lcom/tencent/liteav/videobase/b/b;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/b/c;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/b/c;->c:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/tencent/liteav/videobase/utils/PerspectiveTransformMatrixCalculator;->getPerspectiveTransformMatrix(Ljava/util/List;Ljava/util/List;)[F

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    mul-int/lit8 v7, v6, 0x3

    add-int/2addr v7, v4

    mul-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v6

    aget v8, v1, v8

    aput v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, v0, Lcom/tencent/liteav/videobase/b/b;->a:[F

    return-void
.end method
