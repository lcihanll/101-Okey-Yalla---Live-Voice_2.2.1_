.class final Lcom/tencent/liteav/videoconsumer/consumer/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/consumer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/liteav/videoconsumer/consumer/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$a;->a:J

    iput p3, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/consumer/b$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/consumer/b$a;)I
    .locals 0

    iget p0, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$a;->b:I

    return p0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/tencent/liteav/videoconsumer/consumer/b$a;

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/b$a;->a:J

    iget-wide v2, p1, Lcom/tencent/liteav/videoconsumer/consumer/b$a;->a:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method
