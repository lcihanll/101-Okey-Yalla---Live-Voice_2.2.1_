.class final Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:I

.field private synthetic l111l11111I1l:Ljava/lang/String;

.field private synthetic l111l11111Il:F

.field private synthetic l111l11111lIl:Ljava/lang/String;

.field private synthetic l111l1111l1Il:F

.field private synthetic l111l1111lI1l:J

.field private synthetic l111l1111lIl:F

.field private synthetic l111l1111llIl:J

.field private synthetic l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

.field private synthetic l11l1111lIIl:F


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;ILjava/lang/String;Ljava/lang/String;FFJJFF)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    iput p2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l1111l111111Il:I

    iput-object p3, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l11111lIl:Ljava/lang/String;

    iput-object p4, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l11111I1l:Ljava/lang/String;

    iput p5, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l11111Il:F

    iput p6, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l1111l1Il:F

    iput-wide p7, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l1111llIl:J

    iput-wide p9, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l1111lI1l:J

    iput p11, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l1111lIl:F

    iput p12, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111lIIl:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;Lcom/ishumei/l111l11111lIl/l111l11111lIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    :cond_0
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111I1l(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v2

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    iget-object v3, v0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il:Ljava/lang/Runnable;

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IJZ)V

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0, v1}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)I

    move-result v0

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v2}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111lIl()I

    move-result v2

    if-lt v0, v2, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l1111l111111Il:I

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    const-string v0, "Move"

    goto :goto_0

    :cond_4
    const-string v0, "Up"

    goto :goto_0

    :cond_5
    const-string v0, "Down"

    :goto_0
    new-instance v1, Lcom/ishumei/l1111l111111Il/l11l1111I11l;

    invoke-direct {v1}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;-><init>()V

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v2}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111l1Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l1111l111111Il(I)V

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l11111lIl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l1111l111111Il(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l111l11111lIl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l11111I1l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l111l11111I1l(Ljava/lang/String;)V

    iget v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l11111Il:F

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l111l11111Il(F)V

    iget v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l1111l1Il:F

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l111l11111I1l(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l111l11111I1l(J)V

    iget-wide v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l1111llIl:J

    invoke-virtual {v1, v2, v3}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l1111l111111Il(J)V

    iget-wide v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l1111lI1l:J

    invoke-virtual {v1, v2, v3}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l111l11111lIl(J)V

    iget v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l111l1111lIl:F

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l1111l111111Il(F)V

    iget v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111lIIl:F

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I11l;->l111l11111lIl(F)V

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111llIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111llIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v1}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l1111l111111Il()I

    move-result v1

    if-lt v0, v1, :cond_6

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v0

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;->l11l1111I11l:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v1}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111lI1l(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;I)V

    :cond_6
    return-void
.end method
