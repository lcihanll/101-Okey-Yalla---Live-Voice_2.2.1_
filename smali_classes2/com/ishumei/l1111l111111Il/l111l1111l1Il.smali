.class public Lcom/ishumei/l1111l111111Il/l111l1111l1Il;
.super Ljava/lang/Object;


# static fields
.field private static final l1111l111111Il:Ljava/lang/String; = "sm"

.field private static final l111l11111lIl:Ljava/lang/String; = "seq"

.field private static l111l1111l1Il:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;


# instance fields
.field private l111l11111I1l:I

.field private l111l11111Il:Landroid/content/Context;

.field private l111l1111llIl:Lcom/ishumei/l111l11111I1l/l111l11111lIl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111I1l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111Il:Landroid/content/Context;

    new-instance v0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il$1;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, p0, v1, v2}, Lcom/ishumei/l1111l111111Il/l111l1111l1Il$1;-><init>(Lcom/ishumei/l1111l111111Il/l111l1111l1Il;ZI)V

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l1111llIl:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111Il:Landroid/content/Context;

    return-void
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111l1Il;)I
    .locals 0

    iget p0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111I1l:I

    return p0
.end method

.method public static l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111l1Il;
    .locals 2

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l1111l1Il:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

    if-nez v0, :cond_1

    const-class v0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l1111l1Il:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

    invoke-direct {v1}, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;-><init>()V

    sput-object v1, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l1111l1Il:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

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
    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l1111l1Il:Lcom/ishumei/l1111l111111Il/l111l1111l1Il;

    return-object v0
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111l1Il;Ljava/lang/String;)V
    .locals 2

    const-string v0, "seq"

    :try_start_0
    iget-object p0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111Il:Landroid/content/Context;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

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

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "mContext == null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private l1111l111111Il(Ljava/lang/String;)V
    .locals 3

    const-string v0, "seq"

    :try_start_0
    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111Il:Landroid/content/Context;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "editor commit failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "mContext == null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private l111l11111I1l()Ljava/lang/String;
    .locals 3

    const-string v0, "seq"

    :try_start_0
    iget-object v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111Il:Landroid/content/Context;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l1111l111111Il(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "from shared preference empty id"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mContext == null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private l111l11111Il()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111I1l()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111lIl(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized l111l11111lIl()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111I1l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111Il()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111lIl(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111I1l:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_0
    :try_start_4
    iget v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111I1l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111I1l:I

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l1111llIl:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

    invoke-virtual {v0}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;->l1111l111111Il()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ishumei/l1111l111111Il/l111l1111l1Il;->l111l11111I1l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
