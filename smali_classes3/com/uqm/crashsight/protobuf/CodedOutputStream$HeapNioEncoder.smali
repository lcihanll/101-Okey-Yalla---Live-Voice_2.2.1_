.class final Lcom/uqm/crashsight/protobuf/CodedOutputStream$HeapNioEncoder;
.super Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeapNioEncoder"
.end annotation


# instance fields
.field private final b:Ljava/nio/ByteBuffer;


# virtual methods
.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$HeapNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$HeapNioEncoder;->m()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
