.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;
    }
.end annotation


# static fields
.field public static final b:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;


# instance fields
.field private e:I

.field private volatile f:Ljava/lang/Object;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/uqm/crashsight/protobuf/LazyStringList;

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->k:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12

    if-eq v4, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_2

    new-instance v5, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x10

    :cond_2
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/uqm/crashsight/protobuf/LazyStringList;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v4

    :cond_6
    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    :cond_7
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    goto :goto_0

    :cond_8
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_9
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->b:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f:Ljava/lang/Object;
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
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    :cond_e
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->P()V

    throw p1

    :cond_f
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    :cond_10
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    :cond_12
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->P()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->k:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p0
.end method

.method public static j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method private static k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 3

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    if-ne v0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v2, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p1
.end method

.method protected final synthetic a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method protected final a()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>()V

    return-object v0
.end method

.method public final b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected final c()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->r()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eq v2, v4, :cond_4

    return v3

    :cond_4
    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    iget v4, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-eq v2, v4, :cond_a

    return v3

    :cond_a
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-nez v1, :cond_c

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    :cond_c
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-nez v2, :cond_d

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v2

    :cond_d
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    :cond_e
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    :cond_10
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v3

    :cond_11
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-nez v4, :cond_4

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v4

    :cond_4
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->b(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_7

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    :cond_7
    check-cast v4, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Lcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v4

    :goto_5
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a:I

    return v0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->q()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    :cond_5
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method public final i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->k:B

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
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->k:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->k:B

    return v2

    :cond_6
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->k:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic p()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic q()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->h:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v2

    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->b(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    check-cast v2, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
