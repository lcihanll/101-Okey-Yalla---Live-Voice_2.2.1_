.class public Lcom/unity3d/services/core/request/metrics/e;
.super Ljava/lang/Object;
.source "MetricCommonTags.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/unity3d/services/core/misc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/services/core/misc/d<",
            "Lcom/unity3d/services/core/configuration/PrivacyConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unity3d/services/core/request/metrics/e$a;

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/request/metrics/e$a;-><init>(Lcom/unity3d/services/core/request/metrics/e;)V

    iput-object v0, p0, Lcom/unity3d/services/core/request/metrics/e;->l:Lcom/unity3d/services/core/misc/d;

    invoke-static {}, Lcom/unity3d/services/core/device/b;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->a:Ljava/lang/String;

    const-string v1, "android"

    iput-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->b:Ljava/lang/String;

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->c:Ljava/lang/String;

    invoke-static {}, Lcom/unity3d/services/core/device/b;->G()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->d:Ljava/lang/String;

    invoke-static {}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getInstance()Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getPrivacyConfig()Lcom/unity3d/services/core/configuration/PrivacyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/PrivacyConfig;->getPrivacyStatus()Lcom/unity3d/services/core/configuration/PrivacyConfigStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/PrivacyConfigStatus;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->i:Ljava/lang/String;

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->s()Z

    move-result v1

    iput-boolean v1, p0, Lcom/unity3d/services/core/request/metrics/e;->e:Z

    invoke-static {}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getInstance()Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->registerObserver(Lcom/unity3d/services/core/misc/d;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/core/request/metrics/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/core/request/metrics/e;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/request/metrics/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private c()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/unity3d/services/core/device/i$a;->b:Lcom/unity3d/services/core/device/i$a;

    invoke-static {v0}, Lcom/unity3d/services/core/device/i;->a(Lcom/unity3d/services/core/device/i$a;)Lcom/unity3d/services/core/device/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/services/core/device/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mediation.name.value"

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/g;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->f:Ljava/lang/String;

    const-string v1, "mediation.version.value"

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/g;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->g:Ljava/lang/String;

    const-string v1, "mediation.adapter_version.value"

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/g;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/services/core/request/metrics/e;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Failed to refreshMediationData: %s"

    invoke-static {v0, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/unity3d/services/core/request/metrics/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/services/core/request/metrics/e;->c()V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "iso"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "plt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->c:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "system"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->i:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "prvc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->j:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "m_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->g:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "m_ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->h:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, "m_ad_ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->k:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_a
    iget-boolean v1, p0, Lcom/unity3d/services/core/request/metrics/e;->e:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 1

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getSrc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/request/metrics/e;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/Experiments;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/Experiments;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Experiments;->getExperimentTags()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/services/core/request/metrics/e;->k:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getInstance()Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/e;->l:Lcom/unity3d/services/core/misc/d;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/i;->unregisterObserver(Lcom/unity3d/services/core/misc/d;)V

    return-void
.end method
