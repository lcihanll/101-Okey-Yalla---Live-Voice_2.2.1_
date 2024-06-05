.class public Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il$l1111l111111Il;
    }
.end annotation


# static fields
.field private static final l111l11111I1l:I = 0x7109871a

.field private static final l111l11111Il:I = -0x41100ff3


# instance fields
.field public final l1111l111111Il:J

.field public final l111l11111lIl:J

.field private l111l1111l1Il:Ljava/nio/ByteBuffer;

.field private l111l1111lI1l:Ljava/nio/ByteBuffer;

.field private l111l1111llIl:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l111l1111l1Il:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l1111l111111Il:J

    iput-wide p4, p0, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l111l11111lIl:J

    iput-wide p6, p0, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l111l1111llIl:J

    iput-object p8, p0, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static l1111l111111Il(Ljava/io/RandomAccessFile;Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;)Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il$l1111l111111Il;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    iget-object v3, p1, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l111l1111l1Il:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    array-length p0, v0

    const/16 v4, 0x28

    if-ne p0, v4, :cond_2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    iget-wide v7, p1, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l111l11111lIl:J

    iget-wide p0, p1, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l1111l111111Il:J

    sub-long/2addr v7, p0

    sub-long/2addr v2, v7

    cmp-long p0, v5, v2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-static {v0, p0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "APK content size did not verify"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Verity digest size is wrong: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance p0, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il$l1111l111111Il;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v2}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il$l1111l111111Il;-><init>([[Ljava/security/cert/X509Certificate;[B)V

    return-object p0
.end method

.method public static l1111l111111Il(Ljava/io/RandomAccessFile;)Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;
    .locals 15

    invoke-static {p0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l1111llIl;->l1111l111111Il(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v0, 0x14

    sub-long v0, v8, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const v1, 0x504b0607

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_8

    invoke-static {v10}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l1111llIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-gtz v0, :cond_7

    invoke-static {v10}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l1111llIl;->l111l11111lIl(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    add-long/2addr v0, v6

    cmp-long v5, v0, v8

    if-nez v5, :cond_6

    const-wide/16 v0, 0x20

    cmp-long v5, v6, v0

    if-ltz v5, :cond_5

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v11, v1

    sub-long v11, v6, v11

    invoke-virtual {p0, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    invoke-virtual {p0, v1, v5, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v11

    const-wide v13, 0x20676953204b5041L

    cmp-long v1, v11, v13

    if-nez v1, :cond_4

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v11

    const-wide v13, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v11, v13

    if-nez v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    cmp-long v5, v11, v0

    if-ltz v5, :cond_3

    const-wide/32 v0, 0x7ffffff7

    cmp-long v5, v11, v0

    if-gtz v5, :cond_3

    const-wide/16 v0, 0x8

    add-long/2addr v0, v11

    long-to-int v1, v0

    int-to-long v13, v1

    sub-long v13, v6, v13

    cmp-long v0, v13, v2

    if-ltz v0, :cond_2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    cmp-long p0, v1, v11

    if-nez p0, :cond_1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const p0, 0x7109871a

    invoke-static {v0, p0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-instance p0, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APK Signing Block offset out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APK Signing Block size out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIP Central Directory offset out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". ZIP End of Central Directory offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ZIP64 APK not supported"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static l1111l111111Il(Ljava/nio/ByteBuffer;)V
    .locals 3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v2, -0x41100ff3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static l1111l111111Il(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l111l11111lIl(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {v1}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v1}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l111l11111lIl(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    const-string v4, "Unknown signature algorithm: 0x"

    const/16 v5, 0x425

    const/16 v6, 0x423

    const/16 v7, 0x421

    const/16 v8, 0x301

    const/16 v9, 0x202

    const/16 v10, 0x201

    if-eq v3, v10, :cond_2

    if-eq v3, v9, :cond_2

    if-eq v3, v8, :cond_1

    if-eq v3, v7, :cond_0

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_0
    const-string v11, "RSA"

    goto :goto_0

    :cond_1
    const-string v11, "DSA"

    goto :goto_0

    :cond_2
    const-string v11, "EC"

    :goto_0
    const/4 v12, 0x0

    if-eq v3, v10, :cond_6

    if-eq v3, v9, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_4

    packed-switch v3, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v13, "SHA512withRSA"

    goto :goto_1

    :pswitch_2
    new-instance v12, Ljava/security/spec/PSSParameterSpec;

    sget-object v16, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v17, 0x40

    const/16 v18, 0x1

    const-string v14, "SHA-512"

    const-string v15, "MGF1"

    move-object v13, v12

    invoke-direct/range {v13 .. v18}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v13, "SHA512withRSA/PSS"

    goto :goto_1

    :pswitch_3
    new-instance v12, Ljava/security/spec/PSSParameterSpec;

    sget-object v16, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v17, 0x20

    const/16 v18, 0x1

    const-string v14, "SHA-256"

    const-string v15, "MGF1"

    move-object v13, v12

    invoke-direct/range {v13 .. v18}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v13, "SHA256withRSA/PSS"

    :goto_1
    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    goto :goto_2

    :cond_3
    :pswitch_4
    const-string v13, "SHA256withRSA"

    goto :goto_1

    :cond_4
    const-string v13, "SHA256withDSA"

    goto :goto_1

    :cond_5
    const-string v13, "SHA512withECDSA"

    goto :goto_1

    :cond_6
    const-string v13, "SHA256withECDSA"

    goto :goto_1

    :goto_2
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v11

    new-instance v14, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v14, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v11, v14}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v13}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v12, :cond_7

    invoke-virtual {v11, v12}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_7
    invoke-virtual {v11, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v11, v1}, Ljava/security/Signature;->verify([B)Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l111l11111lIl(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    if-eq v3, v10, :cond_a

    if-eq v3, v9, :cond_9

    if-eq v3, v8, :cond_a

    if-eq v3, v7, :cond_8

    if-eq v3, v6, :cond_8

    if-eq v3, v5, :cond_8

    packed-switch v3, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v2, 0x3

    goto :goto_3

    :cond_9
    :pswitch_5
    const/4 v2, 0x2

    goto :goto_3

    :cond_a
    :pswitch_6
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l111l11111lIl(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    new-instance v6, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111Il;

    invoke-direct {v6, v4, v3}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111Il;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-static {v0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l111l11111lIl;->l1111l111111Il(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l11111Il/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x101
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
