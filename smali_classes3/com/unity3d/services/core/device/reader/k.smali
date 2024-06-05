.class public Lcom/unity3d/services/core/device/reader/k;
.super Ljava/lang/Object;
.source "DeviceInfoReaderWithPrivacy.java"

# interfaces
.implements Lcom/unity3d/services/core/device/reader/p;


# instance fields
.field private final a:Lcom/unity3d/services/core/device/reader/p;

.field private final b:Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

.field private final c:Lcom/unity3d/services/core/device/reader/pii/b;

.field private final d:Lcom/unity3d/services/core/device/reader/pii/f;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/device/reader/p;Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;Lcom/unity3d/services/core/device/reader/pii/b;Lcom/unity3d/services/core/device/reader/pii/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/k;->a:Lcom/unity3d/services/core/device/reader/p;

    iput-object p2, p0, Lcom/unity3d/services/core/device/reader/k;->b:Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    iput-object p3, p0, Lcom/unity3d/services/core/device/reader/k;->c:Lcom/unity3d/services/core/device/reader/pii/b;

    iput-object p4, p0, Lcom/unity3d/services/core/device/reader/k;->d:Lcom/unity3d/services/core/device/reader/pii/f;

    return-void
.end method

.method private b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unity3d/services/core/device/reader/k;->c:Lcom/unity3d/services/core/device/reader/pii/b;

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/reader/pii/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "unifiedconfig.pii.advertisingTrackingId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/unity3d/services/core/device/reader/k;->d:Lcom/unity3d/services/core/device/reader/pii/f;

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/reader/pii/f;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "user.nonBehavioral"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/k;->a:Lcom/unity3d/services/core/device/reader/p;

    invoke-interface {v0}, Lcom/unity3d/services/core/device/reader/p;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/core/device/reader/k;->b:Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getPrivacyConfig()Lcom/unity3d/services/core/configuration/PrivacyConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/core/device/reader/k;->b:Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getPrivacyConfig()Lcom/unity3d/services/core/configuration/PrivacyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/core/configuration/PrivacyConfig;->allowedToSendPii()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/k;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method
