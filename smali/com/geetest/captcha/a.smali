.class public final Lcom/geetest/captcha/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0001 B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u000eJ\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u001a\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u000e\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010\u001f\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/geetest/captcha/GTCaptcha4Holder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "controller",
        "Lcom/geetest/captcha/controller/Controller;",
        "listener",
        "Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;",
        "response",
        "Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;",
        "webViewShowListener",
        "Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;",
        "addOnFailureListener",
        "",
        "addOnSuccessListener",
        "addOnWebViewShowListener",
        "cancel",
        "configurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "destroy",
        "init",
        "appId",
        "",
        "config",
        "Lcom/geetest/captcha/GTCaptcha4Config;",
        "preLoadWithCaptcha",
        "setLogEnable",
        "enable",
        "",
        "verifyWithCaptcha",
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
.field static e:J

.field public static final f:Lcom/geetest/captcha/a$a;


# instance fields
.field final a:Lcom/geetest/captcha/b;

.field b:Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;

.field c:Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

.field d:Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/geetest/captcha/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/captcha/a$a;-><init>(B)V

    sput-object v0, Lcom/geetest/captcha/a;->f:Lcom/geetest/captcha/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/geetest/captcha/b;

    invoke-direct {v0, p1}, Lcom/geetest/captcha/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lcom/geetest/captcha/a$1;

    invoke-direct {v0, p1}, Lcom/geetest/captcha/a$1;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/geetest/captcha/ac;->a:Lcom/geetest/captcha/ac;

    invoke-static {p1}, Lcom/geetest/captcha/ac;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {}, Lcom/geetest/captcha/af;->a()V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lcom/geetest/captcha/af;->a:Lcom/geetest/captcha/af;

    invoke-static {p0}, Lcom/geetest/captcha/af;->a(Z)V

    return-void
.end method

.method private final b(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)V
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    invoke-virtual {v0, p1}, Lcom/geetest/captcha/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    iput-object p2, p1, Lcom/geetest/captcha/b;->e:Lcom/geetest/captcha/GTCaptcha4Config;

    iget-object p1, p0, Lcom/geetest/captcha/a;->a:Lcom/geetest/captcha/b;

    invoke-virtual {p1}, Lcom/geetest/captcha/b;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/geetest/captcha/a;->b(Ljava/lang/String;Lcom/geetest/captcha/GTCaptcha4Config;)V

    return-void
.end method
