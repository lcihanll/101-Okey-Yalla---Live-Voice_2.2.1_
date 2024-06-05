.class public Lcom/geetest/captcha/GTCaptcha4Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/captcha/NoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/captcha/GTCaptcha4Config$Builder;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;


# direct methods
.method private constructor <init>(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$000(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->a:Z

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$100(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$200(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$300(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$400(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->e:Z

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$500(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)I

    move-result v0

    iput v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->f:I

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$600(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)I

    move-result v0

    iput v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->g:I

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$700(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/geetest/captcha/GTCaptcha4Config$Builder;->access$800(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    move-result-object p1

    iput-object p1, p0, Lcom/geetest/captcha/GTCaptcha4Config;->i:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/captcha/GTCaptcha4Config$Builder;Lcom/geetest/captcha/GTCaptcha4Config$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geetest/captcha/GTCaptcha4Config;-><init>(Lcom/geetest/captcha/GTCaptcha4Config$Builder;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->g:I

    return v0
.end method

.method public getDialogShowListener()Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->i:Lcom/geetest/captcha/GTCaptcha4Client$OnDialogShowListener;

    return-object v0
.end method

.method public getDialogStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->f:I

    return v0
.end method

.method public isCanceledOnTouchOutside()Z
    .locals 1

    iget-boolean v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->e:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/geetest/captcha/GTCaptcha4Config;->a:Z

    return v0
.end method
