.class public final enum Lcom/geetest/captcha/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/captcha/y;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/geetest/captcha/utils/DisplayAreaEnum;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "setValue",
        "(Ljava/lang/String;)V",
        "CENTER",
        "BOTTOM",
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
.field public static final enum BOTTOM:Lcom/geetest/captcha/y;

.field public static final enum CENTER:Lcom/geetest/captcha/y;

.field private static final synthetic a:[Lcom/geetest/captcha/y;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/geetest/captcha/y;

    new-instance v1, Lcom/geetest/captcha/y;

    const-string v2, "CENTER"

    const/4 v3, 0x0

    const-string v4, "center"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/y;->CENTER:Lcom/geetest/captcha/y;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/y;

    const-string v2, "BOTTOM"

    const/4 v3, 0x1

    const-string v4, "bottom"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/y;->BOTTOM:Lcom/geetest/captcha/y;

    aput-object v1, v0, v3

    sput-object v0, Lcom/geetest/captcha/y;->a:[Lcom/geetest/captcha/y;

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

    iput-object p3, p0, Lcom/geetest/captcha/y;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/captcha/y;
    .locals 1

    const-class v0, Lcom/geetest/captcha/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/captcha/y;

    return-object p0
.end method

.method public static values()[Lcom/geetest/captcha/y;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/y;->a:[Lcom/geetest/captcha/y;

    invoke-virtual {v0}, [Lcom/geetest/captcha/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/captcha/y;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/y;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/geetest/captcha/y;->value:Ljava/lang/String;

    return-void
.end method
