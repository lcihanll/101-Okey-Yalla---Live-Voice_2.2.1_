.class final Lcom/tencent/liteav/base/util/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/base/util/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/base/util/r;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/base/util/r;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    iget-boolean v0, v0, Lcom/tencent/liteav/base/util/r;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    iget-object v0, v0, Lcom/tencent/liteav/base/util/r;->c:Lcom/tencent/liteav/base/util/l;

    iget-object v1, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    iget-object v1, v1, Lcom/tencent/liteav/base/util/r;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/l;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    iget-object v0, v0, Lcom/tencent/liteav/base/util/r;->c:Lcom/tencent/liteav/base/util/l;

    iget-object v1, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    iget-object v1, v1, Lcom/tencent/liteav/base/util/r;->e:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    iget v2, v2, Lcom/tencent/liteav/base/util/r;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/util/l;->b(Ljava/lang/Runnable;J)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    iget-object v0, v0, Lcom/tencent/liteav/base/util/r;->d:Lcom/tencent/liteav/base/util/r$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/base/util/r$1;->a:Lcom/tencent/liteav/base/util/r;

    iget-object v0, v0, Lcom/tencent/liteav/base/util/r;->d:Lcom/tencent/liteav/base/util/r$a;

    invoke-interface {v0}, Lcom/tencent/liteav/base/util/r$a;->a()V

    :cond_1
    return-void
.end method
