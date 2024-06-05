.class final Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;
.super Lcom/ishumei/l1111l111111Il/l11l1111I1l$l1111l111111Il;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l11l1111I1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l111l11111Il"
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String;

.field private static final l111l11111lIl:[Ljava/lang/String;


# instance fields
.field private l111l11111I1l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l111l11111Il:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "d18b978a929d9c9e9c979aa0"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l1111l111111Il:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "d19e919b908d969b"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "af969c8b8a8d9a8c"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "bb90889193909e9b"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "bb909c8a929a918b8c"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l111l11111lIl:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l1111l111111Il;-><init>(B)V

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l111l11111Il:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l1111l111111Il:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l111l11111I1l:Ljava/util/List;

    sget-object p2, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l111l11111lIl:[Ljava/lang/String;

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    iget-object v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l111l11111I1l:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l111l11111I1l:Ljava/util/List;

    return-object v0
.end method

.method public final l111l11111lIl(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l111l11111Il;->l111l11111Il:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111lIl([B)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/ishumei/l1111l111111Il/l11l1111I1l$l1111l111111Il;->l111l11111lIl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
