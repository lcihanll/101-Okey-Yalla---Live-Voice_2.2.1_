.class final Lcom/geetest/captcha/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/captcha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/captcha/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J \u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0016J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u000cH\u0016J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/geetest/captcha/handlers/WebViewHandler$HandlerObserver;",
        "Lcom/geetest/captcha/observer/WebViewObserver;",
        "request",
        "Lcom/geetest/captcha/handlers/Request;",
        "handler",
        "Lcom/geetest/captcha/handlers/base/HandlerImpl;",
        "(Lcom/geetest/captcha/handlers/Request;Lcom/geetest/captcha/handlers/base/HandlerImpl;)V",
        "onCallReady",
        "",
        "onClose",
        "onError",
        "errorCode",
        "",
        "errorMsg",
        "errorDesc",
        "Lorg/json/JSONObject;",
        "onResult",
        "status",
        "",
        "result",
        "onWebError",
        "error",
        "onWebFailure",
        "fail",
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
.field final a:Lcom/geetest/captcha/n;

.field private final b:Lcom/geetest/captcha/q;


# direct methods
.method public constructor <init>(Lcom/geetest/captcha/n;Lcom/geetest/captcha/q;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    iput-object p2, p0, Lcom/geetest/captcha/o$b;->b:Lcom/geetest/captcha/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-virtual {v0}, Lcom/geetest/captcha/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    const-string v0, "WebViewHandler"

    const-string v1, "WebViewHandler.HandlerObserver.onCallReady"

    invoke-static {v0, v1}, Lcom/geetest/captcha/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    sget-object v1, Lcom/geetest/captcha/u;->SUCCESS:Lcom/geetest/captcha/u;

    invoke-virtual {v0, v1}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-virtual {v0}, Lcom/geetest/captcha/n;->b()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    iget-object v0, v0, Lcom/geetest/captcha/n;->h:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/geetest/captcha/o$b$a;

    invoke-direct {v1, p0}, Lcom/geetest/captcha/o$b$a;-><init>(Lcom/geetest/captcha/o$b;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-virtual {v0}, Lcom/geetest/captcha/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewHandler.HandlerObserver.onWebError: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewHandler"

    invoke-static {v1, v0}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    sget-object v1, Lcom/geetest/captcha/u;->FAIL:Lcom/geetest/captcha/u;

    invoke-virtual {v0, v1}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-static {v0, p1}, Lcom/geetest/captcha/q;->a(Lcom/geetest/captcha/n;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorDesc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-virtual {v0}, Lcom/geetest/captcha/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    sget-object v1, Lcom/geetest/captcha/u;->FAIL:Lcom/geetest/captcha/u;

    invoke-virtual {v0, v1}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    sget-object v0, Lcom/geetest/captcha/ab;->a:Lcom/geetest/captcha/ab;

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    iget-object v0, v0, Lcom/geetest/captcha/n;->b:Lcom/geetest/captcha/u;

    invoke-virtual {v0}, Lcom/geetest/captcha/u;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/geetest/captcha/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    invoke-static {p1, p2, p3}, Lcom/geetest/captcha/t$a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/captcha/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/captcha/t;->a()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "WebViewHandler.HandlerObserver.onError: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "WebViewHandler"

    invoke-static {p3, p2}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-static {p2, p1}, Lcom/geetest/captcha/q;->a(Lcom/geetest/captcha/n;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-virtual {v0}, Lcom/geetest/captcha/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandlerObserver.onResult: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewHandler"

    invoke-static {v1, v0}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    sget-object v0, Lcom/geetest/captcha/u;->END:Lcom/geetest/captcha/u;

    invoke-virtual {p1, v0}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    iget-object p1, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/geetest/captcha/q;->a(Lcom/geetest/captcha/n;ZLjava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    sget-object v0, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    invoke-virtual {p1, v0}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    iget-object p1, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/geetest/captcha/q;->a(Lcom/geetest/captcha/n;ZLjava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-virtual {v0}, Lcom/geetest/captcha/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    const-string v0, "WebViewHandler"

    const-string v1, "WebViewHandler.HandlerObserver.onClose"

    invoke-static {v0, v1}, Lcom/geetest/captcha/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    sget-object v1, Lcom/geetest/captcha/u;->FAIL:Lcom/geetest/captcha/u;

    invoke-virtual {v0, v1}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    sget-object v0, Lcom/geetest/captcha/ab;->a:Lcom/geetest/captcha/ab;

    sget-object v0, Lcom/geetest/captcha/u;->CANCEL:Lcom/geetest/captcha/u;

    invoke-virtual {v0}, Lcom/geetest/captcha/u;->getType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geetest/captcha/ab$a;->USER_ERROR:Lcom/geetest/captcha/ab$a;

    invoke-virtual {v2}, Lcom/geetest/captcha/ab$a;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "60"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/captcha/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    sget-object v1, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {}, Lcom/geetest/captcha/ac;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "description"

    const-string v4, "User cancelled \'Captcha\'"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, v1, v2}, Lcom/geetest/captcha/t$a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/captcha/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/captcha/t;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewHandler: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-virtual {v1}, Lcom/geetest/captcha/n;->c()V

    iget-object v1, p0, Lcom/geetest/captcha/o$b;->a:Lcom/geetest/captcha/n;

    invoke-virtual {v1, v0}, Lcom/geetest/captcha/n;->a(Ljava/lang/String;)V

    return-void
.end method
