.class final enum Lcom/uqm/crashsight/protobuf/FieldType$Collection;
.super Ljava/lang/Enum;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Collection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uqm/crashsight/protobuf/FieldType$Collection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uqm/crashsight/protobuf/FieldType$Collection;

.field public static final enum b:Lcom/uqm/crashsight/protobuf/FieldType$Collection;

.field public static final enum c:Lcom/uqm/crashsight/protobuf/FieldType$Collection;

.field public static final enum d:Lcom/uqm/crashsight/protobuf/FieldType$Collection;

.field private static final synthetic f:[Lcom/uqm/crashsight/protobuf/FieldType$Collection;


# instance fields
.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/uqm/crashsight/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/FieldType$Collection;->a:Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    new-instance v1, Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/uqm/crashsight/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/uqm/crashsight/protobuf/FieldType$Collection;->b:Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    new-instance v3, Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/uqm/crashsight/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/uqm/crashsight/protobuf/FieldType$Collection;->c:Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    new-instance v5, Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/uqm/crashsight/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/uqm/crashsight/protobuf/FieldType$Collection;->d:Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/uqm/crashsight/protobuf/FieldType$Collection;->f:[Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/uqm/crashsight/protobuf/FieldType$Collection;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/FieldType$Collection;
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    return-object p0
.end method

.method public static values()[Lcom/uqm/crashsight/protobuf/FieldType$Collection;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldType$Collection;->f:[Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    invoke-virtual {v0}, [Lcom/uqm/crashsight/protobuf/FieldType$Collection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uqm/crashsight/protobuf/FieldType$Collection;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldType$Collection;->e:Z

    return v0
.end method
