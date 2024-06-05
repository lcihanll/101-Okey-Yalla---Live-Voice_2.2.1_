.class public final Lcom/geetest/captcha/c;
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
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0011\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0017\u001a\u00020\u0013J\u0006\u0010\u0018\u001a\u00020\u0013J\u0006\u0010\u0019\u001a\u00020\u0013J\u001e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ)\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!2\u0012\u0010\"\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020$0#\"\u00020$H\u0002\u00a2\u0006\u0002\u0010%J\u001a\u0010&\u001a\u00020\u00132\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J \u0010\'\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001e\u0010(\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/geetest/captcha/controller/DialogController;",
        "",
        "()V",
        "dialogShowListener",
        "Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;",
        "(Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;)V",
        "build",
        "Lcom/geetest/captcha/views/WebViewBuilder;",
        "dialog",
        "Lcom/geetest/captcha/dialog/GTC4Dialog;",
        "getDialog$captcha_release",
        "()Lcom/geetest/captcha/dialog/GTC4Dialog;",
        "setDialog$captcha_release",
        "(Lcom/geetest/captcha/dialog/GTC4Dialog;)V",
        "frameLayout",
        "Landroid/widget/FrameLayout;",
        "webView",
        "Lcom/geetest/captcha/views/GTC4WebView;",
        "addLoadingView",
        "",
        "context",
        "Landroid/content/Context;",
        "addOnDialogShowListener",
        "dismiss",
        "hideLoading",
        "notifyWebViewShowed",
        "preLoadWebView",
        "dataBean",
        "Lcom/geetest/captcha/model/DataBean;",
        "webViewObserver",
        "Lcom/geetest/captcha/observer/WebViewObserver;",
        "removeObjectsForKeys",
        "json",
        "Lorg/json/JSONObject;",
        "keys",
        "",
        "",
        "(Lorg/json/JSONObject;[Ljava/lang/String;)V",
        "setOnKeyListener",
        "showGTC4Dialog",
        "showLoadSuccessDialog",
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
.field public a:Lcom/geetest/captcha/d;

.field public b:Lcom/geetest/captcha/views/GTC4WebView;

.field public c:Lcom/geetest/captcha/ai;

.field private d:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geetest/captcha/c;->d:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    return-void
.end method

