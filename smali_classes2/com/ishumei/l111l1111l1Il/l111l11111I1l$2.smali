.class final Lcom/ishumei/l111l1111l1Il/l111l11111I1l$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;Ljava/lang/String;Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Ljava/lang/String;

.field private synthetic l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l;


# direct methods
.method constructor <init>(Lcom/ishumei/l111l1111l1Il/l111l11111I1l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$2;->l111l11111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    iput-object p2, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$2;->l1111l111111Il:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    iget-object p1, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$2;->l1111l111111Il:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$2;->l1111l111111Il:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    iget-object v0, p0, Lcom/ishumei/l111l1111l1Il/l111l11111I1l$2;->l1111l111111Il:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
