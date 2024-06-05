.class public final enum Lcom/geetest/captcha/ab$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/captcha/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/captcha/ab$a;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/geetest/captcha/utils/ErrorCode$COMPONENT;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "WEB_VIEW_NEW",
        "PARAM",
        "WEB_VIEW_HTTP",
        "WEB_VIEW_SSL",
        "USER_ERROR",
        "WEB_CALLBACK_ERROR",
        "NET",
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
.field public static final enum NET:Lcom/geetest/captcha/ab$a;

.field public static final enum PARAM:Lcom/geetest/captcha/ab$a;

.field public static final enum USER_ERROR:Lcom/geetest/captcha/ab$a;

.field public static final enum WEB_CALLBACK_ERROR:Lcom/geetest/captcha/ab$a;

.field public static final enum WEB_VIEW_HTTP:Lcom/geetest/captcha/ab$a;

.field public static final enum WEB_VIEW_NEW:Lcom/geetest/captcha/ab$a;

.field public static final enum WEB_VIEW_SSL:Lcom/geetest/captcha/ab$a;

.field private static final synthetic a:[Lcom/geetest/captcha/ab$a;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/geetest/captcha/ab$a;

    new-instance v1, Lcom/geetest/captcha/ab$a;

    const-string v2, "WEB_VIEW_NEW"

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/ab$a;->WEB_VIEW_NEW:Lcom/geetest/captcha/ab$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/ab$a;

    const-string v2, "PARAM"

    const/4 v3, 0x1

    const-string v4, "1"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/ab$a;->PARAM:Lcom/geetest/captcha/ab$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/ab$a;

    const-string v2, "WEB_VIEW_HTTP"

    const/4 v3, 0x2

    const-string v4, "2"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/ab$a;->WEB_VIEW_HTTP:Lcom/geetest/captcha/ab$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/ab$a;

    const-string v2, "WEB_VIEW_SSL"

    const/4 v3, 0x3

    const-string v4, "3"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/ab$a;->WEB_VIEW_SSL:Lcom/geetest/captcha/ab$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/ab$a;

    const-string v2, "USER_ERROR"

    const/4 v3, 0x4

    const-string v4, "4"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/ab$a;->USER_ERROR:Lcom/geetest/captcha/ab$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/ab$a;

    const-string v2, "WEB_CALLBACK_ERROR"

    const/4 v3, 0x5

    const-string v4, "5"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/ab$a;->WEB_CALLBACK_ERROR:Lcom/geetest/captcha/ab$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/ab$a;

    const-string v2, "NET"

    const/4 v3, 0x6

    const-string v4, "6"

    invoke-direct {v1, v2, v3, v4}, Lcom/geetest/captcha/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/geetest/captcha/ab$a;->NET:Lcom/geetest/captcha/ab$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/geetest/captcha/ab$a;->a:[Lcom/geetest/captcha/ab$a;

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

    iput-object p3, p0, Lcom/geetest/captcha/ab$a;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/captcha/ab$a;
    .locals 1

    const-class v0, Lcom/geetest/captcha/ab$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/captcha/ab$a;

    return-object p0
.end method

.method public static values()[Lcom/geetest/captcha/ab$a;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/ab$a;->a:[Lcom/geetest/captcha/ab$a;

    invoke-virtual {v0}, [Lcom/geetest/captcha/ab$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/captcha/ab$a;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/ab$a;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/geetest/captcha/ab$a;->type:Ljava/lang/String;

    return-void
.end method
