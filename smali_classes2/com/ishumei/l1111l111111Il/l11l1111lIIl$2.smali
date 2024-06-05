.class final Lcom/ishumei/l1111l111111Il/l11l1111lIIl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l11l1111lIIl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$2;->l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$2;->l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v1

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$2;->l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IJZ)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v1

    const/4 v3, 0x6

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$2;->l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v2}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IJZ)V

    throw v0

    :catch_0
    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v7

    const/4 v9, 0x6

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$2;->l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    const/4 v12, 0x0

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IJZ)V

    return-void
.end method
