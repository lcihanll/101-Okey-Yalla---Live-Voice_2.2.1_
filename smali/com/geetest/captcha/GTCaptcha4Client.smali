.class public final Lcom/geetest/captcha/GTCaptcha4Client;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/captcha/NoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;,
        Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;,
        Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;,
        Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/geetest/captcha/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/geetest/captcha/a;

    invoke-direct {v0, p1}, Lcom/geetest/captcha/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    return-void
.end method

.method public static getClient(Landroid/content/Context;)Lcom/geetest/captcha/GTCaptcha4Client;
    .locals 1

    new-instance v0, Lcom/geetest/captcha/GTCaptcha4Client;

    invoke-direct {v0, p0}, Lcom/geetest/captcha/GTCaptcha4Client;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.8.1"

    return-object v0
.end method

.method public static isSupportWebView(Landroid/content/Context;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/geetest/captcha/a;->f:Lcom/geetest/captcha/a$a;

    invoke-static {p0}, Lcom/geetest/captcha/a$a;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addOnFailureListener(Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;)Lcom/geetest/captcha/GTCaptcha4Client;
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    const-string v1, "listener"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/geetest/captcha/a;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    return-object p0
.end method

.method public final addOnSuccessListener(Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;)Lcom/geetest/captcha/GTCaptcha4Client;
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/geetest/captcha/a;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    return-object p0
.end method

.method public final addOnWebViewShowListener(Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;)Lcom/geetest/captcha/GTCaptcha4Client;
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    const-string/jumbo v1, "webViewShowListener"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/geetest/captcha/a;->d:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

    return-object p0
.end method

.method public final cancel()V
    .locals 7

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/geetest/captcha/a;->e:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    const-string v0, "The interval between the two cancel is at least 1 second."

    invoke-static {v0}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    const-string v2, "request"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/geetest/captcha/n;->a()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v3, Lcom/geetest/captcha/u;->FAIL:Lcom/geetest/captcha/u;

    invoke-virtual {v1, v3}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    sget-object v1, Lcom/geetest/captcha/ab;->a:Lcom/geetest/captcha/ab;

    sget-object v1, Lcom/geetest/captcha/u;->CANCEL:Lcom/geetest/captcha/u;

    invoke-virtual {v1}, Lcom/geetest/captcha/u;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/geetest/captcha/ab$a;->USER_ERROR:Lcom/geetest/captcha/ab$a;

    invoke-virtual {v4}, Lcom/geetest/captcha/ab$a;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "60"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/geetest/captcha/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    sget-object v3, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {}, Lcom/geetest/captcha/ac;->d()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "description"

    const-string v6, "User cancelled \'Captcha\'"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1, v3, v4}, Lcom/geetest/captcha/t$a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/captcha/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/captcha/t;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Controller: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lcom/geetest/captcha/n;->c()V

    iget-object v0, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v1}, Lcom/geetest/captcha/n;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final configurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    const-string v1, "newConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez p1, :cond_0

    const-string v0, "request"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/geetest/captcha/n;->d:Lcom/geetest/captcha/c;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/geetest/captcha/c;->a:Lcom/geetest/captcha/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/geetest/captcha/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final destroy()V
    .locals 0

    invoke-static {}, Lcom/geetest/captcha/a;->a()V

    return-void
.end method

.method public final init(Ljava/lang/String;)Lcom/geetest/captcha/GTCaptcha4Client;
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/geetest/captcha/a;->a(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)V

    return-object p0
.end method

.method public final init(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)Lcom/geetest/captcha/GTCaptcha4Client;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    invoke-virtual {v0, p1, p2}, Lcom/geetest/captcha/a;->a(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)V

    return-object p0
.end method

.method public final setLogEnable(Z)V
    .locals 0

    invoke-static {p1}, Lcom/geetest/captcha/a;->a(Z)V

    return-void
.end method

