.class public final enum Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;
.super Ljava/lang/Enum;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SingularOverwritePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field private static enum b:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field private static final synthetic c:[Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const-string v1, "ALLOW_SINGULAR_OVERWRITES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;->a:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    new-instance v1, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const-string v3, "FORBID_SINGULAR_OVERWRITES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;->b:Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;->c:[Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object p0
.end method

.method public static values()[Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;->c:[Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    invoke-virtual {v0}, [Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uqm/crashsight/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object v0
.end method