.class public final enum Lcom/geetest/captcha/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/captcha/z;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/geetest/captcha/utils/DisplayModeEnum;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "setValue",
        "(I)V",
        "AUTO",
        "NORMAL",
        "DARK",
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
.field public static final enum AUTO:Lcom/geetest/captcha/z;

.field public static final enum DARK:Lcom/geetest/captcha/z;

.field public static final enum NORMAL:Lcom/geetest/captcha/z;

.field private static final synthetic a:[Lcom/geetest/captcha/z;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/geetest/captcha/z;

    new-instance v1, Lcom/geetest/captcha/z;

    const-string v2, "AUTO"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/geetest/captcha/z;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/geetest/captcha/z;->AUTO:Lcom/geetest/captcha/z;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/z;

    const-string v2, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/geetest/captcha/z;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/geetest/captcha/z;->NORMAL:Lcom/geetest/captcha/z;

    aput-object v1, v0, v3

    new-instance v1, Lcom/geetest/captcha/z;

    const-string v2, "DARK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/geetest/captcha/z;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/geetest/captcha/z;->DARK:Lcom/geetest/captcha/z;

    aput-object v1, v0, v3

    sput-object v0, Lcom/geetest/captcha/z;->a:[Lcom/geetest/captcha/z;

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

    iput p3, p0, Lcom/geetest/captcha/z;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/captcha/z;
    .locals 1

    const-class v0, Lcom/geetest/captcha/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/captcha/z;

    return-object p0
.end method

.method public static values()[Lcom/geetest/captcha/z;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/z;->a:[Lcom/geetest/captcha/z;

    invoke-virtual {v0}, [Lcom/geetest/captcha/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/captcha/z;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/geetest/captcha/z;->value:I

    return v0
.end method

.method public final setValue(I)V
    .locals 0

    iput p1, p0, Lcom/geetest/captcha/z;->value:I

    return-void
.end method
