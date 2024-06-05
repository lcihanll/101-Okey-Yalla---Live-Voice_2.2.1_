.class final Lcom/geetest/captcha/n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/captcha/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/captcha/n;


# direct methods
.method constructor <init>(Lcom/geetest/captcha/n;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/n$d;->a:Lcom/geetest/captcha/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/n$d;->a:Lcom/geetest/captcha/n;

    invoke-static {v0}, Lcom/geetest/captcha/n;->a(Lcom/geetest/captcha/n;)Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/geetest/captcha/GTCaptcha4Client$OnWebViewShowListener;->onWebViewShow()V

    :cond_0
    return-void
.end method