.method public final verifyWithCaptcha()Lcom/geetest/captcha/GTCaptcha4Client;
    .locals 8

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Client;->a:Lcom/geetest/captcha/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/geetest/captcha/a;->e:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    const-string v0, "The interval between the two captcha is at least 1 second."

    invoke-static {v0}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/geetest/captcha/a;->e:J

    iget-object v1, v0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    iget-object v2, v0, Lcom/geetest/captcha/a;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    iput-object v2, v1, Lcom/geetest/captcha/b;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    iget-object v1, v0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    iget-object v2, v0, Lcom/geetest/captcha/a;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    iput-object v2, v1, Lcom/geetest/captcha/b;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    iget-object v1, v0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    iget-object v2, v0, Lcom/geetest/captcha/a;->d:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

    iput-object v2, v1, Lcom/geetest/captcha/b;->d:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

    iget-object v0, v0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    iget-object v1, v0, Lcom/geetest/captcha/b;->h:Landroid/content/Context;

    iget-object v2, v0, Lcom/geetest/captcha/b;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/geetest/captcha/b;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    const-string v3, "appId"

    const/4 v4, 0x0

    const-string v5, "description"

    if-nez v2, :cond_1

    sget-object v1, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    invoke-virtual {v2}, Lcom/geetest/captcha/u;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/geetest/captcha/ab$a;->PARAM:Lcom/geetest/captcha/ab$a;

    invoke-virtual {v2}, Lcom/geetest/captcha/ab$a;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "70"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {}, Lcom/geetest/captcha/ac;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "The GTC4SessionResponse object cannot be null"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1, v2, v6}, Lcom/geetest/captcha/t$a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/captcha/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/captcha/t;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {v1}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/geetest/captcha/b;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    if-eqz v2, :cond_6

    invoke-interface {v2, v1}, Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;->onFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v1, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    invoke-virtual {v2}, Lcom/geetest/captcha/u;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/geetest/captcha/ab$a;->PARAM:Lcom/geetest/captcha/ab$a;

    invoke-virtual {v2}, Lcom/geetest/captcha/ab$a;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "71"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {}, Lcom/geetest/captcha/ac;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "The context parameter should not be null"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1, v2, v6}, Lcom/geetest/captcha/t$a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/captcha/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/captcha/t;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {v1}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/geetest/captcha/b;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    if-eqz v2, :cond_6

    invoke-interface {v2, v1}, Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;->onFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_3

    sget-object v1, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    invoke-virtual {v2}, Lcom/geetest/captcha/u;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/geetest/captcha/ab$a;->PARAM:Lcom/geetest/captcha/ab$a;

    invoke-virtual {v2}, Lcom/geetest/captcha/ab$a;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "72"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {}, Lcom/geetest/captcha/ac;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "The context must be an \'Activity\' object"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1, v2, v6}, Lcom/geetest/captcha/t$a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/captcha/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/captcha/t;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {v1}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/geetest/captcha/b;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    if-eqz v2, :cond_6

    invoke-interface {v2, v1}, Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/geetest/captcha/b;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    invoke-virtual {v2}, Lcom/geetest/captcha/u;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/geetest/captcha/ab$a;->PARAM:Lcom/geetest/captcha/ab$a;

    invoke-virtual {v2}, Lcom/geetest/captcha/ab$a;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {}, Lcom/geetest/captcha/ac;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "The \'AppId\' parameter should not be null"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1, v2, v6}, Lcom/geetest/captcha/t$a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/captcha/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/captcha/t;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {v1}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/geetest/captcha/b;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    if-eqz v2, :cond_6

    invoke-interface {v2, v1}, Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    :cond_6
    :goto_0
    if-eqz v4, :cond_1a

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    const-string v2, "request"

    if-nez v1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v1, v1, Lcom/geetest/captcha/n;->a:Lcom/geetest/captcha/u$a;

    sget-object v4, Lcom/geetest/captcha/u$a;->NONE:Lcom/geetest/captcha/u$a;

    const-string/jumbo v5, "webViewHandler"

    if-eq v1, v4, :cond_f

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object v1, v1, Lcom/geetest/captcha/n;->b:Lcom/geetest/captcha/u;

    sget-object v4, Lcom/geetest/captcha/u;->NONE:Lcom/geetest/captcha/u;

    if-ne v1, v4, :cond_f

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    sget-object v3, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    invoke-virtual {v1, v3}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v3, v0, Lcom/geetest/captcha/b;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    iput-object v3, v1, Lcom/geetest/captcha/n;->e:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v3, v0, Lcom/geetest/captcha/b;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    iput-object v3, v1, Lcom/geetest/captcha/n;->f:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v3, v0, Lcom/geetest/captcha/b;->d:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

    iput-object v3, v1, Lcom/geetest/captcha/n;->g:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

    iget-object v1, v0, Lcom/geetest/captcha/b;->g:Lcom/geetest/captcha/o;

    if-nez v1, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    iget-object v0, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v1, v0}, Lcom/geetest/captcha/o;->b(Lcom/geetest/captcha/n;)V

    goto/16 :goto_2

    :cond_f
    new-instance v1, Lcom/geetest/captcha/o;

    invoke-direct {v1}, Lcom/geetest/captcha/o;-><init>()V

    iput-object v1, v0, Lcom/geetest/captcha/b;->g:Lcom/geetest/captcha/o;

    new-instance v1, Lcom/geetest/captcha/n;

    iget-object v4, v0, Lcom/geetest/captcha/b;->h:Landroid/content/Context;

    sget-object v6, Lcom/geetest/captcha/s;->j:Lcom/geetest/captcha/s$a;

    iget-object v6, v0, Lcom/geetest/captcha/b;->a:Ljava/lang/String;

    if-nez v6, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    iget-object v3, v0, Lcom/geetest/captcha/b;->e:Lcom/geetest/captcha/GTCaptcha4Config;

    invoke-static {v6, v3}, Lcom/geetest/captcha/s$a;->a(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)Lcom/geetest/captcha/s;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/geetest/captcha/n;-><init>(Landroid/content/Context;Lcom/geetest/captcha/s;)V

    iput-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    sget-object v3, Lcom/geetest/captcha/u$a;->NONE:Lcom/geetest/captcha/u$a;

    invoke-virtual {v1, v3}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u$a;)V

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    sget-object v3, Lcom/geetest/captcha/u;->FLOWING:Lcom/geetest/captcha/u;

    invoke-virtual {v1, v3}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/u;)V

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_13

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    new-instance v3, Lcom/geetest/captcha/c;

    iget-object v4, v0, Lcom/geetest/captcha/b;->e:Lcom/geetest/captcha/GTCaptcha4Config;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/geetest/captcha/GTCaptcha4Config;->getDialogShowListener()Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    move-result-object v4

    goto :goto_1

    :cond_14
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v3, v4}, Lcom/geetest/captcha/c;-><init>(Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;)V

    iput-object v3, v1, Lcom/geetest/captcha/n;->d:Lcom/geetest/captcha/c;

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_15

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    iget-object v3, v0, Lcom/geetest/captcha/b;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    iput-object v3, v1, Lcom/geetest/captcha/n;->e:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    iget-object v3, v0, Lcom/geetest/captcha/b;->c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    iput-object v3, v1, Lcom/geetest/captcha/n;->f:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    iget-object v1, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v1, :cond_17

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    iget-object v3, v0, Lcom/geetest/captcha/b;->d:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

    iput-object v3, v1, Lcom/geetest/captcha/n;->g:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

    iget-object v1, v0, Lcom/geetest/captcha/b;->g:Lcom/geetest/captcha/o;

    if-nez v1, :cond_18

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    iget-object v0, v0, Lcom/geetest/captcha/b;->f:Lcom/geetest/captcha/n;

    if-nez v0, :cond_19

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v1, v0}, Lcom/geetest/captcha/o;->b(Lcom/geetest/captcha/n;)V

    :cond_1a
    :goto_2
    return-object p0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The OnFailureListener object cannot be null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
