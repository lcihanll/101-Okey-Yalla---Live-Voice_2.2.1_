.class final Lcom/ishumei/l1111l111111Il/l11l1111I1l$l11l1111I1l;
.super Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111I1l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l11l1111I1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l11l1111I1l"
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "a08c978a929a96"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l11l1111I1l;->l1111l111111Il:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111I1l;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l11l1111I1l;-><init>()V

    return-void
.end method


# virtual methods
.method protected final l1111l111111Il()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l11l1111I1l;->l1111l111111Il:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111I1l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final l111l11111Il()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l11l1111I1l;->l1111l111111Il()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l111l11111lIl()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111I1l;->l111l11111lIl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l11l1111I1l;->l1111l111111Il()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ishumei/dfp/SMSDK;->xx6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
