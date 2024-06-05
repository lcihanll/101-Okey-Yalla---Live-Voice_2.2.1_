.class final Lcom/ishumei/l1111l111111Il/l111l1111lI1l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l1111l111111Il;


# instance fields
.field private synthetic l1111l111111Il:Lcom/ishumei/l1111l111111Il/l111l1111llIl;


# direct methods
.method private constructor <init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l111l1111lI1l;->l1111l111111Il:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final l111l11111Il()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111lIIl()Z

    move-result v2

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int v0, v2, v1

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l1111l111111Il;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
