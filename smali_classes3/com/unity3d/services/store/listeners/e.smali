.class public Lcom/unity3d/services/store/listeners/e;
.super Ljava/lang/Object;
.source "PurchasesResponseListener.java"

# interfaces
.implements Lcom/unity3d/services/store/listeners/c;


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Lcom/unity3d/services/store/b;

.field private final c:Lcom/unity3d/services/store/b;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/store/b;Lcom/unity3d/services/store/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/unity3d/services/store/listeners/e;-><init>(Ljava/lang/Integer;Lcom/unity3d/services/store/b;Lcom/unity3d/services/store/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/unity3d/services/store/b;Lcom/unity3d/services/store/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/store/listeners/e;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/unity3d/services/store/listeners/e;->b:Lcom/unity3d/services/store/b;

    iput-object p3, p0, Lcom/unity3d/services/store/listeners/e;->c:Lcom/unity3d/services/store/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/services/store/gpbl/bridges/a;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/a;",
            "Ljava/util/List<",
            "Lcom/unity3d/services/store/gpbl/bridges/c;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/unity3d/services/store/listeners/e;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/a;->i()Lcom/unity3d/services/store/gpbl/a;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/store/gpbl/a;->d:Lcom/unity3d/services/store/gpbl/a;

    if-ne v1, v2, :cond_2

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/store/gpbl/bridges/c;

    invoke-virtual {v1}, Lcom/unity3d/services/store/gpbl/bridges/c;->k()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p2, Lcom/unity3d/services/core/webview/b;->p:Lcom/unity3d/services/core/webview/b;

    iget-object v1, p0, Lcom/unity3d/services/store/listeners/e;->b:Lcom/unity3d/services/store/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/a;->i()Lcom/unity3d/services/store/gpbl/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object p2, Lcom/unity3d/services/core/webview/b;->p:Lcom/unity3d/services/core/webview/b;

    iget-object v1, p0, Lcom/unity3d/services/store/listeners/e;->c:Lcom/unity3d/services/store/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
