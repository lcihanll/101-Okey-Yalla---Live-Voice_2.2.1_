.class public final enum Lcom/uqm/crashsight/protobuf/ProtoSyntax;
.super Ljava/lang/Enum;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uqm/crashsight/protobuf/ProtoSyntax;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

.field public static final enum b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

.field private static final synthetic c:[Lcom/uqm/crashsight/protobuf/ProtoSyntax;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    new-instance v1, Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    const-string v3, "PROTO3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/uqm/crashsight/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->c:[Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ProtoSyntax;
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public static values()[Lcom/uqm/crashsight/protobuf/ProtoSyntax;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->c:[Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    invoke-virtual {v0}, [Lcom/uqm/crashsight/protobuf/ProtoSyntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    return-object v0
.end method
