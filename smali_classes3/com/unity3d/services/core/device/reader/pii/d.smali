.class public Lcom/unity3d/services/core/device/reader/pii/d;
.super Ljava/lang/Object;
.source "PiiDecisionData.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/unity3d/services/core/device/reader/pii/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/device/reader/pii/a;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/unity3d/services/core/device/reader/pii/d;-><init>(Lcom/unity3d/services/core/device/reader/pii/a;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/device/reader/pii/a;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/device/reader/pii/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/pii/d;->b:Lcom/unity3d/services/core/device/reader/pii/a;

    iput-object p2, p0, Lcom/unity3d/services/core/device/reader/pii/d;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/unity3d/services/core/device/reader/pii/a;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/d;->b:Lcom/unity3d/services/core/device/reader/pii/a;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "user.nonBehavioral"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
