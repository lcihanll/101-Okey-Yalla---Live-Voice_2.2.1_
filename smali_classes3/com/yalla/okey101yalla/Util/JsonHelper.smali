.class public Lcom/yalla/okey101yalla/Util/JsonHelper;
.super Ljava/lang/Object;
.source "JsonHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JsonDemo_GetIntger()I
    .locals 3

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/yalla/okey101yalla/Util/JsonHelper$1;

    invoke-direct {v1}, Lcom/yalla/okey101yalla/Util/JsonHelper$1;-><init>()V

    invoke-virtual {v1}, Lcom/yalla/okey101yalla/Util/JsonHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "{\"access_token\":12313123,\"sign\":\"1222zgz\"}"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalla/okey101yalla/Util/JsonTest;

    const/4 v0, 0x0

    return v0
.end method

.method public static JsonDemo_GetString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/yalla/okey101yalla/Util/JsonHelper$2;

    invoke-direct {v1}, Lcom/yalla/okey101yalla/Util/JsonHelper$2;-><init>()V

    invoke-virtual {v1}, Lcom/yalla/okey101yalla/Util/JsonHelper$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "{\"access_token\":12313123,\"sign\":\"1222zgz\"}"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalla/okey101yalla/Util/JsonTest;

    iget-object v0, v0, Lcom/yalla/okey101yalla/Util/JsonTest;->sign:Ljava/lang/String;

    return-object v0
.end method
