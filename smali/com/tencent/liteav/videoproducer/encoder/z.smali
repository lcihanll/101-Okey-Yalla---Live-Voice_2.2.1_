.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/z;
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

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/z;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/r;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/z;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/z;-><init>(Lcom/tencent/liteav/videoproducer/encoder/r;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/z;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->d:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/au;->c()V

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->n:Lcom/tencent/liteav/videobase/egl/c;

    iget-object v2, v1, Lcom/tencent/liteav/videobase/egl/c;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    new-instance v3, Lcom/tencent/liteav/videobase/egl/d;

    invoke-direct {v3, v1}, Lcom/tencent/liteav/videobase/egl/d;-><init>(Lcom/tencent/liteav/videobase/egl/c;)V

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/util/CustomHandler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->l:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/CustomHandler;->quitLooper()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/r;->l:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method
