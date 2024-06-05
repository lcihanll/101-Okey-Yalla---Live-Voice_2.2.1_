.class public final Lcom/geetest/captcha/ah$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zx/sdk/api/PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/captcha/ah;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/geetest/captcha/utils/ZxIdUtils$start$1",
        "Lcom/zx/sdk/api/PermissionCallback;",
        "onAuthorized",
        "",
        "onUnauthorized",
        "captcha_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/ah$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthorized()V
    .locals 2

    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    const-string v0, "ZxIdUtils"

    const-string v1, "ZxID checkPermission: onAuthorized"

    invoke-static {v0, v1}, Lcom/geetest/captcha/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/geetest/captcha/ah;->a:Lcom/geetest/captcha/ah;

    iget-object v0, p0, Lcom/geetest/captcha/ah$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/geetest/captcha/ah;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final onUnauthorized()V
    .locals 2

    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    const-string v0, "ZxIdUtils"

    const-string v1, "ZxID checkPermission: onUnauthorized"

    invoke-static {v0, v1}, Lcom/geetest/captcha/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
