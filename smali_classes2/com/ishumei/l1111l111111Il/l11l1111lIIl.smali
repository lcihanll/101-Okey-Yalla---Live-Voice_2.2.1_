.class public final Lcom/ishumei/l1111l111111Il/l11l1111lIIl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l1111l111111Il/l11l1111lIIl$l1111l111111Il;
    }
.end annotation


# instance fields
.field l1111l111111Il:Ljava/lang/Runnable;

.field private l111l11111I1l:I

.field private l111l11111Il:I

.field private l111l11111lIl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ishumei/l1111l111111Il/l11l1111I11l;",
            ">;"
        }
    .end annotation
.end field

.field private l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;

.field private l111l1111lI1l:Ljava/lang/Runnable;

.field private l111l1111llIl:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111I1l:I

    iput v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111Il:I

    iput-boolean v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111llIl:Z

    new-instance v0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$1;

    invoke-direct {v0, p0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$1;-><init>(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)V

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111lI1l:Ljava/lang/Runnable;

    new-instance v0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$2;

    invoke-direct {v0, p0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$2;-><init>(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)V

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;-><init>()V

    return-void
.end method

.method public static l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111lIIl;
    .locals 1

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;Lcom/ishumei/l111l11111lIl/l111l11111lIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    return-object p1
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)V
    .locals 4

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111Il:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111Il:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appname"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl:Ljava/util/ArrayList;

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ishumei/l1111l111111Il/l11l1111I11l;

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v1, "wevent"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111llIl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v3}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/ishumei/dfp/SMSDK;->v3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il()[B

    move-result-object v1

    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111Il()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;[BZ)Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    new-instance v1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    invoke-direct {v1}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l1111l111111Il;)Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111llIl:Z

    return p1
.end method

.method static synthetic l111l11111I1l(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111llIl:Z

    return p0
.end method

.method static synthetic l111l11111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)I
    .locals 0

    iget p0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111Il:I

    return p0
.end method

.method static synthetic l111l11111lIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    return-object p0
.end method

.method private l111l11111lIl()V
    .locals 5

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111Il:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111Il:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appname"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl:Ljava/util/ArrayList;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ishumei/l1111l111111Il/l11l1111I11l;

    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v1, "wevent"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111llIl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v3}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v4}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ishumei/dfp/SMSDK;->v3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il()[B

    move-result-object v2

    sget-object v3, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v3}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111Il()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;[BZ)Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v1

    new-instance v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    invoke-direct {v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;-><init>()V

    invoke-virtual {v2, v1}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l1111l111111Il;)Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v3}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic l111l1111l1Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)I
    .locals 2

    iget v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111I1l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111I1l:I

    return v0
.end method

.method static synthetic l111l1111lI1l(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l1111lI1l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l111l1111llIl(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l111l11111lIl:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final l1111l111111Il(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 20

    if-nez p3, :cond_0

    const/4 v0, -0x1

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    move v3, v0

    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    if-nez p3, :cond_1

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    move v6, v1

    :goto_1
    if-nez p3, :cond_2

    const/high16 v7, -0x40800000    # -1.0f

    goto :goto_2

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    move v7, v1

    :goto_2
    const-wide/16 v1, -0x1

    if-nez p3, :cond_3

    move-wide v8, v1

    goto :goto_3

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    move-wide v8, v4

    :goto_3
    if-nez p3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    :goto_4
    move-wide v10, v1

    if-nez p3, :cond_5

    const/high16 v12, -0x40800000    # -1.0f

    goto :goto_5

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v1

    move v12, v1

    :goto_5
    if-nez p3, :cond_6

    const/high16 v13, -0x40800000    # -1.0f

    goto :goto_6

    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v0

    move v13, v0

    :goto_6
    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v14

    new-instance v15, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v13}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$3;-><init>(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;ILjava/lang/String;Ljava/lang/String;FFJJFF)V

    const/16 v16, 0x6

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IJZ)V

    return-void
.end method
