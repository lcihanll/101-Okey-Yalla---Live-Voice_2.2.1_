.class public Lcom/ishumei/l111l11111lIl/l111l11111lIl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;,
        Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;,
        Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;,
        Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;
    }
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String; = "sm"


# instance fields
.field private l111l11111I1l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;",
            ">;"
        }
    .end annotation
.end field

.field private l111l11111Il:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;",
            ">;"
        }
    .end annotation
.end field

.field private l111l11111lIl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;",
            ">;"
        }
    .end annotation
.end field

.field private l111l1111l1Il:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l111l1111lI1l:Ljava/lang/String;

.field private l111l1111lIl:Ljava/lang/String;

.field private l111l1111llIl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;",
            ">;"
        }
    .end annotation
.end field

.field private l111l11IlIlIl:I

.field private l11l1111I11l:Z

.field private l11l1111I1l:Z

.field private l11l1111I1ll:Z

.field private l11l1111Il:I

.field private l11l1111Il1l:I

.field private l11l1111Ill:Z

.field private l11l1111lIIl:Ljava/lang/String;

.field private l11l111l11Il:Z

.field private l11l111l1I1l:I

.field private l11l111l1Il:I

.field private l11l111l1lll:Z

.field private l11l111ll11l:I

.field private l11l111ll1Il:I

.field private l11l111lll:I

.field private l11l11IlIIll:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I11l:Z

    iput-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1l:Z

    const/16 v1, 0x32

    iput v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il1l:I

    iput-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Ill:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11IlIlIl:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1I1l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1Il:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111ll11l:I

    iput v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111ll1Il:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111lll:I

    return-void
.end method

