.class final Lcom/uqm/crashsight/protobuf/Utf8;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;,
        Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;,
        Lcom/uqm/crashsight/protobuf/Utf8$SafeProcessor;,
        Lcom/uqm/crashsight/protobuf/Utf8$Processor;,
        Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;
    }
.end annotation


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/Utf8$SafeProcessor;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/Utf8$SafeProcessor;-><init>()V

    :goto_0
    sput-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method static synthetic a(II)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Utf8;->b(III)I

    move-result p0

    return p0
.end method

.method static a(ILjava/nio/ByteBuffer;II)I
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->a(ILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static a(I[BII)I
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->a(I[BII)I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/CharSequence;)I
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p0, v2, v4}, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, v3

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/CharSequence;[BII)I
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->a(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Ljava/nio/ByteBuffer;III)I
    .locals 2

    const/16 v0, -0xc

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    add-int/2addr p2, v1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p3, p0}, Lcom/uqm/crashsight/protobuf/Utf8;->b(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    if-gt p1, v0, :cond_4

    const/16 p2, -0x41

    if-le p0, p2, :cond_2

    goto :goto_0

    :cond_2
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_3
    if-le p1, v0, :cond_5

    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_5
    return p1
.end method

.method static a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;)Z
    .locals 3

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->a(Ljava/nio/ByteBuffer;II)Z

    move-result p0

    return p0
.end method

.method public static a([B)Z
    .locals 3

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->a([BII)Z

    move-result p0

    return p0
.end method

.method public static a([BII)Z
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->a([BII)Z

    move-result p0

    return p0
.end method

.method private static b(III)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic b(Ljava/nio/ByteBuffer;II)I
    .locals 6

    add-int/lit8 p2, p2, -0x7

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method static b([BII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/Utf8;->a:Lcom/uqm/crashsight/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;->b([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c([BII)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    const/16 v1, -0xc

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    aget-byte p2, p0, p1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/uqm/crashsight/protobuf/Utf8;->b(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_4

    const/16 p1, -0x41

    if-le p0, p1, :cond_2

    goto :goto_0

    :cond_2
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v0

    return p0

    :cond_3
    if-le v0, v1, :cond_5

    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_5
    return v0
.end method
