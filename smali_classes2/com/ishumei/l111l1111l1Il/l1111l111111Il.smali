.class public Lcom/ishumei/l111l1111l1Il/l1111l111111Il;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l1111l1Il/l1111l111111Il$l1111l111111Il;
    }
.end annotation


# instance fields
.field private l1111l111111Il:I

.field private l111l11111I1l:I

.field private l111l11111Il:I

.field private l111l11111lIl:I

.field private l111l1111l1Il:Ljava/lang/String;

.field private l111l1111lI1l:[B

.field private l111l1111lIl:Z

.field private l111l1111llIl:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl:I

    iput v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    iput-object v1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl:[Ljava/lang/String;

    iput-object v1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    iput-boolean v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    invoke-direct {p0}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l11l1111I11l()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;-><init>()V

    return-void
.end method

.method public static l1111l111111Il(Ljava/lang/String;)Lcom/ishumei/l111l1111l1Il/l1111l111111Il;
    .locals 3

    invoke-static {}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    invoke-static {}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    new-instance v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    invoke-direct {v1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;-><init>()V

    iget-boolean v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    iput-boolean v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    iget v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl:I

    iput v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl:I

    iget v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l:I

    iput v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l:I

    iget-object v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl:[Ljava/lang/String;

    iput-object v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl:[Ljava/lang/String;

    iget-object v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    iput-object v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    iget v0, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il:I

    iput v0, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il:I

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il:I

    iput-object p0, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    return-object v1
.end method

.method public static l1111l111111Il(Ljava/lang/String;[BZ)Lcom/ishumei/l111l1111l1Il/l1111l111111Il;
    .locals 2

    new-instance v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    invoke-direct {v0}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;-><init>()V

    invoke-direct {v0}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l11l1111I11l()V

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il:I

    if-eqz p1, :cond_1

    iput-object p1, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il:I

    :cond_1
    :goto_0
    iput-object p0, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    return-object v0
.end method

.method private l1111l111111Il(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl:I

    return-void
.end method

.method public static l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V
    .locals 2

    invoke-static {}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il()[B

    move-result-object v1

    iput-object v1, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    :cond_0
    invoke-virtual {p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111Il()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    return-void
.end method

.method private l1111l111111Il(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    return-void
.end method

.method private l1111l111111Il([B)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    return-void
.end method

.method private l1111l111111Il([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl:[Ljava/lang/String;

    return-void
.end method

.method private l111l11111I1l(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il:I

    return-void
.end method

.method private l111l11111Il(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il:I

    return-void
.end method

.method private l111l11111lIl(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l:I

    return-void
.end method

.method private l111l11111lIl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    return-void
.end method

.method private l11l1111I11l()V
    .locals 1

    sget-object v0, Lcom/ishumei/l111l11111lIl/l111l1111llIl;->l111l11111Il:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl:[Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il:I

    sget-object v0, Lcom/ishumei/l111l11111lIl/l111l1111llIl;->l111l1111l1Il:[B

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    return-void
.end method

.method private static l11l1111I1l()Lcom/ishumei/l111l1111l1Il/l1111l111111Il;
    .locals 3

    invoke-static {}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    new-instance v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    invoke-direct {v1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;-><init>()V

    iget-boolean v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    iput-boolean v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    iget v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl:I

    iput v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl:I

    iget v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l:I

    iput v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l:I

    iget-object v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl:[Ljava/lang/String;

    iput-object v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl:[Ljava/lang/String;

    iget-object v2, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    iput-object v2, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    iget v0, v0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il:I

    iput v0, v1, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il:I

    return-object v1
.end method

.method private static l11l1111lIIl()Lcom/ishumei/l111l1111l1Il/l1111l111111Il;
    .locals 1

    invoke-static {}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final l1111l111111Il()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl:Z

    return v0
.end method

.method public final l111l11111I1l()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l:I

    return v0
.end method

.method public final l111l11111Il()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il:I

    return v0
.end method

.method public final l111l11111lIl()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl:I

    return v0
.end method

.method public final l111l1111l1Il()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    return-object v0
.end method

.method public final l111l1111lI1l()[B
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l:[B

    return-object v0
.end method

.method public final l111l1111lIl()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il:I

    return v0
.end method

.method public final l111l1111llIl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl:[Ljava/lang/String;

    return-object v0
.end method
