.class public final Lcom/ishumei/l111l1111llIl/l111l11111lIl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l1111llIl/l111l11111lIl$l1111l111111Il;
    }
.end annotation


# instance fields
.field private l1111l111111Il:J

.field private volatile l111l11111I1l:Z

.field private l111l11111lIl:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111I1l:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;-><init>()V

    return-void
.end method

.method public static l1111l111111Il()Lcom/ishumei/l111l1111llIl/l111l11111lIl;
    .locals 1

    invoke-static {}, Lcom/ishumei/l111l1111llIl/l111l11111lIl$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l1111llIl/l111l11111lIl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final l111l11111I1l()V
    .locals 5

    iget-wide v0, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111lIl:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111lIl:J

    :cond_0
    return-void
.end method

.method public final l111l11111Il()J
    .locals 4

    iget-boolean v0, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111I1l:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111I1l:Z

    iget-wide v0, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111lIl:J

    iget-wide v2, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l1111l111111Il:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final l111l11111lIl()V
    .locals 5

    iget-wide v0, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l1111l111111Il:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l1111l111111Il:J

    :cond_0
    return-void
.end method
