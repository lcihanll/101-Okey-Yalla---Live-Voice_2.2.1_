.class Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapFieldAccessor"
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private final b:Lcom/uqm/crashsight/protobuf/Message;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getDefaultInstance"

    invoke-static {p2, v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->Q()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->f()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->b:Lcom/uqm/crashsight/protobuf/Message;

    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message;->q()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->k()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->k()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->Q()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->Q()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->l()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->l()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->e()Ljava/util/List;

    move-result-object p1

    check-cast p2, Lcom/uqm/crashsight/protobuf/Message;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message;->p()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->c(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p2

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->h()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p2

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
