.class final Lcom/uqm/crashsight/protobuf/ListFieldSchema$ListFieldSchemaLite;
.super Lcom/uqm/crashsight/protobuf/ListFieldSchema;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListFieldSchemaLite"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->c(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    invoke-static {p2, p3, p4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->a()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->c(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    :cond_2
    invoke-static {p1, p3, p4, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final b(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->b()V

    return-void
.end method
