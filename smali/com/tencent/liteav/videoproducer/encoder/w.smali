.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/r;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/r;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/w;-><init>(Lcom/tencent/liteav/videoproducer/encoder/r;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/r;->d()V

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->g:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->g:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->g:Landroid/view/Surface;

    :cond_0
    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/au;->b()V

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->f:Lcom/tencent/liteav/videobase/utils/k;

    invoke-interface {v1}, Lcom/tencent/liteav/videobase/utils/k;->b()V

    iput-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->m:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    return-void
.end method
