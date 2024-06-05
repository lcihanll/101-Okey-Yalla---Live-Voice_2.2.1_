.class final synthetic Lcom/tencent/liteav/videoproducer/capture/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final a:Lcom/tencent/liteav/videoproducer/capture/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/al;-><init>()V

    sput-object v0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/liteav/videoproducer/utils/b;

    check-cast p2, Lcom/tencent/liteav/videoproducer/utils/b;

    iget p1, p1, Lcom/tencent/liteav/videoproducer/utils/b;->b:I

    iget p2, p2, Lcom/tencent/liteav/videoproducer/utils/b;->b:I

    sub-int/2addr p1, p2

    return p1
.end method
