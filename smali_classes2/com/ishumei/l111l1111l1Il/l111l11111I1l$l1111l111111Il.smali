.class public abstract Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;
.super Lcom/ishumei/l111l11111I1l/l111l11111lIl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l111l1111l1Il/l111l11111I1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l1111l111111Il"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ishumei/l111l11111I1l/l111l11111lIl<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static l111l11111I1l:I = 0x0

.field private static l111l11111Il:I = 0x1

.field private static l111l1111l1Il:I = 0x2

.field private static l111l1111llIl:I = 0x3


# instance fields
.field protected l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;


# direct methods
.method protected constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;-><init>(ZI)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    return-void
.end method

.method private constructor <init>(ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;-><init>(ZIZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    return-void
.end method

.method private constructor <init>(ZIZJZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;-><init>(ZIZJZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    return-void
.end method


# virtual methods
.method public abstract l1111l111111Il(Ljava/lang/String;)V
.end method

.method public l1111l111111Il(Ljava/lang/String;I)Z
    .locals 1

    iget-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-boolean p1, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111lI1l:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget p1, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    add-int/2addr p1, p2

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111lIl:I

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget v0, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    iget-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object p1, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/net/HttpURLConnection;)V

    iget-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    iget-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object p1, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111llIl:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

    invoke-virtual {p1}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;->l1111l111111Il()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111lIIl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111lIIl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l1111l111111Il(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object v1, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111lIIl:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "HttpUrlConnection is null"

    invoke-virtual {p0, v1, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l1111l111111Il(Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 v0, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v2, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "responseCode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l1111l111111Il(Ljava/lang/String;I)Z

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v3, v3, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I1l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;

    move-result-object v3

    iget-object v4, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v4, v4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I11l:Ljava/lang/String;

    invoke-static {v4}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l1111l1Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v5, v5, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I1l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l1111l111111Il(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/net/HttpURLConnection;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1
    :try_start_4
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response content err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l1111l111111Il(Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/net/HttpURLConnection;)V

    return-void

    :catchall_2
    move-exception v1

    :goto_2
    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v0, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/net/HttpURLConnection;)V

    throw v1

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v2, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/net/HttpURLConnection;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l1111l111111Il(Ljava/lang/String;I)Z

    return-void
.end method
