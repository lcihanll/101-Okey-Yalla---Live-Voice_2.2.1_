.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final b:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;


# instance fields
.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m:B

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9

    const/16 v6, 0x10

    if-eq v4, v6, :cond_8

    const/16 v7, 0x18

    if-eq v4, v7, :cond_7

    const/16 v6, 0x28

    if-eq v4, v6, :cond_6

    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1f3a

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    :cond_2
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v4

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Z

    goto :goto_0

    :cond_7
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:Z

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v4

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v5

    if-nez v5, :cond_a

    invoke-virtual {v0, v2, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    :cond_a
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    :cond_c
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->P()V

    throw p1

    :cond_d
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    :cond_e
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->P()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I

    return p1
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 3

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    if-ne v0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v2, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Z

    return p1
.end method

.method public static u()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method private static v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 3

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    if-ne v0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v2, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method protected final a()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    return-object v0
.end method

.method public final b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected final c()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->F()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eq v2, v5, :cond_4

    return v3

    :cond_4
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I

    if-eq v2, v5, :cond_6

    return v3

    :cond_6
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    if-eq v2, v5, :cond_9

    return v3

    :cond_9
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    if-eq v2, v5, :cond_b

    return v3

    :cond_b
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    if-eq v2, v5, :cond_e

    return v3

    :cond_e
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_10

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    iget v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    if-eq v2, v5, :cond_10

    return v3

    :cond_10
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    :goto_9
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    :goto_a
    if-eq v2, v5, :cond_13

    return v3

    :cond_13
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_b

    :cond_14
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Z

    if-eq v2, v5, :cond_15

    return v3

    :cond_15
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    :goto_c
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    goto :goto_d

    :cond_17
    const/4 v5, 0x0

    :goto_d
    if-eq v2, v5, :cond_18

    return v3

    :cond_18
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_e

    :cond_19
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_1a

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:Z

    iget-boolean v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:Z

    if-eq v2, v5, :cond_1a

    return v3

    :cond_1a
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_f

    :cond_1b
    const/4 v2, 0x0

    :goto_f
    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_10

    :cond_1c
    const/4 v4, 0x0

    :goto_10
    if-eq v2, v4, :cond_1d

    return v3

    :cond_1d
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Z

    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Z

    if-eq v1, v2, :cond_1f

    return v3

    :cond_1f
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    :cond_20
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    :cond_21
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->T()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->T()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v3

    :cond_22
    return v0
.end method

.method public final f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;

    :cond_0
    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->m(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:Z

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Z

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->m(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Z

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    const/16 v1, 0x3e7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->S()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a:I

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->E()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x35

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I

    add-int/2addr v0, v2

    :cond_2
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    add-int/2addr v0, v2

    :cond_6
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    const/4 v3, 0x1

    :cond_b
    if-eqz v3, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Z

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->T()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->R()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m:B

    return v1
.end method

.method public final j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    :cond_0
    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:Z

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic p()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic q()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Z

    return v0
.end method

.method public final t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;ZB)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:I

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)V

    :cond_0
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_1
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:Z

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_2
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Z

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_3
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:I

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)V

    :cond_4
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Z

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/16 v2, 0x3e7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
