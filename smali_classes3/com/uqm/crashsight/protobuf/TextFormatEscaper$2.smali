.class final Lcom/uqm/crashsight/protobuf/TextFormatEscaper$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/protobuf/TextFormatEscaper;->a([B)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/TextFormatEscaper$2;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormatEscaper$2;->a:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/TextFormatEscaper$2;->a:[B

    array-length v0, v0

    return v0
.end method