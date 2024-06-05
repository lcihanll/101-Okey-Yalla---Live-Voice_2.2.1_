.class public Lcom/geetest/captcha/GTCaptcha4Config$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/captcha/NoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/captcha/GTCaptcha4Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->b:Ljava/lang/String;

    const-string v2, "file:///android_asset/gt4-index.html"

    iput-object v2, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->d:Ljava/util/Map;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->e:Z

    const/16 v2, 0x2710

    iput v2, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->f:I

    iput v0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->g:I

    iput-object v1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->i:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    return-void
.end method

.method static synthetic access$000(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->a:Z

    return p0
.end method

.method static synthetic access$100(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->e:Z

    return p0
.end method

.method static synthetic access$500(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)I
    .locals 0

    iget p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->f:I

    return p0
.end method

.method static synthetic access$600(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)I
    .locals 0

    iget p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->g:I

    return p0
.end method

.method static synthetic access$700(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;
    .locals 0

    iget-object p0, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->i:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/geetest/captcha/GTCaptcha4Config;
    .locals 2

    new-instance v0, Lcom/geetest/captcha/GTCaptcha4Config;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/geetest/captcha/GTCaptcha4Config;-><init>(Lcom/geetest/captcha/GTCaptcha4Config$Builder;Lcom/geetest/captcha/GTCaptcha4Config$1;)V

    return-object v0
.end method

.method public setBackgroundColor(I)Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    .locals 0

    iput p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->g:I

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->e:Z

    return-object p0
.end method

.method public setDebug(Z)Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->a:Z

    return-object p0
.end method

.method public setDialogShowListener(Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->i:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    return-void
.end method

.method public setDialogStyle(Ljava/lang/String;)Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/geetest/captcha/GTCaptcha4Config$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->d:Ljava/util/Map;

    return-object p0
.end method

.method public setResourcePath(Ljava/lang/String;)Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    .locals 0

    iput-object p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeOut(I)Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    .locals 0

    iput p1, p0, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->f:I

    return-object p0
.end method
