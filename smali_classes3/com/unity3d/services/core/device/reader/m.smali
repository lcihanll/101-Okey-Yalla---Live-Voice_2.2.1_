.class public Lcom/unity3d/services/core/device/reader/m;
.super Ljava/lang/Object;
.source "DeviceInfoReaderWithStorageInfo.java"

# interfaces
.implements Lcom/unity3d/services/core/device/reader/p;


# instance fields
.field private final a:Lcom/unity3d/services/core/device/reader/p;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/services/core/misc/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/unity3d/services/core/misc/f;


# direct methods
.method public varargs constructor <init>(Lcom/unity3d/services/core/device/reader/p;Lcom/unity3d/services/core/misc/f;[Lcom/unity3d/services/core/misc/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/m;->a:Lcom/unity3d/services/core/device/reader/p;

    iput-object p2, p0, Lcom/unity3d/services/core/device/reader/m;->c:Lcom/unity3d/services/core/misc/f;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/m;->b:Ljava/util/List;

    return-void
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

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/m;->a:Lcom/unity3d/services/core/device/reader/p;

    invoke-interface {v0}, Lcom/unity3d/services/core/device/reader/p;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/unity3d/services/core/misc/h;

    iget-object v2, p0, Lcom/unity3d/services/core/device/reader/m;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/unity3d/services/core/misc/h;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/unity3d/services/core/misc/h;->getData()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/unity3d/services/core/misc/e;

    invoke-direct {v2, v1}, Lcom/unity3d/services/core/misc/e;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/unity3d/services/core/device/reader/m;->c:Lcom/unity3d/services/core/misc/f;

    const-string v3, "."

    invoke-virtual {v2, v3, v1}, Lcom/unity3d/services/core/misc/e;->a(Ljava/lang/String;Lcom/unity3d/services/core/misc/f;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/services/core/misc/j;->a(Ljava/util/Map;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method
