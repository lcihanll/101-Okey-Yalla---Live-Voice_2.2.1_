.class public final enum Lcom/geetest/captcha/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/captcha/u;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/geetest/captcha/model/StatusEnum;",
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
        "END",
        "FAIL",
        "CANCEL",
        "NONE",
        "PreLoadStatusEnum",
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
.field public static final enum CANCEL:Lcom/geetest/captcha/u;

.field public static final enum END:Lcom/geetest/captcha/u;

.field public static final enum FAIL:Lcom/geetest/captcha/u;

.field public static final enum FLOWING:Lcom/geetest/captcha/u;

.field public static final enum NONE:Lcom/geetest/captcha/u;

.field public static final enum SUCCESS:Lcom/geetest/captcha/u;

.field private static final synthetic a:[Lcom/geetest/captcha/u;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/geetest/captcha/u;

    new-instance v1, Lcom/geetest/captcha/u;

    const-string v2, "FLOWING"

    const/4 v3, 0x0

    const-string v4, "-10"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/u;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    const-string v4, "-11"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u;->SUCCESS:Lcom/geetest/captcha/u;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/u;

    const-string v2, "END"

    const/4 v3, 0x2

    const-string v4, "-12"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u;->END:Lcom/geetest/captcha/u;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/u;

    const-string v2, "FAIL"

    const/4 v3, 0x3

    const-string v4, "-13"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u;->FAIL:Lcom/geetest/captcha/u;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/u;

    const-string v2, "CANCEL"

    const/4 v3, 0x4

    const-string v4, "-14"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u;->CANCEL:Lcom/geetest/captcha/u;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/u;

    const-string v2, "NONE"

    const/4 v3, 0x5

    const-string v4, "-15"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/u;->NONE:Lcom/geetest/captcha/u;

    aput-object v1, v0, v3

    sput-object v0, Lcom/geetest/captcha/u;->a:[Lcom/geetest/captcha/u;

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

    iput-object p3, p0, Lcom/geetest/captcha/u;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/captcha/u;
    .locals 1

    const-class v0, Lcom/geetest/captcha/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/captcha/u;

    return-object p0
.end method

.method public static values()[Lcom/geetest/captcha/u;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/u;->a:[Lcom/geetest/captcha/u;

    invoke-virtual {v0}, [Lcom/geetest/captcha/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/captcha/u;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/u;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/geetest/captcha/u;->type:Ljava/lang/String;

    return-void
.end method