.method private static l1111l111111Il(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;

    invoke-direct {v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v4}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;->l1111l111111Il(Ljava/lang/String;)V

    const-string v4, "pn"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;->l111l11111lIl(Ljava/lang/String;)V

    const-string v4, "uri"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;->l111l11111I1l(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;->l1111l111111Il()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static l1111l111111Il(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "sensitive."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private l1111l111111Il(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111ll11l:I

    return-void
.end method

.method private l1111l111111Il(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111llIl:Ljava/util/List;

    return-void
.end method

.method private l1111l111111Il(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111lIl:Ljava/util/Map;

    return-void
.end method

.method private l1111l111111Il(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111l1Il:Ljava/util/Set;

    return-void
.end method

.method private l1111l111111Il(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1lll:Z

    return-void
.end method

.method public static l111l11111I1l(Ljava/lang/String;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 3

    new-instance v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    invoke-direct {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    const-string v2, "risk_apps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111lIl:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    const-string v2, "risk_dirs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111Il(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    const-string v2, "white_apps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111l1Il(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111Il:Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    const-string v2, "sensitive"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111llIl(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111l1Il:Ljava/util/Set;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :try_start_5
    const-string v2, "core_atamper"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I11l:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :try_start_6
    const-string v2, "all_atamper"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1l:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :try_start_7
    const-string v2, "risk_file_switch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1ll:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :try_start_8
    const-string v2, "upload_checker_switch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Ill:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :try_start_9
    iput-object p0, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111lI1l:Ljava/lang/String;

    invoke-static {p0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111I1l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111lIl:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    return-object v0

    :catch_8
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static l111l11111I1l(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;

    invoke-direct {v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v4}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;->l1111l111111Il(Ljava/lang/String;)V

    const-string v4, "pn"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;->l111l11111lIl(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;->l1111l111111Il()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static l111l11111I1l(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;

    invoke-direct {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;->l1111l111111Il(Ljava/lang/String;)V

    const-string v3, "pn"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;->l111l11111lIl(Ljava/lang/String;)V

    const-string v3, "uri"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;->l111l11111I1l(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;->l1111l111111Il()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private l111l11111I1l(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111lll:I

    return-void
.end method

.method private l111l11111I1l(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111Il:Ljava/util/Map;

    return-void
.end method

.method private l111l11111I1l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l11Il:Z

    return-void
.end method

.method private static l111l11111Il(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v3, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;

    invoke-direct {v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;-><init>()V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l1111l111111Il(Ljava/lang/String;)V

    const-string v4, "sdcard"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l1111l111111Il(I)V

    goto :goto_1

    :cond_1
    const-string v4, "absolute"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l1111l111111Il(I)V

    :goto_1
    const-string v4, "dir"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l111l11111lIl(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l1111l111111Il()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private l111l11111Il(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11IlIlIl:I

    return-void
.end method

.method private l111l11111Il(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111lIl:Ljava/lang/String;

    return-void
.end method

.method private l111l11111Il(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Ill:Z

    return-void
.end method

.method public static l111l11111lIl(Ljava/lang/String;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 5

    const-string v0, "sysappcnt"

    const-string v1, "usrappcnt"

    new-instance v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    invoke-direct {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il:I

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il1l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :try_start_2
    const-string v0, "risk_apps"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111lIl:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    const-string v0, "risk_dirs"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111lIl(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l:Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    const-string v0, "white_apps"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111Il:Ljava/util/Map;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :try_start_5
    invoke-static {v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111l1Il:Ljava/util/Set;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :try_start_6
    const-string v0, "core_atamper"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I11l:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :try_start_7
    const-string v0, "all_atamper"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1l:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :try_start_8
    const-string v0, "risk_file_switch"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1ll:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :try_start_9
    const-string v0, "upload_checker_switch"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Ill:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :try_start_a
    const-string v0, "hook_switch"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l11IlIIll:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :try_start_b
    const-string v0, "hook_java_switch"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l11Il:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :try_start_c
    const-string v0, "ip_cache_switch"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1lll:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    :catch_b
    :try_start_d
    const-string v0, "net_max"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11IlIlIl:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    :catch_c
    :try_start_e
    const-string v0, "re_max"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1I1l:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    :catch_d
    :try_start_f
    const-string v0, "up_max"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1Il:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    :catch_e
    :try_start_10
    const-string v0, "weventt"

    const/16 v1, 0x3c

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111lll:I

    const-string v0, "weventc"

    const/16 v1, 0x64

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111ll11l:I

    const-string v0, "weventmax"

    const/16 v1, 0xa

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111ll1Il:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    :catch_f
    :try_start_11
    iput-object p0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111lI1l:Ljava/lang/String;

    invoke-static {p0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111I1l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111lIl:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    return-object v2

    :catch_10
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static l111l11111lIl(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;

    invoke-direct {v5}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v5, v6}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l1111l111111Il(Ljava/lang/String;)V

    const-string v6, "sdcard"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l1111l111111Il(I)V

    goto :goto_1

    :cond_0
    const-string v6, "absolute"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l1111l111111Il(I)V

    :goto_1
    const-string v6, "dir"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l111l11111lIl(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;->l1111l111111Il()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private l111l11111lIl(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111ll1Il:I

    return-void
.end method

.method private l111l11111lIl(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l:Ljava/util/Map;

    return-void
.end method

.method private l111l11111lIl(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "usrappcnt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il:I

    :cond_0
    const-string v0, "sysappcnt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il1l:I

    :cond_1
    return-void
.end method

.method private l111l11111lIl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l11IlIIll:Z

    return-void
.end method

.method private static l111l1111l1Il(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;

    invoke-direct {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;->l1111l111111Il(Ljava/lang/String;)V

    const-string v3, "pn"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;->l111l11111lIl(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;->l1111l111111Il()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private l111l1111l1Il(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1I1l:I

    return-void
.end method

.method private l111l1111l1Il(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111lI1l:Ljava/lang/String;

    return-void
.end method

.method private l111l1111l1Il(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1ll:Z

    return-void
.end method

.method private l111l1111lI1l(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il:I

    return-void
.end method

.method private l111l1111lI1l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1l:Z

    return-void
.end method

.method private l111l1111lIl(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il1l:I

    return-void
.end method

.method private static l111l1111llIl(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private l111l1111llIl(I)V
    .locals 0

    iput p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1Il:I

    return-void
.end method

.method private l111l1111llIl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I11l:Z

    return-void
.end method

.method private l111l11IlIlIl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1l:Z

    return v0
.end method

.method private l11l1111Ill()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l11IlIIll:Z

    return v0
.end method

.method private l11l111l11Il()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il:I

    return v0
.end method

.method private l11l111l1I1l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111lIIl:Ljava/lang/String;

    return-object v0
.end method

.method private l11l111l1Il()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111lIl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111lIl:Ljava/util/Map;

    return-object v0
.end method

.method private l11l111l1lll()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Il1l:I

    return v0
.end method

.method private l11l111ll11l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111I1l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l:Ljava/util/Map;

    return-object v0
.end method

.method private l11l111ll1Il()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l111l11111Il;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111Il:Ljava/util/Map;

    return-object v0
.end method

.method private l11l11IlIIll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ishumei/l111l11111lIl/l111l11111lIl$l1111l111111Il;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111llIl:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final l1111l111111Il()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111ll11l:I

    return v0
.end method

.method public final l1111l111111Il(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111lIIl:Ljava/lang/String;

    return-void
.end method

.method public final l111l11111I1l()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111lll:I

    return v0
.end method

.method public final l111l11111Il()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11IlIlIl:I

    return v0
.end method

.method public final l111l11111lIl()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111ll1Il:I

    return v0
.end method

.method public final l111l1111l1Il()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1I1l:I

    return v0
.end method

.method public final l111l1111lI1l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1lll:Z

    return v0
.end method

.method public final l111l1111lIl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l11Il:Z

    return v0
.end method

.method public final l111l1111llIl()I
    .locals 1

    iget v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l111l1Il:I

    return v0
.end method

.method public final l11l1111I11l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1ll:Z

    return v0
.end method

.method public final l11l1111I1l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I11l:Z

    return v0
.end method

.method public final l11l1111I1ll()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111lIl:Ljava/lang/String;

    return-object v0
.end method

.method public final l11l1111Il()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111lI1l:Ljava/lang/String;

    return-object v0
.end method

.method public final l11l1111Il1l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111l1Il:Ljava/util/Set;

    return-object v0
.end method

.method public final l11l1111lIIl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111Ill:Z

    return v0
.end method
