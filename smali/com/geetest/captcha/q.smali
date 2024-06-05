.class public abstract Lcom/geetest/captcha/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/captcha/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/q$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0014H\u0016J\u0018\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/geetest/captcha/handlers/base/HandlerImpl;",
        "Lcom/geetest/captcha/handlers/base/Handler;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "next",
        "getNext",
        "()Lcom/geetest/captcha/handlers/base/HandlerImpl;",
        "setNext",
        "(Lcom/geetest/captcha/handlers/base/HandlerImpl;)V",
        "handlerRequest",
        "",
        "request",
        "Lcom/geetest/captcha/handlers/Request;",
        "onFailure",
        "error",
        "",
        "onSuccess",
        "status",
        "",
        "result",
        "onWebFailure",
        "Companion",
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
.field public static final c:Lcom/geetest/captcha/q$a;


# instance fields
.field public b:Lcom/geetest/captcha/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/geetest/captcha/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/captcha/q$a;-><init>(B)V

    sput-object v0, Lcom/geetest/captcha/q;->c:Lcom/geetest/captcha/q$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/geetest/captcha/n;Ljava/lang/String;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/geetest/captcha/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandlerImpl.onFailure: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geetest/captcha/n;->b:Lcom/geetest/captcha/u;

    sget-object v1, Lcom/geetest/captcha/u;->FAIL:Lcom/geetest/captcha/u;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/geetest/captcha/n;->c()V

    invoke-virtual {p0, p1}, Lcom/geetest/captcha/n;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/geetest/captcha/n;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/geetest/captcha/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/geetest/captcha/n;->c()V

    :cond_1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/geetest/captcha/n;->h:Landroid/content/Context;

    if-eqz v0, :cond_2

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/geetest/captcha/n$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/geetest/captcha/n$c;-><init>(Lcom/geetest/captcha/n;ZLjava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/geetest/captcha/n;->e:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2}, Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;->onSuccess(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/geetest/captcha/n;)V
    .locals 3

    move-object v0, p0

    :goto_0
    const-string v1, "request"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/geetest/captcha/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/geetest/captcha/q;->a()I

    move-result v1

    iget v2, p1, Lcom/geetest/captcha/n;->c:I

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/geetest/captcha/q;->a(Lcom/geetest/captcha/n;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/geetest/captcha/q;->b:Lcom/geetest/captcha/q;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void
.end method
