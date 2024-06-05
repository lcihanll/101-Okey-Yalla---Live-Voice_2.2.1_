.class public Lcom/unity3d/services/store/gpbl/bridges/e;
.super Lcom/unity3d/services/core/reflection/a;
.source "PurchasesResultBridge.java"


# instance fields
.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/e$a;

    invoke-direct {v0}, Lcom/unity3d/services/store/gpbl/bridges/e$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/reflection/a;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/e;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.billingclient.api.Purchase$PurchasesResult"

    return-object v0
.end method

.method public i()Lcom/unity3d/services/store/gpbl/bridges/a;
    .locals 4

    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/a;

    iget-object v1, p0, Lcom/unity3d/services/store/gpbl/bridges/e;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getBillingResult"

    invoke-virtual {p0, v3, v1, v2}, Lcom/unity3d/services/core/reflection/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unity3d/services/store/gpbl/bridges/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/e;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getPurchasesList"

    invoke-virtual {p0, v2, v0, v1}, Lcom/unity3d/services/core/reflection/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/unity3d/services/store/gpbl/bridges/c;

    invoke-direct {v3, v2}, Lcom/unity3d/services/store/gpbl/bridges/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
