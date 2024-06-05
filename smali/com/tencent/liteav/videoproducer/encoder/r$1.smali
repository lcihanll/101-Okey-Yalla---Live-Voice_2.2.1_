.class final Lcom/tencent/liteav/videoproducer/encoder/r$1;
.super Lcom/tencent/liteav/videoproducer/encoder/br$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/encoder/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/encoder/r;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/r;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/br$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/r$1;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->m:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/r$1;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->m:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/r$1;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->m:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/r$1;Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/r;->m:Lcom/tencent/liteav/videoproducer/encoder/br$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/br$a;->onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ad;->a(Lcom/tencent/liteav/videoproducer/encoder/r$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ac;->a(Lcom/tencent/liteav/videoproducer/encoder/r$1;Lcom/tencent/liteav/videobase/videobase/h$a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ab;->a(Lcom/tencent/liteav/videoproducer/encoder/r$1;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/r$1;->a:Lcom/tencent/liteav/videoproducer/encoder/r;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ae;->a(Lcom/tencent/liteav/videoproducer/encoder/r$1;Landroid/media/MediaFormat;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Ljava/lang/Runnable;)V

    return-void
.end method
