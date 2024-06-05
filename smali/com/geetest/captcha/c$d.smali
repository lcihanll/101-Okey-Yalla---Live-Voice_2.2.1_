.class public final Lcom/geetest/captcha/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/captcha/c;
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
.field final synthetic a:Lcom/geetest/captcha/c;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/geetest/captcha/s;

.field final synthetic d:Lcom/geetest/captcha/w;


# direct methods
.method public constructor <init>(Lcom/geetest/captcha/c;Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/c$d;->a:Lcom/geetest/captcha/c;

    iput-object p2, p0, Lcom/geetest/captcha/c$d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/geetest/captcha/c$d;->c:Lcom/geetest/captcha/s;

    iput-object p4, p0, Lcom/geetest/captcha/c$d;->d:Lcom/geetest/captcha/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/geetest/captcha/c$d;->a:Lcom/geetest/captcha/c;

    iget-object v1, p0, Lcom/geetest/captcha/c$d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/geetest/captcha/c$d;->c:Lcom/geetest/captcha/s;

    iget-object v3, p0, Lcom/geetest/captcha/c$d;->d:Lcom/geetest/captcha/w;

    invoke-virtual {v0, v1, v2, v3}, Lcom/geetest/captcha/c;->b(Landroid/content/Context;Lcom/geetest/captcha/s;Lcom/geetest/captcha/w;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
