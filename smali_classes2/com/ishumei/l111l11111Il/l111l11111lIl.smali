.class public final Lcom/ishumei/l111l11111Il/l111l11111lIl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l11111Il/l111l11111lIl$l1111l111111Il;
    }
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String;

.field private static final l111l11111I1l:Ljava/lang/String;

.field private static final l111l11111Il:Ljava/lang/String;

.field private static final l111l11111lIl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "9a878f"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il:Ljava/lang/String;

    const-string v0, "9e8f94ac969891b79e8c97bc909b9a"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111lIl:Ljava/lang/String;

    const-string v0, "9e8f94af9e8b97"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l:Ljava/lang/String;

    const-string v0, "8c969891969198b6919990"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111Il:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static l1111l111111Il()I
    .locals 1

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public static l1111l111111Il(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "8b90bd868b9abe8d8d9e86"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l1111l111111Il(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static l1111l111111Il(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111Il:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void
.end method

.method private static l1111l111111Il(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il:Ljava/lang/String;

    const-string v0, "9e8f94af9e8b97df968cdf918a9393"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d09b9e8b9ed09e8f8fd0"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "9e8f94af9e8b97df968cdf91908bdf8c8b9e8d8bdf88968b97dfd8d09b9e8b9ed09e8f8fd0"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/io/RandomAccessFile;)Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/io/RandomAccessFile;Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;)Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il$l1111l111111Il;

    move-result-object p1

    iget-object p1, p1, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il$l1111l111111Il;->l1111l111111Il:[[Ljava/security/cert/X509Certificate;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    aget-object p1, p1, v0

    new-instance v0, Landroid/content/pm/Signature;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    sget-object p1, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111lIl:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_3
    sget-object v1, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    nop

    :catch_1
    :cond_2
    return-void

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    throw p0
.end method

.method private static l1111l111111Il(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "989a8baf9e9c949e989ab6919990"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/16 p0, 0x40

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-static {v0, v2, v4, v3}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l1111l111111Il(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "8c9698919e8b8a8d9a8c"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l111l11111lIl(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    if-eqz p0, :cond_2

    array-length v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_2

    return-object p0

    :catchall_0
    :cond_2
    return-object v1
.end method

.method public static l111l11111I1l()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "989a8baf9e9c949e989ab19e929a"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l1111l111111Il(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    return-object v1
.end method

.method public static l111l11111Il()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static l111l11111lIl()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :catch_0
    :goto_0
    return-object v1
.end method

.method private static l111l11111lIl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8b90bd868b9abe8d8d9e86"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l1111l111111Il(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "959e899ed18c9a9c8a8d968b86d1b29a8c8c9e989abb96989a8c8b"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "989a8bb6918c8b9e919c9a"

    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v6, v4, [Ljava/lang/String;

    const-string v8, "b2bbca"

    invoke-static {v8}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v6}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "8d9a8c9a8b"

    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l1111l111111Il(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "8a8f9b9e8b9a"

    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [B

    aput-object v6, v5, v7

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-static {v2, v3, v5, v6}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l1111l111111Il(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "9b96989a8c8b"

    invoke-static {p0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ishumei/l111l1111llIl/l111l1111l1Il;->l1111l111111Il(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length v2, p0

    :goto_0
    if-ge v7, v2, :cond_2

    aget-byte v3, p0, v7

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_1

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private static l111l11111lIl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l111l1111l1Il()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-nez v1, :cond_0

    sget-object v1, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il:Ljava/lang/String;

    const-string v2, "9c8b87df968cdf918a9393"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il:Ljava/lang/String;

    const-string v2, "9e8f94af9e8b97df968cdf918a9393"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    sget-object v2, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d09b9e8b9ed09e8f8fd0"

    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "9e8f94af9e8b97df968cdf91908bdf8c8b9e8d8bdf88968b97dfd8d09b9e8b9ed09e8f8fd0"

    invoke-static {v4}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/io/RandomAccessFile;)Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/io/RandomAccessFile;Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;)Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il$l1111l111111Il;

    move-result-object v1

    iget-object v1, v1, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il$l1111l111111Il;->l1111l111111Il:[[Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v1, v1, v2

    new-instance v2, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sget-object v1, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l111l11111lIl:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/Signature;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v1

    :goto_0
    :try_start_3
    sget-object v3, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/ishumei/l111l11111Il/l111l11111lIl;->l1111l111111Il(Ljava/util/Map;)V

    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_4
    throw v0
.end method

.method public static l111l1111llIl()I
    .locals 1

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
