.class Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtensionAdapter"
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/FieldSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/ExtensionRegistry;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->b(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;->b:Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->q()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz p3, :cond_0

    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->c(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    :cond_0
    invoke-interface {p4, p1, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->a(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->g()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->q()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz v0, :cond_0

    invoke-interface {p4, v0}, Lcom/uqm/crashsight/protobuf/Message$Builder;->c(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    :cond_0
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->g()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;
    .locals 0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;->b:Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    return-object p1

    :cond_0
    sget-object p1, Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;->a:Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->q()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz p3, :cond_0

    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->c(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    :cond_0
    invoke-virtual {p1, p4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->g()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method
