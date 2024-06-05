.class final Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111lIl;
.super Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111I1l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l11l1111I1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l111l1111lIl"
.end annotation


# instance fields
.field private l1111l111111Il:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111I1l;-><init>(B)V

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111I1l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111lIl;->l1111l111111Il:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected final l1111l111111Il()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111lIl;->l1111l111111Il:Ljava/lang/String;

    return-object v0
.end method

.method protected final l111l11111Il()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111lIl;->l1111l111111Il:Ljava/lang/String;

    return-object v0
.end method
