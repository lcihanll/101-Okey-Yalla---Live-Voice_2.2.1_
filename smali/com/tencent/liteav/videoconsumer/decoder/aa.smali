.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/u;

.field private final b:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/u;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/aa;->a:Lcom/tencent/liteav/videoconsumer/decoder/u;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/aa;->b:Landroid/view/Surface;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/u;Landroid/view/Surface;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/aa;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/aa;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/u;Landroid/view/Surface;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/aa;->a:Lcom/tencent/liteav/videoconsumer/decoder/u;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/aa;->b:Landroid/view/Surface;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/u;->c:Landroid/view/Surface;

    if-eq v2, v1, :cond_0

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "setSurface "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/u;->c:Landroid/view/Surface;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    instance-of v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/ae;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    check-cast v0, Lcom/tencent/liteav/videoconsumer/decoder/ae;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/ae;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
