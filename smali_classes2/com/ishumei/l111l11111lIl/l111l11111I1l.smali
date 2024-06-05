.class public final Lcom/ishumei/l111l11111lIl/l111l11111I1l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l11111lIl/l111l11111I1l$l1111l111111Il;
    }
.end annotation


# instance fields
.field private l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l;-><init>()V

    return-void
.end method

.method public static l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111I1l;
    .locals 1

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111I1l$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111I1l;

    move-result-object v0

    return-object v0
.end method

.method private l111l11111lIl()Lcom/ishumei/l1111l111111Il/l111l11111I1l;
    .locals 2

    new-instance v0, Lcom/ishumei/l1111l111111Il/l111l11111I1l;

    invoke-direct {v0}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;-><init>()V

    const-string v1, "exception"

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l11l1111I11l(Ljava/lang/String;)V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l1111llIl(Ljava/lang/String;)V

    const-string v1, "3.0.6"

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l1111lIl(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l1111lI1l(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l11l1111lIIl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l11111Il(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l1111l1Il(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111lIl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l11111lIl(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111I1l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l11111I1l(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111Il()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l1111l111111Il(Ljava/lang/String;)V

    return-object v0
.end method

.method private static l111l11111lIl(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final l1111l111111Il(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "android"

    :try_start_0
    new-instance v2, Lcom/ishumei/l1111l111111Il/l111l11111I1l;

    invoke-direct {v2}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;-><init>()V

    const-string v3, "exception"

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l11l1111I11l(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l1111llIl(Ljava/lang/String;)V

    const-string v3, "3.0.6"

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l1111lIl(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l1111lI1l(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l11l1111lIIl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v3}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l11111Il(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v3}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l1111l1Il(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111lIl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l11111lIl(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111I1l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l111l11111I1l(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111Il()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l1111l111111Il(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l111l11111lIl(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l11l1111I1l(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111lIl([B)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "organization"

    invoke-virtual {v2}, Lcom/ishumei/l1111l111111Il/l111l11111I1l;->l1111l111111Il()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appId"

    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "encode"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tn"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ep"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
