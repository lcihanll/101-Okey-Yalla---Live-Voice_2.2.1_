.class public Lcom/unity3d/services/core/device/reader/j;
.super Ljava/lang/Object;
.source "DeviceInfoReaderWithPII.java"

# interfaces
.implements Lcom/unity3d/services/core/device/reader/p;


# instance fields
.field private a:Lcom/unity3d/services/core/device/reader/p;

.field private b:Lcom/unity3d/services/core/device/reader/pii/b;

.field private c:Lcom/unity3d/services/core/device/reader/pii/c;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/device/reader/p;Lcom/unity3d/services/core/device/reader/pii/c;Lcom/unity3d/services/core/device/reader/pii/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/j;->a:Lcom/unity3d/services/core/device/reader/p;

    iput-object p2, p0, Lcom/unity3d/services/core/device/reader/j;->c:Lcom/unity3d/services/core/device/reader/pii/c;

    iput-object p3, p0, Lcom/unity3d/services/core/device/reader/j;->b:Lcom/unity3d/services/core/device/reader/pii/b;

    return-void
.end method

.method private a(Lcom/unity3d/services/core/device/reader/pii/d;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/device/reader/pii/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unity3d/services/core/device/reader/j;->b:Lcom/unity3d/services/core/device/reader/pii/b;

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/reader/pii/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "unifiedconfig.pii.advertisingTrackingId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/unity3d/services/core/device/reader/pii/d;->c()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/unity3d/services/core/device/reader/pii/d;->c()Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "user.nonBehavioral"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private b(Lcom/unity3d/services/core/device/reader/pii/d;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/device/reader/pii/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/unity3d/services/core/device/reader/pii/d;->a()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/j;->a:Lcom/unity3d/services/core/device/reader/p;

    invoke-interface {v0}, Lcom/unity3d/services/core/device/reader/p;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/core/device/reader/j;->c:Lcom/unity3d/services/core/device/reader/pii/c;

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/reader/pii/c;->f()Lcom/unity3d/services/core/device/reader/pii/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/reader/pii/d;->b()Lcom/unity3d/services/core/device/reader/pii/a;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/device/reader/j$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/unity3d/services/core/device/reader/j;->a(Lcom/unity3d/services/core/device/reader/pii/d;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/unity3d/services/core/device/reader/j;->b(Lcom/unity3d/services/core/device/reader/pii/d;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_0
    return-object v0
.end method
