.class final enum Lcom/appsflyer/internal/f$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum $$a:Lcom/appsflyer/internal/f$a;

.field public static final enum $$b:Lcom/appsflyer/internal/f$a;

.field public static final enum AFDateFormat:Lcom/appsflyer/internal/f$a;

.field private static final synthetic values:[Lcom/appsflyer/internal/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appsflyer/internal/f$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/f$a;->$$a:Lcom/appsflyer/internal/f$a;

    new-instance v1, Lcom/appsflyer/internal/f$a;

    const-string v3, "FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/internal/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/f$a;->AFDateFormat:Lcom/appsflyer/internal/f$a;

    new-instance v3, Lcom/appsflyer/internal/f$a;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/internal/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/internal/f$a;->$$b:Lcom/appsflyer/internal/f$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/internal/f$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/appsflyer/internal/f$a;->values:[Lcom/appsflyer/internal/f$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/f$a;
    .locals 1

    const-class v0, Lcom/appsflyer/internal/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/f$a;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/f$a;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/f$a;->values:[Lcom/appsflyer/internal/f$a;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/f$a;

    return-object v0
.end method
