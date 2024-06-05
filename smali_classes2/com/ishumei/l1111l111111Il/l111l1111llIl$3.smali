.class final Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;
.super Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l111l1111llIl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic l111l11111I1l:Lcom/ishumei/l1111l111111Il/l111l1111llIl;


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l111l11111I1l:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    const/4 p1, 0x1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public final l1111l111111Il(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x44c

    const-string v2, ""

    if-eq p1, v1, :cond_0

    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l1111l111111Il(Ljava/lang/String;I)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-boolean v1, v1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I1ll:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->getServerIdCallback()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;->onError(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l111l11111I1l:Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, p1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l1111l111111Il(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final l1111l111111Il(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x76e

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget v1, v1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget v2, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111lIl:I

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111lIIl()Z

    move-result v1

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l1111l111111Il;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111lIl:[B

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l1111l111111Il(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v3, v3, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111lIl:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iget-object v3, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v3, v3, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I11l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x3

    goto :goto_2

    :cond_3
    :goto_0
    const/4 p2, -0x2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p2, -0x1

    :goto_2
    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->getServerIdCallback()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->getServerIdCallback()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;->onError(I)V

    :cond_5
    return p1
.end method
