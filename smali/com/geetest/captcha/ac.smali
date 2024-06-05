.class public final Lcom/geetest/captcha/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001a\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Lcom/geetest/captcha/utils/ErrorMessage;",
        "",
        "()V",
        "DEVICE_NOT_SUPPORTED",
        "",
        "getDEVICE_NOT_SUPPORTED",
        "()Ljava/lang/String;",
        "setDEVICE_NOT_SUPPORTED",
        "(Ljava/lang/String;)V",
        "PARAMETER_CONFIG_ERROR",
        "getPARAMETER_CONFIG_ERROR",
        "setPARAMETER_CONFIG_ERROR",
        "USER_CANCEL",
        "getUSER_CANCEL",
        "setUSER_CANCEL",
        "WEB_CALLBACK_ERROR",
        "getWEB_CALLBACK_ERROR",
        "setWEB_CALLBACK_ERROR",
        "WEB_VIEW_LOAD_ERROR",
        "getWEB_VIEW_LOAD_ERROR",
        "setWEB_VIEW_LOAD_ERROR",
        "WEB_VIEW_LOAD_TIMEOUT",
        "getWEB_VIEW_LOAD_TIMEOUT",
        "setWEB_VIEW_LOAD_TIMEOUT",
        "WEB_VIEW_SSL_ERROR",
        "getWEB_VIEW_SSL_ERROR",
        "setWEB_VIEW_SSL_ERROR",
        "WEB_VIEW_SSL_EXPIRED",
        "getWEB_VIEW_SSL_EXPIRED",
        "setWEB_VIEW_SSL_EXPIRED",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
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
.field public static final a:Lcom/geetest/captcha/ac;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geetest/captcha/ac;

    invoke-direct {v0}, Lcom/geetest/captcha/ac;-><init>()V

    sput-object v0, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    const-string/jumbo v0, "\u52a0\u8f7d\u9047\u5230\u4e00\u70b9\u9ebb\u70e6"

    sput-object v0, Lcom/geetest/captcha/ac;->b:Ljava/lang/String;

    const-string/jumbo v0, "\u7f51\u7edc\u9519\u8bef"

    sput-object v0, Lcom/geetest/captcha/ac;->c:Ljava/lang/String;

    const-string/jumbo v0, "\u7f51\u7edc\u94fe\u63a5\u8d85\u65f6"

    sput-object v0, Lcom/geetest/captcha/ac;->d:Ljava/lang/String;

    const-string/jumbo v0, "\u8bc1\u4e66\u9519\u8bef"

    sput-object v0, Lcom/geetest/captcha/ac;->e:Ljava/lang/String;

    const-string/jumbo v0, "\u8bc1\u4e66\u8fc7\u671f"

    sput-object v0, Lcom/geetest/captcha/ac;->f:Ljava/lang/String;

    const-string/jumbo v0, "\u53c2\u6570\u4e0d\u5408\u6cd5"

    sput-object v0, Lcom/geetest/captcha/ac;->g:Ljava/lang/String;

    const-string/jumbo v0, "\u9a8c\u8bc1\u4f1a\u8bdd\u5df2\u53d6\u6d88"

    sput-object v0, Lcom/geetest/captcha/ac;->h:Ljava/lang/String;

    const-string/jumbo v0, "\u4e0d\u652f\u6301\u7684 WebView \u7ec4\u4ef6"

    sput-object v0, Lcom/geetest/captcha/ac;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/ae;->a:Lcom/geetest/captcha/ae;

    const-string v1, "gt4_web_callback_error"

    invoke-static {p0, v1}, Lcom/geetest/captcha/ae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.applicationConte\u2026gt4_web_callback_error\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/geetest/captcha/ac;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/ae;->a:Lcom/geetest/captcha/ae;

    const-string v1, "gt4_web_view_load_error"

    invoke-static {p0, v1}, Lcom/geetest/captcha/ae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.applicationConte\u2026t4_web_view_load_error\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/geetest/captcha/ac;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/ae;->a:Lcom/geetest/captcha/ae;

    const-string v1, "gt4_web_view_ssl_error"

    invoke-static {p0, v1}, Lcom/geetest/captcha/ae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.applicationConte\u2026gt4_web_view_ssl_error\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/geetest/captcha/ac;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/ae;->a:Lcom/geetest/captcha/ae;

    const-string v1, "gt4_parameter_config_error"

    invoke-static {p0, v1}, Lcom/geetest/captcha/ae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.applicationConte\u2026parameter_config_error\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/geetest/captcha/ac;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/ae;->a:Lcom/geetest/captcha/ae;

    const-string v1, "gt4_user_cancel"

    invoke-static {p0, v1}, Lcom/geetest/captcha/ae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.applicationConte\u2026text, \"gt4_user_cancel\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/geetest/captcha/ac;->h:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/ae;->a:Lcom/geetest/captcha/ae;

    const-string v1, "gt4_device_not_supported"

    invoke-static {p0, v1}, Lcom/geetest/captcha/ae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "context.applicationConte\u20264_device_not_supported\"))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/geetest/captcha/ac;->i:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/ac;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/ac;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/ac;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/geetest/captcha/ac;->i:Ljava/lang/String;

    return-object v0
.end method
