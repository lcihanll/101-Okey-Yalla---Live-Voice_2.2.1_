.class public Lcom/unity3d/services/store/gpbl/bridges/c;
.super Lcom/unity3d/services/store/gpbl/bridges/b;
.source "PurchaseBridge.java"


# instance fields
.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/c$a;

    invoke-direct {v0}, Lcom/unity3d/services/store/gpbl/bridges/c$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/unity3d/services/store/gpbl/bridges/b;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.billingclient.api.Purchase"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/c;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSignature"

    invoke-virtual {p0, v2, v0, v1}, Lcom/unity3d/services/core/reflection/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public k()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "purchaseData"

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/services/store/gpbl/bridges/b;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "signature"

    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/services/store/gpbl/bridges/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Could not build Purchase result Json: "

    invoke-static {v1, v2}, Lcom/unity3d/services/core/log/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
