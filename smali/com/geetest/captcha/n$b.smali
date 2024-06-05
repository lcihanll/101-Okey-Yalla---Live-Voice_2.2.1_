.class final Lcom/geetest/captcha/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/captcha/n;->a(Ljava/lang/String;)V
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

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/geetest/captcha/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/n$b;->a:Lcom/geetest/captcha/n;

    iput-object p2, p0, Lcom/geetest/captcha/n$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/geetest/captcha/n$b;->a:Lcom/geetest/captcha/n;

    invoke-static {v0}, Lcom/geetest/captcha/n;->b(Lcom/geetest/captcha/n;)Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/geetest/captcha/n$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
