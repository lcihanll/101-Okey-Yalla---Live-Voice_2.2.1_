.class public Lcom/unity3d/services/store/gpbl/proxies/d;
.super Lcom/unity3d/services/core/reflection/b;
.source "PurchasesResponseListenerProxy.java"


# instance fields
.field private a:Lcom/unity3d/services/store/listeners/c;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/store/listeners/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/b;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/proxies/d;->a:Lcom/unity3d/services/store/listeners/c;

    return-void
.end method

.method public static c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "com.android.billingclient.api.PurchasesResponseListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/unity3d/services/store/gpbl/proxies/d;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/a;

    invoke-direct {v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/a;-><init>(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/unity3d/services/store/gpbl/bridges/c;

    invoke-direct {v2, v1}, Lcom/unity3d/services/store/gpbl/bridges/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object p2, p0, Lcom/unity3d/services/store/gpbl/proxies/d;->a:Lcom/unity3d/services/store/listeners/c;

    if-eqz p2, :cond_2

    invoke-interface {p2, v0, p1}, Lcom/unity3d/services/store/listeners/c;->a(Lcom/unity3d/services/store/gpbl/bridges/a;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public d()Lcom/unity3d/services/store/listeners/c;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/proxies/d;->a:Lcom/unity3d/services/store/listeners/c;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onQueryPurchasesResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/store/gpbl/proxies/d;->a(Ljava/lang/Object;Ljava/util/List;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/services/core/reflection/b;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
