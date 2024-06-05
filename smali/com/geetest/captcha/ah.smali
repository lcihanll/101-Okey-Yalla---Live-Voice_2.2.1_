.class public final Lcom/geetest/captcha/ah;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/geetest/captcha/utils/ZxIdUtils;",
        "",
        "()V",
        "TAG",
        "",
        "get",
        "",
        "context",
        "Landroid/content/Context;",
        "getZxID",
        "isZxIDAvailable",
        "",
        "start",
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
.field public static final a:Lcom/geetest/captcha/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geetest/captcha/ah;

    invoke-direct {v0}, Lcom/geetest/captcha/ah;-><init>()V

    sput-object v0, Lcom/geetest/captcha/ah;->a:Lcom/geetest/captcha/ah;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "unknown"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/geetest/captcha/ah;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gt_zid_sp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "gt_zid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gt_zid_et"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v2, :cond_1

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    cmp-long v1, v6, v4

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v6, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v6, v3

    if-gez v1, :cond_0

    invoke-static {p0}, Lcom/geetest/captcha/ah;->c(Landroid/content/Context;)V

    :cond_0
    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/geetest/captcha/ah;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static a()Z
    .locals 1

    :try_start_0
    const-string v0, "com.zx.sdk.api.ZXManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final synthetic b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/geetest/captcha/ah$a;

    invoke-direct {v0, p0}, Lcom/geetest/captcha/ah$a;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/zx/sdk/api/ZXIDListener;

    invoke-static {v0}, Lcom/zx/sdk/api/ZXManager;->getZXID(Lcom/zx/sdk/api/ZXIDListener;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/zx/sdk/api/ZXManager;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zx/sdk/api/ZXManager;->setDebug(Z)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/zx/sdk/api/ZXManager;->setEnable(Z)V

    invoke-static {v0}, Lcom/zx/sdk/api/ZXManager;->allowPermissionDialog(Z)V

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/geetest/captcha/ah$b;

    invoke-direct {v1, p0}, Lcom/geetest/captcha/ah$b;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/zx/sdk/api/PermissionCallback;

    invoke-static {v0, v1}, Lcom/zx/sdk/api/ZXManager;->checkPermission(Landroid/app/Activity;Lcom/zx/sdk/api/PermissionCallback;)V

    return-void
.end method
