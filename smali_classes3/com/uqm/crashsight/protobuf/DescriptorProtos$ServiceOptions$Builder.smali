.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->b:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    :cond_1
    throw p1
.end method


# virtual methods
.method public final synthetic a()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object v0
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->f()Z

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->b:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->j()V

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->j()V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->j()V

    return-object p0
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->e(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final synthetic b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->f(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MessageReflection;->b(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/uqm/crashsight/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    throw v1
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->c(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method protected final c()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->N()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->e(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final synthetic c(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object v0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->M()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->f(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final synthetic d(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->c(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->b:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;Z)Z

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->a:I

    :cond_1
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;

    :goto_0
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;I)I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->i()V

    return-object v0
.end method

.method public final bridge synthetic e(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->e(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final bridge synthetic f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic f(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->f(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    return-object p1
.end method

.method public final synthetic g()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/uqm/crashsight/protobuf/Message;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MessageReflection;->b(Lcom/uqm/crashsight/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/uqm/crashsight/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    throw v1
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v2

    :goto_2
    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->m()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic r()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method