.method private static varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/geetest/captcha/c;->a:Lcom/geetest/captcha/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/geetest/captcha/d;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/geetest/captcha/c;->b:Lcom/geetest/captcha/views/GTC4WebView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/geetest/captcha/views/GTC4WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_3

    new-instance v2, Lcom/geetest/captcha/c$a;

    invoke-direct {v2, v0}, Lcom/geetest/captcha/c$a;-><init>(Lcom/geetest/captcha/d;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/geetest/captcha/d;->dismiss()V

    :cond_4
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "observable"

    const-string/jumbo v6, "url"

    const-string/jumbo v7, "utf-8"

    const-string v8, "mi"

    const-string v9, "displayMode"

    const-string v10, "context"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "dataBean"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewObserver"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/geetest/captcha/v;

    invoke-direct {v12}, Lcom/geetest/captcha/v;-><init>()V

    invoke-virtual {v12, v4}, Lcom/geetest/captcha/v;->a(Lcom/geetest/captcha/w;)V

    sget-object v0, Lcom/geetest/captcha/ad;->a:Lcom/geetest/captcha/ad$b;

    iget-object v0, v3, Lcom/geetest/captcha/s;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/geetest/captcha/ad$b;->a(Ljava/lang/String;)Lcom/geetest/captcha/ad;

    move-result-object v0

    const-string v13, "description"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/geetest/captcha/ab$a;->PARAM:Lcom/geetest/captcha/ab$a;

    invoke-virtual {v2}, Lcom/geetest/captcha/ab$a;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "75"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {}, Lcom/geetest/captcha/ac;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "Address configuration error"

    invoke-virtual {v3, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v4, v0, v2, v3}, Lcom/geetest/captcha/w;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/geetest/captcha/ad;->a()Lcom/geetest/captcha/ad$a;

    move-result-object v14

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/geetest/captcha/y;->CENTER:Lcom/geetest/captcha/y;

    invoke-virtual {v0}, Lcom/geetest/captcha/y;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "displayArea"

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "protocol"

    const-string v4, "https://"

    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "loading"

    const-string v4, "./gt4-loading.gif"

    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v3, Lcom/geetest/captcha/s;->e:Ljava/util/Map;

    sget-object v4, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    const-string v13, "Config Params: "

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/geetest/captcha/af;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v17, 0x1

    :goto_1
    const/16 v18, 0x0

    if-nez v17, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v17, v18

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v19, v0

    const-string/jumbo v0, "xid"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    sget-object v4, Lcom/geetest/captcha/x;->a:Lcom/geetest/captcha/x;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v13, :cond_3

    instance-of v1, v13, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    move-object v1, v4

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/geetest/captcha/x;->a(Ljava/util/Map;)V

    goto :goto_3

    :cond_4
    const-string v0, "_gee_info"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v13, :cond_6

    instance-of v0, v13, Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    move-object v0, v13

    check-cast v0, Lorg/json/JSONObject;

    const-string v21, "geeid"

    const-string v22, "packageName"

    const-string v23, "displayName"

    const-string v24, "appVer"

    const-string v25, "build"

    const-string v26, "clientVersion"

    filled-new-array/range {v21 .. v26}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/captcha/c;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v17, v0

    goto :goto_4

    :cond_5
    invoke-virtual {v15, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    :goto_3
    move-object/from16 v1, p0

    :goto_4
    move-object/from16 v0, v19

    goto :goto_2

    :cond_7
    move-object/from16 v0, v17

    goto :goto_5

    :cond_8
    move-object/from16 v0, v18

    :goto_5
    iget-object v1, v14, Lcom/geetest/captcha/ad$a;->b:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v4

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v4, v19

    goto :goto_6

    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_a
    iget-object v1, v3, Lcom/geetest/captcha/s;->a:Ljava/lang/String;

    const-string v4, "captchaId"

    if-nez v1, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "challenge"

    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, v3, Lcom/geetest/captcha/s;->c:Z

    const-string v4, "debug"

    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, v3, Lcom/geetest/captcha/s;->d:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v1, 0x1

    :goto_8
    const-string v4, "language"

    if-eqz v1, :cond_f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    move-object/from16 v17, v11

    const-string v11, "context.applicationContext.resources"

    move-object/from16 v19, v5

    const-string v5, "context.applicationContext"

    if-lt v1, v13, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v5, "context.applicationContext.resources.configuration"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    const-string v5, "context.applicationConte\u2026.configuration.locales[0]"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v5, "context.applicationConte\u2026rces.configuration.locale"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x2d

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v11, "locale.country"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "Locale.ROOT"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    :cond_f
    move-object/from16 v19, v5

    move-object/from16 v17, v11

    iget-object v1, v3, Lcom/geetest/captcha/s;->d:Ljava/lang/String;

    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_a
    iget v1, v3, Lcom/geetest/captcha/s;->g:I

    const-string/jumbo v4, "timeout"

    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clientVersion"

    const-string v4, "1.8.1"

    invoke-virtual {v15, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "clientType"

    const-string v11, "android"

    invoke-virtual {v15, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v5, v3, Lcom/geetest/captcha/s;->f:Z

    const-string v11, "outside"

    invoke-virtual {v15, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "geeid"

    new-instance v13, Lorg/json/JSONObject;

    invoke-static {}, Lcom/geetest/captcha/g$a;->a()Lcom/geetest/captcha/g;

    invoke-static {}, Lcom/geetest/captcha/h$a;->a()Lcom/geetest/captcha/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v21, v12

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/geetest/captcha/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "packageName"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    const-string v12, "context.packageManager.g\u2026l(context.packageManager)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    invoke-virtual {v12, v13, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    const-string v2, "displayName"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVer"

    iget-object v11, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "build"

    iget v11, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b

    :cond_10
    const-string/jumbo v0, "zid"

    sget-object v1, Lcom/geetest/captcha/ah;->a:Lcom/geetest/captcha/ah;

    invoke-static/range {p1 .. p1}, Lcom/geetest/captcha/ah;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v15, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v21, v12

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    :try_start_2
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/geetest/captcha/z;->AUTO:Lcom/geetest/captcha/z;

    invoke-virtual {v1}, Lcom/geetest/captcha/z;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    sget-object v0, Lcom/geetest/captcha/aa;->a:Lcom/geetest/captcha/aa;

    invoke-static/range {p1 .. p1}, Lcom/geetest/captcha/aa;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/geetest/captcha/z;->DARK:Lcom/geetest/captcha/z;

    :goto_e
    invoke-virtual {v0}, Lcom/geetest/captcha/z;->getValue()I

    move-result v0

    goto :goto_f

    :cond_12
    sget-object v0, Lcom/geetest/captcha/z;->NORMAL:Lcom/geetest/captcha/z;

    goto :goto_e

    :goto_f
    invoke-virtual {v15, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_10
    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseURL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/geetest/captcha/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Parameter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/captcha/af;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_14
    sget-object v4, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/geetest/captcha/s;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/captcha/af;->b(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v14, Lcom/geetest/captcha/ad$a;->b:Ljava/util/Map;

    if-eqz v2, :cond_15

    iget-object v2, v14, Lcom/geetest/captcha/ad$a;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :try_start_3
    new-instance v0, Lcom/geetest/captcha/ai$a;

    invoke-direct {v0}, Lcom/geetest/captcha/ai$a;-><init>()V

    new-instance v1, Lcom/geetest/captcha/ad;

    iget-object v2, v14, Lcom/geetest/captcha/ad$a;->a:Ljava/lang/String;

    iget-object v4, v14, Lcom/geetest/captcha/ad$a;->b:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/geetest/captcha/ad;-><init>(Ljava/lang/String;Ljava/util/Map;B)V

    invoke-virtual {v1}, Lcom/geetest/captcha/ad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/geetest/captcha/ai$a;->a:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v19

    move-object/from16 v2, v21

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v17

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/geetest/captcha/views/GTC4WebView;

    invoke-direct {v7, v1}, Lcom/geetest/captcha/views/GTC4WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/geetest/captcha/ai$a;->c:Lcom/geetest/captcha/views/GTC4WebView;

    iget-object v1, v0, Lcom/geetest/captcha/ai$a;->c:Lcom/geetest/captcha/views/GTC4WebView;

    if-nez v1, :cond_16

    const-string/jumbo v7, "webView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    iget-object v7, v0, Lcom/geetest/captcha/ai$a;->a:Ljava/lang/String;

    if-nez v7, :cond_17

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "loadUrl"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/geetest/captcha/views/GTC4WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const-string v5, "settings"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_18

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_18
    const-string v4, "searchBoxJavaBridge_"

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v4, "accessibility"

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v4, "accessibilityTraversal"

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/geetest/captcha/views/GTC4WebView;->setOverScrollMode(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->setScrollContainer(Z)V

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->setVerticalScrollBarEnabled(Z)V

    new-instance v4, Lcom/geetest/captcha/views/GTC4WebView$b;

    invoke-direct {v4}, Lcom/geetest/captcha/views/GTC4WebView$b;-><init>()V

    check-cast v4, Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v4, Lcom/geetest/captcha/views/GTC4WebView$c;

    invoke-direct {v4, v7, v2}, Lcom/geetest/captcha/views/GTC4WebView$c;-><init>(Ljava/lang/String;Lcom/geetest/captcha/v;)V

    iput-object v4, v1, Lcom/geetest/captcha/views/GTC4WebView;->a:Lcom/geetest/captcha/views/GTC4WebView$c;

    iget-object v4, v1, Lcom/geetest/captcha/views/GTC4WebView;->a:Lcom/geetest/captcha/views/GTC4WebView$c;

    if-eqz v4, :cond_1c

    check-cast v4, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget v4, v3, Lcom/geetest/captcha/s;->h:I

    invoke-virtual {v1, v4}, Lcom/geetest/captcha/views/GTC4WebView;->setBackgroundColor(I)V

    iget-boolean v3, v3, Lcom/geetest/captcha/s;->c:Z

    if-eqz v3, :cond_19

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_19

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_19
    invoke-virtual {v1}, Lcom/geetest/captcha/views/GTC4WebView;->onResume()V

    iput-object v2, v0, Lcom/geetest/captcha/ai$a;->b:Lcom/geetest/captcha/v;

    new-instance v1, Lcom/geetest/captcha/ai;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/geetest/captcha/ai;-><init>(Lcom/geetest/captcha/ai$a;B)V

    new-instance v0, Lcom/geetest/captcha/ai$b;

    iget-object v2, v1, Lcom/geetest/captcha/ai;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/geetest/captcha/ai;->c:Lcom/geetest/captcha/views/GTC4WebView;

    iget-object v4, v1, Lcom/geetest/captcha/ai;->b:Lcom/geetest/captcha/v;

    invoke-direct {v0, v2, v3, v4}, Lcom/geetest/captcha/ai$b;-><init>(Ljava/lang/String;Lcom/geetest/captcha/views/GTC4WebView;Lcom/geetest/captcha/v;)V

    iput-object v0, v1, Lcom/geetest/captcha/ai;->d:Lcom/geetest/captcha/ai$b;

    iget-object v0, v1, Lcom/geetest/captcha/ai;->c:Lcom/geetest/captcha/views/GTC4WebView;

    iget-object v2, v1, Lcom/geetest/captcha/ai;->d:Lcom/geetest/captcha/ai$b;

    if-nez v2, :cond_1a

    const-string v3, "jsInterface"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    const-string v3, "JSInterface"

    invoke-virtual {v0, v2, v3}, Lcom/geetest/captcha/views/GTC4WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/geetest/captcha/ai;->c:Lcom/geetest/captcha/views/GTC4WebView;

    invoke-virtual {v0}, Lcom/geetest/captcha/views/GTC4WebView;->buildLayer()V

    iget-object v0, v1, Lcom/geetest/captcha/ai;->c:Lcom/geetest/captcha/views/GTC4WebView;

    iget-object v2, v1, Lcom/geetest/captcha/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/geetest/captcha/views/GTC4WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Lcom/geetest/captcha/ai;->c:Lcom/geetest/captcha/views/GTC4WebView;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0}, Lcom/geetest/captcha/views/GTC4WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v2, p0

    :try_start_4
    iput-object v1, v2, Lcom/geetest/captcha/c;->c:Lcom/geetest/captcha/ai;

    if-eqz v1, :cond_1b

    iget-object v0, v1, Lcom/geetest/captcha/ai;->c:Lcom/geetest/captcha/views/GTC4WebView;

    goto :goto_11

    :cond_1b
    move-object/from16 v0, v18

    :goto_11
    iput-object v0, v2, Lcom/geetest/captcha/c;->b:Lcom/geetest/captcha/views/GTC4WebView;

    return-void

    :cond_1c
    move-object/from16 v2, p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.geetest.captcha.views.GTC4WebView.MyWebViewClient"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/geetest/captcha/ab$a;->WEB_VIEW_NEW:Lcom/geetest/captcha/ab$a;

    invoke-virtual {v3}, Lcom/geetest/captcha/ab$a;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "99"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {}, Lcom/geetest/captcha/ac;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/geetest/captcha/t;->a:Lcom/geetest/captcha/t$a;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "Device not supported"

    move-object/from16 v6, v16

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "exception"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v5, p3

    invoke-interface {v5, v1, v3, v4}, Lcom/geetest/captcha/w;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1d
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V
    .locals 1

    iget-object v0, p2, Lcom/geetest/captcha/s;->i:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/geetest/captcha/d;

    invoke-direct {p2, p1}, Lcom/geetest/captcha/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/geetest/captcha/s;->i:Ljava/lang/String;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/geetest/captcha/d;

    invoke-direct {v0, p1, p2}, Lcom/geetest/captcha/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/geetest/captcha/c;->a:Lcom/geetest/captcha/d;

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/geetest/captcha/c;->d:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    iput-object p1, p2, Lcom/geetest/captcha/d;->b:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    :cond_2
    iget-object p1, p0, Lcom/geetest/captcha/c;->a:Lcom/geetest/captcha/d;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/geetest/captcha/c;->b:Lcom/geetest/captcha/views/GTC4WebView;

    check-cast p2, Landroid/view/View;

    iput-object p2, p1, Lcom/geetest/captcha/d;->a:Landroid/view/View;

    :cond_3
    iget-object p1, p0, Lcom/geetest/captcha/c;->a:Lcom/geetest/captcha/d;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/geetest/captcha/c$c;

    invoke-direct {p2, p3}, Lcom/geetest/captcha/c$c;-><init>(Lcom/geetest/captcha/w;)V

    check-cast p2, Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1, p2}, Lcom/geetest/captcha/d;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_4
    iget-object p1, p0, Lcom/geetest/captcha/c;->a:Lcom/geetest/captcha/d;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/geetest/captcha/d;->show()V

    :cond_5
    return-void
.end method
