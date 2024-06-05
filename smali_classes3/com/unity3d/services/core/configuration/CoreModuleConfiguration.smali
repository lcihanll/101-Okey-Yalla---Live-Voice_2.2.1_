.class public Lcom/unity3d/services/core/configuration/CoreModuleConfiguration;
.super Ljava/lang/Object;
.source "CoreModuleConfiguration.java"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IModuleConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/unity3d/services/core/api/Broadcast;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/unity3d/services/core/api/Cache;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/unity3d/services/core/api/Connectivity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/unity3d/services/core/api/DeviceInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/unity3d/services/core/api/ClassDetection;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/unity3d/services/core/api/Storage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/unity3d/services/core/api/Sdk;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/unity3d/services/core/api/Request;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/unity3d/services/core/api/Resolve;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/unity3d/services/core/api/Intent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/unity3d/services/core/api/Lifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/unity3d/services/core/api/Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/unity3d/services/core/api/SensorInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/unity3d/services/core/api/Permissions;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public initCompleteState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 0

    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/i;->b(Lcom/unity3d/services/core/configuration/Configuration;)V

    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->triggerOnSdkInitialized()V

    new-instance p1, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$b;

    invoke-direct {p1, p0}, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$b;-><init>(Lcom/unity3d/services/core/configuration/CoreModuleConfiguration;)V

    invoke-static {p1}, Lcom/unity3d/services/core/misc/j;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public initErrorState(Lcom/unity3d/services/core/configuration/Configuration;Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/i;->b(Lcom/unity3d/services/core/configuration/Configuration;)V

    sget-object p1, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    const-string p3, "Unity Ads failed to initialize due to internal error"

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p2, v2}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->triggerOnSdkInitializationFailed(Ljava/lang/String;Lcom/unity3d/services/core/configuration/ErrorState;I)V

    new-instance p2, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$a;

    invoke-direct {p2, p0, p1, p3}, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$a;-><init>(Lcom/unity3d/services/core/configuration/CoreModuleConfiguration;Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/unity3d/services/core/misc/j;->a(Ljava/lang/Runnable;)V

    return v0
.end method

.method public initModuleState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 0

    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/i;->b(Lcom/unity3d/services/core/configuration/Configuration;)V

    const/4 p1, 0x1

    return p1
.end method

.method public resetState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 0

    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/i;->b(Lcom/unity3d/services/core/configuration/Configuration;)V

    invoke-static {}, Lcom/unity3d/services/core/broadcast/d;->a()V

    invoke-static {}, Lcom/unity3d/services/core/cache/e;->a()V

    invoke-static {}, Lcom/unity3d/services/core/request/l;->b()V

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->f()V

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/device/i;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/device/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/device/e;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/unity3d/services/core/device/k;->b()V

    const/4 p1, 0x1

    return p1
.end method
