.class final Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Ljava/lang/String;

.field private synthetic l111l11111I1l:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

.field private synthetic l111l11111lIl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l111l11111I1l:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    iput-object p2, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l1111l111111Il:Ljava/lang/String;

    iput-object p3, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l111l11111lIl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111lIIl()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l1111l111111Il:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l111l11111lIl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l1111l111111Il:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l1111l111111Il:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "retry"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(I)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l111l11111I1l:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-static {v2}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l111l11111I1l:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-static {v1, v0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l111l11111I1l:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l111l11111lIl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11111lIl(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;->l111l11111I1l:Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11111lIl()V

    :cond_3
    :goto_1
    return-void
.end method
