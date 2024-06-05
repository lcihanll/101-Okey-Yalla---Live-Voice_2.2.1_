.class final synthetic Lcom/tencent/liteav/videoproducer/capture/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final a:Lcom/tencent/liteav/videoproducer/capture/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ak;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/ak;-><init>()V

    sput-object v0, Lcom/tencent/liteav/videoproducer/capture/ak;->a:Lcom/tencent/liteav/videoproducer/capture/ak;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/ak;->a:Lcom/tencent/liteav/videoproducer/capture/ak;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/tencent/liteav/videoproducer/utils/b;

    check-cast p2, Lcom/tencent/liteav/videoproducer/utils/b;

    iget v0, p1, Lcom/tencent/liteav/videoproducer/utils/b;->a:I

    iget v1, p2, Lcom/tencent/liteav/videoproducer/utils/b;->a:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p1, Lcom/tencent/liteav/videoproducer/utils/b;->a:I

    iget v1, p2, Lcom/tencent/liteav/videoproducer/utils/b;->a:I

    if-ne v0, v1, :cond_1

    iget p1, p1, Lcom/tencent/liteav/videoproducer/utils/b;->b:I

    iget p2, p2, Lcom/tencent/liteav/videoproducer/utils/b;->b:I

    sub-int/2addr p1, p2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
