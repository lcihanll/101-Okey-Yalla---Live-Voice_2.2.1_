.class public final Lcom/ishumei/l111l1111l1Il/l111l11111I1l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;,
        Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;
    }
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String; = "sm"

.field private static final l111l11111I1l:Ljava/lang/String; = "Content-Type"

.field private static final l111l11111Il:Ljava/lang/String; = "application/octet-stream"

.field private static final l111l11111lIl:Ljava/lang/String; = "Content-Length"

.field private static final l111l1111l1Il:Ljava/lang/String; = "Connection"

.field private static l111l1111lI1l:Ljava/lang/String; = "POST"

.field private static final l111l1111llIl:Ljava/lang/String; = "Close"


# instance fields
.field private l111l1111lIl:I

.field private l11l1111I11l:I

.field private l11l1111I1l:I

.field private l11l1111I1ll:J

.field private l11l1111Il:Ljavax/net/ssl/SSLContext;

.field private l11l1111Il1l:[Ljavax/net/ssl/TrustManager;

.field private l11l1111Ill:Ljava/security/KeyStore;

.field private l11l1111lIIl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il1l:[Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Ill:Ljava/security/KeyStore;

    return-void
.end method

.method private l1111l111111Il([BLjava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_6

    array-length v0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l1111l1Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;

    move-result-object v2

    invoke-virtual {v2, v1, p4}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/URL;

    sget-object v3, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l111l1111lIl:I

    if-nez v2, :cond_1

    move-object v2, p3

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v3, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$1;

    invoke-direct {v3, p0, v1}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$1;-><init>(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    iget-object v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il1l:[Ljavax/net/ssl/TrustManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il:Ljavax/net/ssl/SSLContext;

    if-eqz v2, :cond_1

    move-object v3, p3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l111l1111lI1l:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {p3, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v3, "Close"

    invoke-virtual {p3, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111I11l:I

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111I1l:I

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    array-length v2, p1

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_5

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;

    move-result-object v3

    invoke-virtual {v3, v1, p4}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/net/HttpURLConnection;)V

    return-object p4

    :catchall_0
    move-exception p4

    goto :goto_3

    :catchall_1
    move-exception p4

    move-object v2, v0

    :goto_3
    move-object v0, p2

    move-object p2, p1

    move-object p1, p4

    goto :goto_4

    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    new-instance p4, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object p2, v0

    move-object v2, p2

    goto :goto_4

    :catchall_4
    move-exception p1

    move-object p2, v0

    move-object p3, p2

    move-object v2, p3

    :goto_4
    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/net/HttpURLConnection;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "data is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;[BLjava/util/Map;Ljava/lang/String;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;Ljava/lang/String;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V

    return-void
.end method

.method private l1111l111111Il([BLjava/util/Map;Ljava/lang/String;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    array-length v0, p1

    if-eqz v0, :cond_8

    if-eqz p4, :cond_0

    iget-object v0, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    invoke-direct {v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;-><init>()V

    iput-object v0, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    :try_start_0
    iget-object v3, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget v3, v3, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l1111l1Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/ishumei/l111l11111lIl/l1111l111111Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/net/URL;

    sget-object v6, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_3

    iget-object v6, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object v3, v6, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I1l:Ljava/lang/String;

    :cond_3
    move-object v3, v5

    :goto_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v5, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l111l1111lIl:I

    if-nez v5, :cond_4

    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v6, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$2;

    invoke-direct {v6, p0, v4}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$2;-><init>(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    iget-object v4, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il1l:[Ljavax/net/ssl/TrustManager;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il:Ljavax/net/ssl/SSLContext;

    if-eqz v4, :cond_4

    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_4
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l111l1111lI1l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v3, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v2, "Close"

    invoke-virtual {v3, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111I11l:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111I1l:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    array-length v0, p1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    move-object v1, v3

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    :goto_3
    :try_start_3
    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/net/HttpURLConnection;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    if-eqz p4, :cond_6

    iget-object v3, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111lIIl:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    :goto_4
    if-eqz p4, :cond_7

    iget-object v0, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object v1, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l1111l111111Il:Ljava/net/HttpURLConnection;

    iget-object v0, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object p1, v0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111lIl:[B

    iget-object p1, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object p2, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111I1l:Ljava/util/Map;

    iget-object p1, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object p3, p1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I11l:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l1111l111111Il()V

    :cond_7
    return-void

    :catchall_2
    move-exception p1

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "data is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l1111l111111Il;)Lcom/ishumei/l111l1111l1Il/l111l11111I1l;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111Il()I

    move-result v2

    iput v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l111l1111lIl:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111l1Il()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111llIl()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111lIl()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111I11l:I

    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l11111I1l()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111I1l:I

    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lIl()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111I1ll:J

    iget v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l111l1111lIl:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_4

    return-object p0

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l111l1111lI1l()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "smfp"

    invoke-virtual {v1, v2, p1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il1l:[Ljavax/net/ssl/TrustManager;

    const-string p1, "SSL"

    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il:Ljavax/net/ssl/SSLContext;

    iget-object v1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il1l:[Ljavax/net/ssl/TrustManager;

    invoke-virtual {p1, v0, v1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p0

    :catch_0
    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111Il1l:[Ljavax/net/ssl/TrustManager;

    return-object p0
.end method

.method public final l1111l111111Il([BLjava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object p2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    rem-int v2, v1, p2

    iget-object v3, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    :try_start_0
    invoke-direct {p0, p1, v4, v3, v5}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "all retry have fail"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l1111l111111Il([BLjava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l1111l111111Il([BZLjava/util/Map;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    :try_start_0
    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l111l1111l1Il()I

    move-result v1

    :goto_0
    iget-object v2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    if-nez v2, :cond_1

    new-instance v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    invoke-direct {v2}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;-><init>()V

    iput-object v2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    :cond_1
    iget-object v2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput v0, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111Il:I

    iget-object v2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object p1, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111lIl:[B

    iget-object v2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object p3, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l11111I1l:Ljava/util/Map;

    iget-object v2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111lI1l:Z

    iget-object v2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object p4, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111l1Il:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;

    iget-object v2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v3, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111lIl:I

    iget-object v1, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object v2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I11l:Ljava/lang/String;

    iget-object v1, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-boolean p2, v1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l11l1111I1ll:Z

    iget-object p2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    new-instance v9, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$3;

    const/4 v3, 0x1

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il()I

    move-result v4

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111I1ll:J

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$3;-><init>(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;ZIZJZ)V

    iput-object v9, p2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111llIl:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

    iget-object p2, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iget-object p2, p2, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;->l111l1111llIl:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

    iget-object v1, p4, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l111l11111lIl;

    iput-object v1, p2, Lcom/ishumei/l111l11111I1l/l111l11111lIl;->l1111l111111Il:Ljava/lang/Object;

    :cond_2
    iget-object p2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l11l1111lIIl:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;Ljava/lang/String;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    return-void
.end method
