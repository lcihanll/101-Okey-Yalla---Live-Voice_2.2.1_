.class final Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;


# direct methods
.method constructor <init>(Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lIl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;

    invoke-static {v2, v1}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il$1;->l1111l111111Il:Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;

    invoke-virtual {v3, v1, v2}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    return-void
.end method
