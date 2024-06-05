.class final Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;


# direct methods
.method constructor <init>(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-static {v0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-static {v0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11111lIl(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111lIIl()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-static {v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11111I1l(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111llIl()I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111llIl()I

    move-result v2

    if-lt v1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111Il()I

    move-result v0

    if-lez v0, :cond_3

    if-gt v1, v0, :cond_3

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l1111lIl;->l111l1111lI1l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-static {v0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-static {v2}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11111lIl(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11111lIl(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method
