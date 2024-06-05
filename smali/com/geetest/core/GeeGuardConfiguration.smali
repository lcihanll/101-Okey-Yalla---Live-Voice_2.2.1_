.class public Lcom/geetest/core/GeeGuardConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/core/GeeGuardConfiguration$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/geetest/core/GeeGuardConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->access$000(Lcom/geetest/core/GeeGuardConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->access$100(Lcom/geetest/core/GeeGuardConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->b:Z

    invoke-static {p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->access$200(Lcom/geetest/core/GeeGuardConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->c:Z

    invoke-static {p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->access$300(Lcom/geetest/core/GeeGuardConfiguration$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->d:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->access$400(Lcom/geetest/core/GeeGuardConfiguration$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->e:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->access$500(Lcom/geetest/core/GeeGuardConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->f:I

    invoke-static {p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->access$600(Lcom/geetest/core/GeeGuardConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geetest/core/GeeGuardConfiguration;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geetest/core/GeeGuardConfiguration$Builder;Lcom/geetest/core/GeeGuardConfiguration$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geetest/core/GeeGuardConfiguration;-><init>(Lcom/geetest/core/GeeGuardConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->f:I

    return v0
.end method

.method public getOuterInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public isAlInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->b:Z

    return v0
.end method

.method public isDevInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/geetest/core/GeeGuardConfiguration;->c:Z

    return v0
.end method
