.class public abstract Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;
.super Ljava/lang/Object;


# instance fields
.field private l1111l111111Il:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;->l1111l111111Il:Ljava/lang/String;

    return-void
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;->l1111l111111Il:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method abstract l1111l111111Il()Ljava/lang/String;
.end method

.method final l1111l111111Il(J)Ljava/lang/String;
    .locals 2

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l$1;

    invoke-direct {v0, p0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l$1;-><init>(Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x96

    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;->l1111l111111Il:Ljava/lang/String;

    return-object p1
.end method
