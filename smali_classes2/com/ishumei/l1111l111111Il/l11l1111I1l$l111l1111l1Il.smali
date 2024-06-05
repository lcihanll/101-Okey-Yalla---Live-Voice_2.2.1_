.class final Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111l1Il;
.super Lcom/ishumei/l1111l111111Il/l11l1111I1l$l1111l111111Il;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l11l1111I1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l111l1111l1Il"
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String;


# instance fields
.field private l111l11111lIl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "8c978a929a96d18b878b"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111l1Il;->l1111l111111Il:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l1111l111111Il;-><init>(B)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111l1Il;->l111l11111lIl:Ljava/util/List;

    sget-object v1, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111l1Il;->l1111l111111Il:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final l1111l111111Il()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l1111l1Il;->l111l11111lIl:Ljava/util/List;

    return-object v0
.end method
