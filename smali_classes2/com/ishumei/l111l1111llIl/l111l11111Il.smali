.class public final Lcom/ishumei/l111l1111llIl/l111l11111Il;
.super Ljava/lang/Object;


# static fields
.field private static l1111l111111Il:Z = false

.field private static l111l11111lIl:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs l1111l111111Il(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    instance-of v1, v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l1111l111111Il([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, "[]"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l1111l111111Il(I)V
    .locals 0

    sput p0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l111l11111lIl:I

    return-void
.end method

.method public static varargs l1111l111111Il(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l111l11111lIl:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static l1111l111111Il(Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static l1111l111111Il(Z)V
    .locals 0

    sput-boolean p0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il:Z

    return-void
.end method

.method public static varargs l111l11111I1l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l111l11111lIl:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs l111l11111Il(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l111l11111lIl:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs l111l11111lIl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l111l11111lIl:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static varargs l111l1111l1Il(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l111l11111lIl:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static varargs l111l1111llIl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget v0, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l111l11111lIl:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/ishumei/l111l1111llIl/l111l11111Il;->l1111l111111Il(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
