.class final Lcom/tencent/liteav/videoproducer/encoder/au$1;
.super Lcom/tencent/liteav/base/util/CustomHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoproducer/encoder/au;->a(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/encoder/au;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/au;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au$1;->a:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-direct {p0, p2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/au$1;->a:Lcom/tencent/liteav/videoproducer/encoder/au;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->d()V

    :cond_0
    return-void
.end method
