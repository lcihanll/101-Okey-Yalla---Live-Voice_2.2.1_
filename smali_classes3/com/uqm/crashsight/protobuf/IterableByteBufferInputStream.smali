.class Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;
.super Ljava/io/InputStream;
.source "CrashSight"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private c:I

.field private d:Z

.field private e:[B

.field private f:I

.field private g:J


# direct methods
.method private a(I)V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->c:I

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    if-ne v0, p1, :cond_2

    iget p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->b:I

    const/4 p1, 0x0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->c:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->d:Z

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->e:[B

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->f:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->d:Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->g:J

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->e:[B

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->b:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->e:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->c:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->f:I

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a(I)V

    return v0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->c:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->g:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a(I)V

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->b:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->c:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->e:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->f:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->c:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/IterableByteBufferInputStream;->a(I)V

    :goto_0
    return p3
.end method
