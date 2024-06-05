.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/r;

.field private final b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private final c:Lcom/tencent/liteav/videoproducer/encoder/br$a;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/r;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/t;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/t;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/t;->c:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/r;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/t;-><init>(Lcom/tencent/liteav/videoproducer/encoder/r;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/t;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/t;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/t;->c:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->g:Landroid/view/Surface;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const-string v1, "Encoder has started"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v5, "Start hw video encoder. %s"

    invoke-static {v3, v5, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->m:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->p:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    invoke-virtual {v2, v1, v3}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/br$a;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    iput-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->g:Landroid/view/Surface;

    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->c:Lcom/tencent/liteav/base/util/Size;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/base/util/Size;->set(Lcom/tencent/liteav/base/util/Size;)V

    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v2, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iput-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->a:Ljava/lang/String;

    const-string v1, "Start hw video encoder done"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
