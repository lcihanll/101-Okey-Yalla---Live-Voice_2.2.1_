.class public Lcom/ishumei/l111l11111lIl/l1111l111111Il;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l11111lIl/l1111l111111Il$l1111l111111Il;
    }
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String; = "sm"

.field private static final l111l11111I1l:Ljava/lang/String; = "conf"

.field private static final l111l11111Il:Ljava/lang/String; = "zaq1mko0"

.field private static final l111l11111lIl:Ljava/lang/String; = "cloudms.conf"


# instance fields
.field private volatile l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;

.field private l111l1111lI1l:Ljava/lang/String;

.field private l111l1111lIl:Ljava/lang/String;

.field private l111l1111llIl:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111llIl:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;-><init>()V

    return-void
.end method

.method public static l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;
    .locals 1

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    return-object v0
.end method

.method private l1111l111111Il(Landroid/content/Context;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 5

    invoke-static {p1}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111I1l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "length"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "enc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1, v3}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;III)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object p1

    const-string v0, "local"

    invoke-virtual {p1, v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/lang/String;)V

    return-object p1
.end method

.method private l1111l111111Il(Ljava/lang/String;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 11

    const-string v0, "data"

    const-string v1, "length"

    const-string v2, "code"

    const-string v3, "ver"

    const-string v4, "enc"

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v7, 0x44c

    if-eq v7, p1, :cond_0

    return-object v5

    :cond_0
    const-string p1, "detail"

    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v6, v8}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;III)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v9

    const-string v10, "cloud"

    invoke-virtual {v9, v10}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/lang/String;)V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v10, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v10, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v10, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v10, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111llIl:Landroid/content/Context;

    invoke-static {v10}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloudms.conf"

    invoke-virtual {p1, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "conf"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v9

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "editor commit failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v5
.end method

.method private static l1111l111111Il(Ljava/lang/String;III)Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111Il(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "zaq1mko0"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    :try_start_1
    invoke-static {v1, p0, p1}, Lcom/ishumei/l111l1111llIl/l1111l111111Il;->l111l11111lIl(Ljava/lang/String;[BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/ishumei/l111l1111llIl/l11l1111lIIl;->l1111l111111Il([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    const/4 p2, 0x0

    array-length v1, p0

    const-string v3, "utf-8"

    invoke-direct {p1, p0, p2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, p0, p1}, Lcom/ishumei/l111l1111llIl/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-ne p3, v2, :cond_2

    invoke-static {p1}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111lIl(Ljava/lang/String;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l11111I1l(Ljava/lang/String;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object p0

    :catch_0
    return-object v0
.end method

.method private static l1111l111111Il(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cloudms.conf"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "conf"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "editor commit failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l11111lIl/l1111l111111Il;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/lang/String;

    invoke-static {v0}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;)Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "organization"

    iget-object v5, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "os"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdkver"

    const-string v6, "3.0.6"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "md5"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enc"

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "bb"

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111lIl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sid"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    invoke-direct {v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;-><init>()V

    invoke-virtual {v2, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l1111l111111Il;)Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private l111l11111Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 9

    const-string v0, "data"

    const-string v1, "length"

    const-string v2, "ver"

    const-string v3, "enc"

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111llIl:Landroid/content/Context;

    const-string v6, "cloudms.conf"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "conf"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111I1l(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5, v7, v8}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;III)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v7

    const-string v5, "local"

    invoke-virtual {v7, v5}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v7, :cond_3

    return-object v7

    :catch_0
    move-exception v5

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_3
    :try_start_1
    const-string v5, "{\"code\":0,\"data\":\"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\",\"enc\":1,\"length\":5866,\"ver\":1}"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_5
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v3, v4}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;III)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    new-instance v0, Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    invoke-direct {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;-><init>()V

    return-object v0
.end method

.method private static l111l11111lIl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "cloudms.conf"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "conf"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private l111l1111l1Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{\"code\":0,\"data\":\"YFuzQfnif1XcP25juS3EPuXNHmV3zp4hCG1/Q2pZpfUxG8X+BYW9TMbtPsW9i9SflstCL55e94T7t6ynRxLHKhvrVfG7PyQCv4uJ9w+zLVqbPdH8c8D3MGzNFYr5ixEtrPSfEgZGLp240HY/P/EJiiEpA2KGy+HQKFAvEpXavL6dvUV3P8qwyb1wkXnV1zLxSc/+nknWTqfUQs9ORtvqzJC3g4s5Nc3VWUsbmJWf3oKLuDwYOca8JNUvpCZeqN4vDrMuMlxwTGU3lPEo6kGG1DwJj4KH4fgjFWjbjoRWR4H8hbbRkCJIzTlHhnrm4GqfR4YAhSR+v/PWVBIuUZk/jn31xo++msUvdoGoJXfdlwV1jyUDdIxdK4T3HHa+YHhaMELLD16fwSJVEyrJq3etqpLgsJk1FdS/kPvo65qIqlBn2r9oNhgEh43rgKYs8907v6WCFv3fLD6aV5zOGSKfmrEYkPw5smdRSGam8ZQEgGrDYM9jnxPZeSpW7131QCdnBHRVM7xaFcBBcklPP0Opq+rrxj2A0ON9Y5+VbRnT6UcV68Z1A/JYr67huciMT6y5OnTF8vWrCj3AdOIkA+zMBHkAq5O0IpktHXaRPDi6zLCZ88ncoqKfgkOSsikxegLiJUhl2i0HUaJoShZH79iMG8Qo+F4YXEHTytZWnGrrWuiDD3nzRbquMSTcE4dT1wTecGCMOXpJdAZBK5ma4FnvU+PYBQimjHeA40Pdcf548Y7UujJdY0UXLVcbmtXI6IqnNVatBPgukvmWELeWqLZibz0kLTsvV141Y/vW3MGdkMZDektgUuUUwKCCeuNFykKe0hpf7XfVCXbDpHCrXib92UkXEr5gMlOGEfw5zdoEylo5xNrD2yXe4nuzGx6aFKnsrVFAXE7sqKsHCsTTOy5WE5YuLxxmARCtzd62N2Kk1GTLppWRB6b7FgQjYYZdYFZkM8CXDC24NXp0enwPvmVPTjkJPKmyufl0zsgbecMqcfl95nby8hk2TuFRThOOazsPkafop9PaAFpeLZEcSAgYyUBeGWcKYjtpzbyQbJVL8atGcXwXrvPN8QdnhEZ+9x86UtGKWpG4w8JbMSwIvyBpC4qviF4LYdP2/RHJcDVZ28bfLT8g0XhScQBvNWFW+GSdEZ305ZO5Uid6fHovYfZPTNRiyvb1nclMQGV12DWE0d3NmKx4ybV7ZLYPSq+n8lBMOTDXvRzKHZK09KtlOG7n1fiofO5OJsThay1SHg573qT5njoEU4nqo71nVimbBcd5rjrfV8kEgP0cyboagcaeYYsjWODFPW2NwciUpbTJPgjTQ0GDvizQ8GNNJUL3PO/h3khDEUWwkV0sF7DLx8s+M8CkTQ7ENPjDaBlip2eQJNa9LYThN0hCIQlkWmbc7O4M/UeOlc7bhP1VklfnWcyu0M6bfDhKlPNe8+y5wdmtqfeaRuAZjMN5MF6rm4LQ6cZ87CTnmgbpl5vhBNqpvXd2wUfPyQ9gliQCfITisW2i++1+7ySxGIDAJ+FQaWfSBFDfOy4PXlEf22NuamXbycrbPFliab8+gh52ml5tauWffsAANPTKcZulnszD05+Lfau7CNqnY0EAWbon8o7Eo/DPsNik992d1KJ3m6Z37BbNfJe8rYc8LYbMKhABwKVD2BloMxsG0yq+to5JR3GHo9ZdvOaeh92dKbNbyBa0+1Z2qd47Sf3gjZVpgeazzf/Q8kDjUe13XmeRS4J13CjbSFZFIe084zSPpAhyf0IYxFCn5qgyOJc4gVX/KqEm7bEEd4TDXelMbqnwBLIzPqMrbeCsQNlmlPa9lVkg9srpRywulM4mjyamqcbslRzScR6N+4QTWelT9OXEw0ZkR/tMpBaNuf1GTfh+MV3GsWaRrh39JNDvnbjtI+a6pyX2kuZpd6fhFxdJg5Q4akiYl93Uw3uZ3S9G5XxUXlk9duQjqW2VQ+vlJxmG0FXVjbsLe4vHDd+TaAigIRZmDQ9vfuKQ+9JMf8sBduTad6Ru+rRFmNY/ssX/bb3LNMjErbtKK//rtEaylQ2PiKHcPXDikDHKFaf3GIiZKR/WKDNAwcwYK8gaNYOmEQBYcu/0hGHxoPhnQVeZz3ibLpkKtqe/LWohRKCwQXzEdjxz5GdN8NNLxjFvR7oMWphgHBYN7COq3VuGXEWq90hbV+vYcko4hQWrB020B+VVugQGzeHC077shNlqDqk/MHtxyNd0Hq7p9KYeJFechydgderGANVOWRzA/Fk+gYdz19UOfivVwjVEjcCRnDAMYwyzuzQRRKwGks4xs+XgX/8TFIRy2oLV5D9vVawYv0qQMGSx7e4osnnYpcfbW9bsLP+pqpdYFzeUElRAgrFwJizBuszb3Pm/yrVSM9rSSpSehN8euf2yd3EquKeBI1e0Vmibp0BMsafBKqogRkMd/4vTqBSg3DqKaZHuvJIOdKuIDNe/F9ga2HROUtD7tv/e4a+vGZFEvwQ/Q3ealROj5XqHiXbHcYgHl+E618plv1P7XbAqbUExpEneyJ15ujQ+lpeNbCvIji/FaJagIGRmjux5Dhpxw1fuPtoiqTLfdd1pk6WQQT6233lMYPGdwkfT1SuoonMO6w/rGwwMJrHx1iuTBO+oSLqlS7TJ93Ob9kZPRxRkKMAoBWjf1gIcb4KWSbh21sCHeKVLSzwHw0mxR9RJUjeCvLgcJ9UbHoZM4aXp/joJtCQkwfocOgQ4AEj0VlUwXX5hGHGd3yIuw17xdSzi5kbRj9w2qPXrEBDkkM30qv8QdXqxmPLK1HG6QUn/L3SbV0bTqROHrO7iP8yo/K4VABdMBl0W7MgHRX/3+Aic/0dKKDjTAFk1HaBpRlQP+Q/PtOw3iqywkRDr23Su+8kGoWbqFhRY2WmBpoDkNdo31664Pp3p5pbdZxiG+mM1lj9ISeN34jz1xMSDmWTg00NqS/4q6jtztoZR9GcLnwbyCy2HHUxW1ooZ/k0UrYb20+mWQJmSOiKZg30lALLzO0w6Bpyx4WL+lGVFeUryAuRjvc5jTdkK6wCM9T6WgKBepO61AGDMPB5vxLojQ/+ciRdpgQBSROiPBuW2TQ/EniD/coFx77oLFY6Bwf1bJjjhEZfJh4f0dt9K/dpGKN/KwiS5qqo4j9RK17s+SfS3IL8qCbHLz3r3f7CMmWcxyl/igGVifT5PXVHJDU1r0Wg2U4scuI+RtPNhjGDjerjn6mSdg6KmRHrN3nBepqsd4x92j45mqaNISH/yUtpOKUjR3PaDVtfjsA6EEVYhjB+hFjJgCj3OSxLwVzxw0JThkNVHlhKPkBf3vlXGJB+/dUIakOZENb99DbQw9ENETM6nGeS/wncVxtBH9yJ6eRSOZ0WOMElzwNvGibdnPxz6sy0BI5MXHfG/cC+yUuT7zVNrVUwK4aYqGPq2DIs80JKnftnZ3zM/QXbEHBRyZDTbhsheH70lw4/WHBR73MBJ8F/QH4Wc6xk0D2xdvOXvqs/o5lXn4WvXmUROPiu22PVh0b6FSjkSnkkt90THHCrnKskuL4ZcEZfRABwXloovqyasUAiNzNP9lV8X/Oix6JgWXTfRS4seFN6qRSZu/VNvzlrRox1VyQkz54UifrIqFJjgZ8miwSX8IcEOc6WvTZqfvtBBlbk3o31kvgryRk80+aown9xr03zzO5kj2T2XoXJmrRiKlhhfA0S5Yhy6Iu1KjY8+M1Hwu4414DAgUXT6prG1zQgKzyoom6P2eNXzqycQ0SFBrjcf4PszpZL3WIeFsN41AcDC7m0U9bVyz3k4GHqdcRXIko5KX8JUzm9ud0JsXHMa8RwNMjmml9yagmg+j7iPyvXTzMp0sbCd3tC4zEuYLscfuc7K7965KKNWOAlOSZz62rRWBCUhdgJKRSju2cMjkYoGJVIPAVH1z1d6F6WuGZRg2Yuhrf2WUk2rjSpaNu+KxbK4WDpytjp/mJEQR9FhsKr/Zv/SwZeHUK3cjjod6vlMf1r9M43ZfH4kuX9Lh0CS2qW5vKYrc9cLvknvfJIn3eRBHDpGHo22qRvN9Prcex4Its7twbzULvP6Dn7uz4GC9NyQLYTs9Mom271odndV0ViaT56Pmewldx9VKXlFnR5u/MxGqif1fdGvHfQUwbB0emO+92QNDyeHBnkpJcWhF1cSQH3SmI4gltuamgskUBLO5X8yr5hcsihH3nFhLSqsQvAvGNmkp6IxfxKmT2KdVwrDBm8ckbEnAAdPBNeC50l/d9qCwk7I0hQ/dd7QnbgLPbWKop3+rPCIxFhFV47A8nk15r9DDnxp8oP4Z0WzRR9epJacpnp6GP+Pys1dIw9tTGnFy9DTgLpWcO44k7Xx+EIpPLH5mLqvd1nJ7YTMgdrlaoo62ygCdITyrcKMyb2Uo8XetVRmcF8O/by6hb37byyrPqAcn4nEihmv+DVjYZ+SkMS4uc4Bqoc2ALPr94Y6OnAgwUAl3BiyOtgSwTotgcu7MQTD1H9wbbpAlpp42mUfJiQ2FYSwcK1WUKExT5KaZsX7DPjSMwqgKqDX1SbVK7Sz6gChJxJf6M4QMh576NSNILSm3atnw1jxhmtBHv1Z7GMgw5+nqnmbrxXJ9aCVoMWRPZYzT0ihARwpFBRdHRCqDWe8SLFR3vMuO9V7JX9EqcuUmBXlx/MKZV2WXD4HzdEvDHxpEhJ4KxnSDSw6sVl9bua13+96kl4RtXz9Spw0jDgAGRtl+nU63r60Y9R+JnOk1yv+bVGs1pn1bnHbKaecnn2+kMxa0oddvY+X3RlD2BZkzqmD9v5by/xR6WbvAjwCCg3nhfLHrEiKjfu+Djv7i2+nkOX1vcnM7oMv1P4C360NopkzpSRtRUqmpYdUMHd5AQT0Vq3HMwKtN77J0DF1nCcz9Y/v509KbLUGDE2lqdTwZT1yaBsDvmGd2CNZmlfSVa3uZ8V6F9cadyLyobmaeaRWBBZBoNdXCgwk+ymh+vL2u1T9G+AyxMfFpwhyqxebHuTqnO4NJP6jnhZFOwUw3NHmRg2ukUxVDBBBhCvcE8+G66GDxciGbOTupOuJf7hQaZE+g8oWrUj1JJTcpkhveOixEQ5dX39rnIGSdMFPmN051jw9x8yRaR7RQdxU7fO9JEs5zC6sQCPxQ1JIFqxVWhaevs4tdMJ8PRXRu1akRHXYR4fn8KhqC4BdNlg9gNBHtIW4R4ovHWa9g60YPM+GlL6dgC/VyZRbDCq7ifSXd/S5HS3Mq2/nDyw0bdABmnt4t0sxWRvM/UDv35uBHRTKGxC/UOBjeUJbfe80nKoBPZHOuz1Q42CBfe7TIHTg8v6Vr/rsIfc+VjSe/lUWXD3LUYPYFsxcnWL/9GvG2fXckfh/61AM7OrasKrL5IhvLkgJo91hkB7aSOCXgCuhbKUlQJrDsnHkBAXf8RV+JpnFuNPFdGZe++Qt0PlpUnNiTK7CC4aNW/R7jgMDAidjnGo2gF1++2mpME+UvFu18akOk9MWJwuM3OjiUpwnDzytVJNI9DGyf5HG+1W+3J+nKGDl3Z1Qef+O0euO5Ermbxz3aZU+7RbD1oAPCa0MJQgwxKLuIGJgCO1vqEl9EsBbys44J/dyb7E4tfXRpAezcvgy10sk6DWqFA/KYwiGnyiLF8IfSrR7aMeljWWRhtOjJdXT09qO9MvK31mOdTvvsdwOIlzaerP9Ek2jYKuYbSCioOvEJB/s0ovw95bHY+7/AfOnIJXLlzkCuwFUDtB0vVudLtaPAiwkOsZy6/dGCzCKlMquM0S9vYTlLKDHhNwl9oGvri57wUv64Qfe1IuhP8maTh1pgxaVszpfrTDvywWk7lzWYaYNQT8HTsgBOM6l8ugbxSUD5VAsthuGqGEmrsqQXEEzeF4+mepZur4NCYFmVI1mmxnIaTA5W8UIZNgnDIOQ33ExER1uyMZdtcQ3jMPka7D+PYbhrHmJ/DV/2+vkZ2JRGdPS/0KEmIKlafiSH50LZLN2Boef4WkmrfB9m7pN/2sjKh/TB+Xegumv8Aqe6YgnHa89NwBFud8T+0lNejT0/jCRS6IDPaSCfGQOLE9HeUjHP32dSL0p48PZ8QSeHCETKjnbMJ1P7KeOcCN+C1cXYWCNIR4at4a0R4s4qv/YSL6vSE0yDMBzieera2+xetP+1QwK2sRZ98pYN1Z8fjcVJ69nCP19nau0lhSPfVT+SacUagdWRa8HxXS3KtQUEr84F3tzP7L1oowXVxC9iQfdOiTelt/cd6hCCX2M2NVyWSoysMa6/m6Qp9s7cbvMNZvlRvHG0es7qxVFWL13BYmLegwhqWCdM6IxB0JDBbiZ9xOBaQWPpEhqBSG/V1YY135pr6mZP747I+vfsUUHZurpIrc12C1ydS4fysJ+3QUPN+WqAxp5/o6y0sJL6ri0qna8Z767MKwA8E0la7Eu8YM61ph6HtBZp8JNBu7B4ZbF0f/hkURKppVrd4I69CbJh/h5mhLYmlH8Nb7IesQtpUxkr//tGpVhs5r+Ga9rbZuHQHEVGe7Qfw4kbGCxs0SHXe2EqyNnT5SF59ZpfGtN/1f/3vO3XeixdVno1BW4gX2mbHsEjDMGonrZTEPBc+wy8Z11UA7yu3CxSeB7CZY3IrlBk7yEaMRc1ziYMHBvO98p38+jEsaK6qB3GzazFZotenU8yker22d6LfPL3mDOyCepIS3EGQFOnkzQ1WRZ1vIWL883mdBvfErpfbhGeWgQiy67EtF/r7WlsSCp5/eBYk4noyZ1yYOm/uYpZRFk/UzqztKy+ooHanF3R/dunRmKnKFV+Pxr+JpMKPb1OXbJI4jVJhRHjiY1D5UxU/j30jt6WcuZk4aO3EfAMPK9Iz0kwQ6aGoGXQNpYUU9ndNzr8TVk/jJ1vM/j6HXKCWmsDm4F1MojGCqmBwexWj2mE7q4j6K6LELF5KAVRojz4PSja7e+Tw/5bD6+KTSIh6vD1J6O798BvTTSsF5ALRb5KcEYpzEGnJ7MapbnFwLSFIX+f1geEAiCIrI3UqWL82rD8nyEw3U/tWm81y7t8oMa6Md++oHvKFmG3Utp7FJsRudZpBKfGrUeW8IUkyKR5jN/9AWStq9lD36cpvP4m/pFQ/Uel75flL0ibwsiVEHvELLQB4PbPctl9mLp0Ln21jI88WCKEfCTZ3R0N2xq27h64A1PGEBpIq08pVwuCDu+5lZgy62sRLO1lBx/1wD4tJbvVHuHhO6fJGP3bVEpRHnnGGUUdX8SoJxGxgM9e6EpW8ZUZjBXG66SKPaP+EKS2dHNieHiInOD5WgkkqN4Cc3twAoIm5YEaZt0ml0IhbZOKXQBhq70nMWHokDM5vZP3WXfv9PdpwJeg4xxfJkafzxNb9uZUWTl6ekR+QH+PWeX1TIuVFe1eYHhMiLpn/1Niy8ceiYUqmagogMbbvPhbWyGEuTV74AZT3Ve5UGsuOhqecQyUcprkIVvd+OCGqzBURex+JmzTAkTOi6/nzoUoZ8rpfP28KgvlMmMZ6HWjRC3DeDKP22ZKynwD6wJ2/o5B0J8xmTnxg1eGOaNUj0G5oatqGoF9xdqeDFAFeKL5GLUOQa3Ksr6i+kHtOFQdQckczUJu9tTqBPv2a6qybfN0DSWHSdCDvfwFwaqUDnigFhIcnBrWMjnAcN0/I0VqVonkycU5xUBvH3ESpPYdjj9Ead5vQhn72pcOSOYA/WMNVGQst6prr1eUB8QVHAaY6A8h6+HnMIWHZWP0fPbzWZqgNRvY4tAbJzNyX8ZfdWqMXUmpQXWankAesKr4Yu2pyxRGzORZ/PQWVN3EKeAldVAABkbPmbtm+qmtz+Zkp3Xy/dvCxeQXA==\",\"enc\":1,\"length\":5866,\"ver\":1}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "length"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "enc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "ver"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_1
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, v4}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;III)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/lang/String;)V

    return-object v0
.end method

.method private l111l1111llIl()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/lang/String;

    invoke-static {v0}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;)Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "organization"

    iget-object v5, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "os"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdkver"

    const-string v6, "3.0.6"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "md5"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "enc"

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "bb"

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111lIl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sid"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    invoke-direct {v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;-><init>()V

    invoke-virtual {v2, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l1111l111111Il;)Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;)Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lIl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/lang/String;

    return-void
.end method

.method public final l111l11111I1l()V
    .locals 3

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v0

    new-instance v1, Lcom/ishumei/l111l11111lIl/l1111l111111Il$1;

    invoke-direct {v1, p0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il$1;-><init>(Lcom/ishumei/l111l11111lIl/l1111l111111Il;)V

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;
    .locals 2

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    if-nez v0, :cond_1

    const-class v0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v1

    iput-object v1, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l1111l1Il:Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    return-object v0
.end method
