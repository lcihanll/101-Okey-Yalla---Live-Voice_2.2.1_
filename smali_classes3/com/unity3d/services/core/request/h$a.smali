.class public final enum Lcom/unity3d/services/core/request/h$a;
.super Ljava/lang/Enum;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/request/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/request/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/request/h$a;

.field public static final enum b:Lcom/unity3d/services/core/request/h$a;

.field public static final enum c:Lcom/unity3d/services/core/request/h$a;

.field private static final synthetic d:[Lcom/unity3d/services/core/request/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/unity3d/services/core/request/h$a;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/request/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/request/h$a;->a:Lcom/unity3d/services/core/request/h$a;

    new-instance v1, Lcom/unity3d/services/core/request/h$a;

    const-string v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/request/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/request/h$a;->b:Lcom/unity3d/services/core/request/h$a;

    new-instance v3, Lcom/unity3d/services/core/request/h$a;

    const-string v5, "HEAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/request/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/request/h$a;->c:Lcom/unity3d/services/core/request/h$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/unity3d/services/core/request/h$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unity3d/services/core/request/h$a;->d:[Lcom/unity3d/services/core/request/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/request/h$a;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/request/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/request/h$a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/request/h$a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/request/h$a;->d:[Lcom/unity3d/services/core/request/h$a;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/request/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/request/h$a;

    return-object v0
.end method
