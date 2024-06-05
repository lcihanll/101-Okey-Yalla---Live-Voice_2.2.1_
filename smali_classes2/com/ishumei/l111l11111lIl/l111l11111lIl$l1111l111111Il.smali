.class public final Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l111l11111lIl/l111l11111lIl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l1111l111111Il"
.end annotation


# static fields
.field private static l1111l111111Il:I = 0x1

.field private static l111l11111I1l:I = 0x3

.field private static l111l11111lIl:I = 0x2


# instance fields
.field private l111l11111Il:Ljava/lang/String;

.field private l111l1111l1Il:Ljava/lang/String;

.field private l111l1111lI1l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l111l1111lIl:I

.field private l111l1111llIl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private l111l1111l1Il()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l11111Il:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    return-object v0
.end method

.method public final l1111l111111Il(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l1111lIl:I

    return-void
.end method

.method public final l1111l111111Il(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l11111Il:Ljava/lang/String;

    return-void
.end method

.method public final l1111l111111Il(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l1111lI1l:Ljava/util/List;

    return-void
.end method

.method public final l111l11111I1l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l1111lI1l:Ljava/util/List;

    return-object v0
.end method

.method public final l111l11111I1l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l1111llIl:Ljava/lang/String;

    return-void
.end method

.method public final l111l11111Il()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l1111lIl:I

    return v0
.end method

.method public final l111l11111lIl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l1111llIl:Ljava/lang/String;

    return-object v0
.end method

.method public final l111l11111lIl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    return-void
.end method
