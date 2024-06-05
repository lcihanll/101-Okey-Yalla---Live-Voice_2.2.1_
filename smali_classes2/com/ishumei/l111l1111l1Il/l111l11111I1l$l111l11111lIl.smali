.class public final Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l111l1111l1Il/l111l11111I1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l111l11111lIl"
.end annotation


# instance fields
.field l1111l111111Il:Ljava/net/HttpURLConnection;

.field l111l11111I1l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l111l11111Il:I

.field public l111l11111lIl:[B

.field l111l1111l1Il:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;

.field l111l1111lI1l:Z

.field public l111l1111lIl:I

.field l111l1111llIl:Lcom/ishumei/l111l11111I1l/l111l11111lIl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ishumei/l111l11111I1l/l111l11111lIl<",
            "Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;",
            ">;"
        }
    .end annotation
.end field

.field public l11l1111I11l:Ljava/lang/String;

.field l11l1111I1l:Ljava/lang/String;

.field public l11l1111I1ll:Z

.field l11l1111lIIl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111lIl:[B

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111I1l:Ljava/util/Map;

    const/4 v1, -0x1

    iput v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111l1Il:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111llIl:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111lI1l:Z

    iput v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111lIl:I

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111lIIl:Ljava/lang/String;

    return-void
.end method
