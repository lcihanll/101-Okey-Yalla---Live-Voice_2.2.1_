.class public Lcom/unity3d/services/store/gpbl/proxies/b;
.super Lcom/unity3d/services/core/reflection/b;
.source "PurchaseHistoryResponseListenerProxy.java"


# instance fields
.field private a:Lcom/unity3d/services/store/listeners/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/unity3d/services/store/listeners/a;I)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/services/core/reflection/b;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/proxies/b;->a:Lcom/unity3d/services/store/listeners/a;

    iput p2, p0, Lcom/unity3d/services/store/gpbl/proxies/b;->b:I

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

    const-string v0, "com.android.billingclient.api.PurchaseHistoryResponseListener"

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

    invoke-static {}, Lcom/unity3d/services/store/gpbl/proxies/b;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/unity3d/services/store/gpbl/proxies/b;->b:I

    if-ge v1, v2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/unity3d/services/store/gpbl/bridges/d;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/unity3d/services/store/gpbl/bridges/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object p2, p0, Lcom/unity3d/services/store/gpbl/proxies/b;->a:Lcom/unity3d/services/store/listeners/a;

    if-eqz p2, :cond_2

    new-instance v1, Lcom/unity3d/services/store/gpbl/bridges/a;

    invoke-direct {v1, p1}, Lcom/unity3d/services/store/gpbl/bridges/a;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v1, v0}, Lcom/unity3d/services/store/listeners/a;->a(Lcom/unity3d/services/store/gpbl/bridges/a;Ljava/util/List;)V

    :cond_2
    return-void
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

    const-string v1, "onPurchaseHistoryResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/store/gpbl/proxies/b;->a(Ljava/lang/Object;Ljava/util/List;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/services/core/reflection/b;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
