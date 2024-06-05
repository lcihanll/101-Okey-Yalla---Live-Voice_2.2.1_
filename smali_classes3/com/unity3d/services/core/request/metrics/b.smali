.class public Lcom/unity3d/services/core/request/metrics/b;
.super Ljava/lang/Object;
.source "AdOperationMetric.java"


# direct methods
.method private static a(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;)Lcom/unity3d/services/core/request/metrics/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/request/metrics/b$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->e:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :cond_1
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->d:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :cond_2
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->c:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->b:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :cond_4
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->a:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0
.end method

.method private static a(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;)Lcom/unity3d/services/core/request/metrics/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/request/metrics/b$b;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->b:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->i:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->h:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->c:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->g:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->f:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/unity3d/services/core/request/metrics/a;->a:Lcom/unity3d/services/core/request/metrics/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lcom/unity3d/services/core/request/metrics/d;
    .locals 3

    new-instance v0, Lcom/unity3d/services/core/request/metrics/d;

    const-string v1, "native_load_started"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/services/core/request/metrics/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;)Lcom/unity3d/services/core/request/metrics/a;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/services/core/request/metrics/a;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;)Lcom/unity3d/services/core/request/metrics/a;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/unity3d/services/core/request/metrics/b;->b(Lcom/unity3d/services/core/request/metrics/a;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/unity3d/services/core/request/metrics/a;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;
    .locals 2

    new-instance v0, Lcom/unity3d/services/core/request/metrics/d;

    invoke-static {p0}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/services/core/request/metrics/a;)Ljava/util/HashMap;

    move-result-object p0

    const-string v1, "native_load_time_failure"

    invoke-direct {v0, v1, p1, p0}, Lcom/unity3d/services/core/request/metrics/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;
    .locals 3

    new-instance v0, Lcom/unity3d/services/core/request/metrics/d;

    const-string v1, "native_load_time_success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/services/core/request/metrics/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method private static a(Lcom/unity3d/services/core/request/metrics/a;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/request/metrics/a;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Lcom/unity3d/services/core/request/metrics/b$a;

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/request/metrics/b$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcom/unity3d/services/core/request/metrics/d;
    .locals 3

    new-instance v0, Lcom/unity3d/services/core/request/metrics/d;

    const-string v1, "native_show_started"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/services/core/request/metrics/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method public static b(Lcom/unity3d/services/core/request/metrics/a;Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;
    .locals 2

    new-instance v0, Lcom/unity3d/services/core/request/metrics/d;

    invoke-static {p0}, Lcom/unity3d/services/core/request/metrics/b;->a(Lcom/unity3d/services/core/request/metrics/a;)Ljava/util/HashMap;

    move-result-object p0

    const-string v1, "native_show_time_failure"

    invoke-direct {v0, v1, p1, p0}, Lcom/unity3d/services/core/request/metrics/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Long;)Lcom/unity3d/services/core/request/metrics/d;
    .locals 3

    new-instance v0, Lcom/unity3d/services/core/request/metrics/d;

    const-string v1, "native_show_time_success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/unity3d/services/core/request/metrics/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method
