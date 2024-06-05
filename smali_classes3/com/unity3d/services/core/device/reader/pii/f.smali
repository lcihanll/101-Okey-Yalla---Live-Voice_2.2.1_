.class public Lcom/unity3d/services/core/device/reader/pii/f;
.super Ljava/lang/Object;
.source "PiiTrackingStatusReader.java"


# instance fields
.field private final a:Lcom/unity3d/services/core/misc/c;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/misc/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/pii/f;->a:Lcom/unity3d/services/core/misc/c;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/e;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/f;->a:Lcom/unity3d/services/core/misc/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/misc/c;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/unity3d/services/core/device/reader/pii/e;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object p1

    return-object p1
.end method

.method private b()Lcom/unity3d/services/core/device/reader/pii/e;
    .locals 1

    const-string v0, "privacy.spm.value"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/device/reader/pii/f;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/unity3d/services/core/device/reader/pii/e;
    .locals 1

    const-string v0, "privacy.mode.value"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/device/reader/pii/f;->a(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/unity3d/services/core/device/reader/pii/e;
    .locals 2

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/f;->d()Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/e;->e:Lcom/unity3d/services/core/device/reader/pii/e;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/f;->b()Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/f;->d()Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/e;->a:Lcom/unity3d/services/core/device/reader/pii/e;

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/f;->b()Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/f;->d()Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/e;->c:Lcom/unity3d/services/core/device/reader/pii/e;

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/f;->b()Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/f;->d()Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/e;->b:Lcom/unity3d/services/core/device/reader/pii/e;

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/f;->b()Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/unity3d/services/core/device/reader/pii/e;->d:Lcom/unity3d/services/core/device/reader/pii/e;

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/f;->a:Lcom/unity3d/services/core/misc/c;

    if-eqz v0, :cond_2

    const-string v1, "user.nonbehavioral.value"

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/misc/c;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/f;->a:Lcom/unity3d/services/core/misc/c;

    const-string v1, "user.nonBehavioral.value"

    invoke-interface {v0, v1}, Lcom/unity3d/services/core/misc/c;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
