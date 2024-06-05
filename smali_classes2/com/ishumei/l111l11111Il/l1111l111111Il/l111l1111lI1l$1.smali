.class final Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;->l1111l111111Il(J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Ljava/util/concurrent/CountDownLatch;

.field private synthetic l111l11111lIl:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;


# direct methods
.method constructor <init>(Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l$1;->l111l11111lIl:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;

    iput-object p2, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l$1;->l1111l111111Il:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l$1;->l111l11111lIl:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;

    invoke-virtual {v0}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;->l1111l111111Il()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;->l1111l111111Il(Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l$1;->l1111l111111Il:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
