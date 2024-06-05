.class final Lcom/ishumei/l1111l111111Il/l111l1111l1Il$1;
.super Lcom/ishumei/l111l11111I1l/l111l11111lIl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l111l1111l1Il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l111l1111l1Il;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

    const/4 p1, 0x1

    const/4 p2, 0x7

    invoke-direct {p0, p1, p2}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il$1;->l111l11111lIl:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

    invoke-static {v2}, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111l1Il;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111l1Il;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
