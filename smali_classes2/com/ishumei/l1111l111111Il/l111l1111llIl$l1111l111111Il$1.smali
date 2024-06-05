.class final Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;
.super Lcom/ishumei/l111l11111I1l/l111l11111lIl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l1111l111111Il(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;ZIZJZ)V
    .locals 7

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;-><init>(ZIZJZ)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;)Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l1111l111111Il;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;)Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l1111l111111Il;

    move-result-object v1

    invoke-interface {v1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l1111l111111Il;->l111l11111Il()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;)Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l111l11111lIl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;)Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l111l11111lIl;

    move-result-object v1

    invoke-interface {v1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l111l11111lIl;->l111l1111l1Il()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111I1l(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il()[B

    move-result-object v1

    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111Il()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;[BZ)Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    invoke-static {v1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"encode\":1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    invoke-direct {v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;-><init>()V

    invoke-virtual {v2, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l1111l111111Il;)Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    move-result-object v0

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    invoke-static {v2}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    iget-object v4, v4, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111I1l:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BZLjava/util/Map;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
