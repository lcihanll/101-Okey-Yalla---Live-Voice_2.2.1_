.class public final enum Lcom/geetest/captcha/u$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/captcha/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/captcha/u$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/geetest/captcha/model/StatusEnum$PreLoadStatusEnum;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "FLOWING",
        "SUCCESS",
        "FAIL",
        "NONE",
        "captcha_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final enum FAIL:Lcom/geetest/captcha/u$a;

.field public static final enum FLOWING:Lcom/geetest/captcha/u$a;

.field public static final enum NONE:Lcom/geetest/captcha/u$a;

.field public static final enum SUCCESS:Lcom/geetest/captcha/u$a;

.field private static final synthetic a:[Lcom/geetest/captcha/u$a;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/geetest/captcha/u$a;

    new-instance v1, Lcom/geetest/captcha/u$a;

    const-string v2, "FLOWING"

    const/4 v3, 0x0

    const-string v4, "-16"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u$a;->FLOWING:Lcom/geetest/captcha/u$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/u$a;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    const-string v4, "-17"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u$a;->SUCCESS:Lcom/geetest/captcha/u$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/u$a;

    const-string v2, "FAIL"

    const/4 v3, 0x2

    const-string v4, "-18"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u$a;->FAIL:Lcom/geetest/captcha/u$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/u$a;

    const-string v2, "NONE"

    const/4 v3, 0x3

    const-string v4, "-19"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u$a;->NONE:Lcom/geetest/captcha/u$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/geetest/captcha/u$a;->a:[Lcom/geetest/captcha/u$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/geetest/captcha/u$a;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/captcha/u$a;
    .locals 1

    const-class v0, Lcom/geetest/captcha/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/captcha/u$a;

    return-object p0
.end method

.method public static values()[Lcom/geetest/captcha/u$a;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/u$a;->a:[Lcom/geetest/captcha/u$a;

    invoke-virtual {v0}, [Lcom/geetest/captcha/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/captcha/u$a;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/u$a;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/geetest/captcha/u$a;->type:Ljava/lang/String;

    return-void
.end method
