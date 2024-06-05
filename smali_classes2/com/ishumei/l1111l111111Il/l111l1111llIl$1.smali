.class final Lcom/ishumei/l1111l111111Il/l111l1111llIl$1;
.super Lcom/ishumei/l111l11111I1l/l111l11111lIl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l111l1111llIl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl;


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111Il()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l1111lIl;->l111l1111lI1l()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    invoke-static {v1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111llIl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111Il()I

    move-result v0

    if-gt v1, v0, :cond_0

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IJZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111llIl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I11l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111I1l()V

    :cond_1
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l111l1111llIl;)Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    move-result-object v2

    iget-boolean v3, v2, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l1111l111111Il:Z

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1l()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;

    iget v4, v2, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111lIl:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;-><init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;ZIZJZ)V

    invoke-virtual {v0}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;->l1111l111111Il()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
