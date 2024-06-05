.class final Lcom/ishumei/l111l1111l1Il/l111l11111I1l$3;
.super Lcom/ishumei/l111l11111I1l/l111l11111lIl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BZLjava/util/Map;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ishumei/l111l11111I1l/l111l11111lIl<",
        "Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l;


# direct methods
.method constructor <init>(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;ZIZJZ)V
    .locals 7

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;-><init>(ZIZJZ)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$3;->l1111l111111Il:Ljava/lang/Object;

    check-cast v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    if-eqz v0, :cond_1

    :try_start_0
    iget v1, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    iget-object v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    invoke-static {v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    iget-object v2, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111lIl:[B

    iget-object v3, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111I1l:Ljava/util/Map;

    iget-object v4, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$3;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    invoke-static {v4}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111l1Il:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;[BLjava/util/Map;Ljava/lang/String;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "sessionCache is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    return-void
.end method
