.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Lcom/uqm/crashsight/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->O()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->O()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->O()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->O()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    sget-object p1, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    :cond_1
    throw p1
.end method

.method private e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_1
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x2

    :cond_3
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_4
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->i()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->a(Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->j()V

    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->a(Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_5
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->j()V

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->j()V

    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->j()V

    :cond_8
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_a

    new-instance v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>(Lcom/uqm/crashsight/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->j()V

    :cond_b
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->j()V

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->isInitialized()Z

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->c(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method protected final c()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->X()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final synthetic c(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->W()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final synthetic d(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->c(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final bridge synthetic f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final synthetic g()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/uqm/crashsight/protobuf/Message;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->isInitialized()Z

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
    .locals 1

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic r()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method
