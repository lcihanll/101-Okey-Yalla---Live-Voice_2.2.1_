.class public final enum Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;
.super Ljava/lang/Enum;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

.field private static enum b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

.field private static enum c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

.field private static final synthetic e:[Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    const-string v1, "JS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    new-instance v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    const-string v3, "JS_STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    new-instance v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    const-string v3, "JS_NUMBER"

    const/4 v5, 0x2

    invoke-direct {v1, v3, v5, v5}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    aput-object v0, v3, v2

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    sput-object v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->e:[Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType$1;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->values()[Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->d:I

    return-void
.end method

.method public static a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->b(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->c:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object p0
.end method

.method public static values()[Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->e:[Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    invoke-virtual {v0}, [Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->d:I

    return v0
.end method