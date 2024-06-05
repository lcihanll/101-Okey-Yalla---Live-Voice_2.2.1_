.class public final Lcom/geetest/captcha/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/s$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\"\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u001e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\"\u0010\u0014\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000bR>\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00162\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/geetest/captcha/model/DataBean;",
        "",
        "()V",
        "<set-?>",
        "",
        "backgroundColor",
        "getBackgroundColor",
        "()I",
        "",
        "captchaId",
        "getCaptchaId",
        "()Ljava/lang/String;",
        "dialogStyle",
        "getDialogStyle",
        "html",
        "getHtml",
        "",
        "isCanceledOnTouchOutside",
        "()Z",
        "isDebug",
        "language",
        "getLanguage",
        "",
        "params",
        "getParams",
        "()Ljava/util/Map;",
        "timeOut",
        "getTimeOut",
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
.field public static final j:Lcom/geetest/captcha/s$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/geetest/captcha/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/captcha/s$a;-><init>(B)V

    sput-object v0, Lcom/geetest/captcha/s;->j:Lcom/geetest/captcha/s$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "file:///android_asset/gt4-index.html"

    iput-object v0, p0, Lcom/geetest/captcha/s;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/geetest/captcha/s;->f:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/geetest/captcha/s;->g:I

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/geetest/captcha/s;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/geetest/captcha/s;I)V
    .locals 0

    iput p1, p0, Lcom/geetest/captcha/s;->g:I

    return-void
.end method

.method public static final synthetic a(Lcom/geetest/captcha/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/s;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/geetest/captcha/s;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/s;->e:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic a(Lcom/geetest/captcha/s;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/geetest/captcha/s;->c:Z

    return-void
.end method

.method public static final synthetic b(Lcom/geetest/captcha/s;I)V
    .locals 0

    iput p1, p0, Lcom/geetest/captcha/s;->h:I

    return-void
.end method

.method public static final synthetic b(Lcom/geetest/captcha/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/s;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lcom/geetest/captcha/s;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/geetest/captcha/s;->f:Z

    return-void
.end method

.method public static final synthetic c(Lcom/geetest/captcha/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/s;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic d(Lcom/geetest/captcha/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/s;->i:Ljava/lang/String;

    return-void
.end method
