.class final Lcom/uqm/crashsight/protobuf/ByteString$ArraysByteArrayCopier;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/ByteString$ByteArrayCopier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArraysByteArrayCopier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteString$ArraysByteArrayCopier;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII)[B
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method