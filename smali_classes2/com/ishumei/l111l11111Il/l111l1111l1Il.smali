.class public final Lcom/ishumei/l111l11111Il/l111l1111l1Il;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l11111Il/l111l1111l1Il$l1111l111111Il;
    }
.end annotation


# static fields
.field private static final l1111l111111Il:I = -0x1

.field private static final l111l11111lIl:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ishumei/l111l11111Il/l111l1111l1Il$1;

    invoke-direct {v0}, Lcom/ishumei/l111l11111Il/l111l1111l1Il$1;-><init>()V

    sput-object v0, Lcom/ishumei/l111l11111Il/l111l1111l1Il;->l111l11111lIl:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static l1111l111111Il(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "0-[\\d]+$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    :goto_1
    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-object v1, p0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-object v2, v1

    :catch_2
    :goto_3
    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method private static l1111l111111Il(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 10

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_7

    aget-byte v5, v1, v4

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    if-nez v4, :cond_6

    :cond_0
    aget-byte v5, v1, v4

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    move v5, v4

    :goto_1
    if-ge v5, p1, :cond_6

    sub-int v7, v5, v4

    aget-byte v8, v1, v5

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_5

    :goto_2
    if-ge v5, v0, :cond_4

    aget-byte p0, v1, v5

    if-eq p0, v6, :cond_4

    aget-byte p0, v1, v5

    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 p0, v5, 0x1

    :goto_3
    if-ge p0, v0, :cond_2

    aget-byte p1, v1, p0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/String;

    sub-int/2addr p0, v5

    invoke-direct {p1, v1, v3, v5, p0}, Ljava/lang/String;-><init>([BIII)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_7
    return v2
.end method

.method private static l1111l111111Il([BI)I
    .locals 3

    :goto_0
    const/16 v0, 0x400

    if-ge p1, v0, :cond_2

    aget-byte v1, p0, p1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    aget-byte v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, v2, p1, v1}, Ljava/lang/String;-><init>([BIII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static l1111l111111Il()Lcom/ishumei/l111l11111Il/l111l1111l1Il$l1111l111111Il;
    .locals 5

    new-instance v0, Lcom/ishumei/l111l11111Il/l111l1111l1Il$l1111l111111Il;

    invoke-direct {v0}, Lcom/ishumei/l111l11111Il/l111l1111l1Il$l1111l111111Il;-><init>()V

    :try_start_0
    const-string v1, "d08f8d909cd09c8f8a96919990"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    array-length v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "af8d909c9a8c8c908d"

    invoke-static {v4}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "92909b9a93df919e929a"

    invoke-static {v4}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iput-object v2, v0, Lcom/ishumei/l111l11111Il/l111l1111l1Il$l1111l111111Il;->l1111l111111Il:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static l111l11111I1l()I
    .locals 11

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l1111l1Il;->l111l11111lIl()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v1, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d08c868cd09b9a89969c9a8cd08c868c8b9a92d09c8f8ad09c8f8a"

    invoke-static {v6}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "d09c8f8a998d9a8ed09c8f8a96919990a0929e87a0998d9a8e"

    invoke-static {v6}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x80

    new-array v7, v5, [B

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-byte v9, v7, v6

    invoke-static {v9}, Ljava/lang/Character;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7, v2, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    invoke-static {v8}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, v0, :cond_5

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "d08f8d909cd09c8f8a96919990"

    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v1, "9c8f8adfb2b785"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ishumei/l111l11111Il/l111l1111l1Il;->l1111l111111Il(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    mul-int/lit16 v1, v1, 0x3e8

    if-le v1, v4, :cond_4

    move v4, v1

    :cond_4
    :try_start_5
    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_3
    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_4
    move v0, v4

    :catch_1
    return v0
.end method

.method public static l111l11111Il()J
    .locals 6

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "d08f8d909cd0929a9296919990"

    invoke-static {v4}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "b29a92ab908b9e93"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/ishumei/l111l11111Il/l111l1111l1Il;->l1111l111111Il(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v0, v0

    const/16 v2, 0xa

    shl-long/2addr v0, v2

    :try_start_3
    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_0
    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l1111l111111Il(Ljava/io/Closeable;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_1
    return-wide v0

    :catch_1
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static l111l11111lIl()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "d08c868cd09b9a89969c9a8cd08c868c8b9a92d09c8f8ad08f908c8c969d939a"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ishumei/l111l11111Il/l111l1111l1Il;->l1111l111111Il(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v1, "d08c868cd09b9a89969c9a8cd08c868c8b9a92d09c8f8ad08f8d9a8c9a918b"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ishumei/l111l11111Il/l111l1111l1Il;->l1111l111111Il(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/ishumei/l111l11111Il/l111l1111l1Il;->l111l1111l1Il()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move v0, v1

    :catch_0
    :goto_0
    return v0
.end method

.method private static l111l11111lIl(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "0-[\\d]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static l111l1111l1Il()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "d08c868cd09b9a89969c9a8cd08c868c8b9a92d09c8f8ad08f908c8c969d939a"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ishumei/l111l11111Il/l111l1111l1Il;->l111l11111lIl:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
