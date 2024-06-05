.class public final Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1ll;
.super Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;


# instance fields
.field private l1111l111111Il:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;-><init>()V

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1ll;->l1111l111111Il:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getOAID"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1ll;->l1111l111111Il:Landroid/content/Context;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method
