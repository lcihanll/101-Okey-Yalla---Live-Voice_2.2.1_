.class Lio/agora/rtc/audio/HuaweiHardwareEarback;
.super Ljava/lang/Object;
.source "HuaweiHardwareEarback.java"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiHardwareEarback"


# instance fields
.field clsAudioKitCallback:Ljava/lang/Class;

.field clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

.field clsHwAudioKit:Ljava/lang/Class;

.field private latency:I

.field private mClsInited:Z

.field private mContext:Landroid/content/Context;

.field private mEarbackEnabled:Z

.field private mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

.field private mHwAudioKit:Ljava/lang/Object;

.field private mInited:Z

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    iput-boolean v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    iput v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    iput v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iput-boolean v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>ctor"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lio/agora/rtc/audio/HuaweiHardwareEarback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    return p1
.end method

.method public static hasHwAudioKitClass()Z
    .locals 3

    const-string v0, "com.huawei.multimedia.audiokit.interfaces.HwAudioKit"

    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.IAudioKitCallback"

    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit"

    invoke-static {v2}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 6

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>destroy"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v1, "destroy"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v4, v5}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v4, v2}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public declared-synchronized enableEarbackFeature(Z)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "HuaweiHardwareEarback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>enableEarbackFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v2, "isKaraokeFeatureSupport"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4, v5}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "karaoke not supported"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v2, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v4, "enableKaraokeFeature"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v0, v2, v4, v6, v5}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "HuaweiHardwareEarback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableKaraokeFeature failed ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v1, "getKaraokeLatency"

    new-array v2, v3, [Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2, v4}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    :cond_6
    const-string p1, "HuaweiHardwareEarback"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit p0

    return v3

    :cond_8
    :goto_0
    monitor-exit p0

    return v1

    :cond_9
    :goto_1
    monitor-exit p0

    return v1

    :cond_a
    :goto_2
    const/4 p1, -0x7

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>finalize"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public initialize()V
    .locals 10

    const-string v0, "create HwAudioKit initialize failed"

    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    const-string v2, "HuaweiHardwareEarback"

    if-nez v1, :cond_0

    const-string v0, "mContext is null!"

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, ">>initialize"

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.HwAudioKit"

    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.IAudioKitCallback"

    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit"

    invoke-static {v1}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    if-eqz v3, :cond_a

    iget-object v4, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    if-eqz v4, :cond_a

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    iget-object v5, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;

    invoke-direct {v5, p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;-><init>(Lio/agora/rtc/audio/HuaweiHardwareEarback;)V

    invoke-static {v1, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v6

    iget-object v9, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsAudioKitCallback:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v7, v5

    :goto_0
    if-nez v7, :cond_2

    const-string v0, "find HwAudioKit constructor failed"

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    aput-object v8, v4, v6

    aput-object v1, v4, v3

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v0, "create HwAudioKit failed"

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_2
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    const-string v4, "initialize"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_4
    const-string v0, "com.huawei.multimedia.audiokit.interfaces.HwAudioKit$FeatureType"

    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "cannot find class  HwAudioKit$FeatureType initialize failed"

    if-nez v0, :cond_5

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v6

    goto :goto_2

    :cond_6
    move-object v4, v5

    :goto_2
    if-nez v4, :cond_7

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :try_start_3
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKit:Ljava/lang/Class;

    const-string v7, "createFeature"

    new-array v8, v3, [Ljava/lang/Class;

    aput-object v0, v8, v6

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_3
    if-nez v5, :cond_8

    const-string v0, "cannot find method createFeature "

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :try_start_4
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v6

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_4
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    if-nez v0, :cond_9

    const-string v0, " createFeature failed"

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iput-boolean v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    return-void

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 7

    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "HuaweiHardwareEarback"

    const-string v2, ">>isHardwareEarbackSupported"

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v4, "isKaraokeFeatureSupport"

    new-array v5, v1, [Ljava/lang/Class;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5, v6}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v1
.end method

.method public declared-synchronized setHardwareEarbackVolume(I)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vol"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mClsInited:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "HuaweiHardwareEarback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>setHardwareEarbackVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    const/16 p1, 0x64

    :cond_2
    :goto_0
    const-string v0, "com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit$ParameName"

    invoke-static {v0}, Lio/agora/rtc/audio/ReflectUtils;->safeFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "cannot find method  ParameName.getParameName"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    :try_start_1
    const-string v3, "getParameName"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lio/agora/rtc/audio/ReflectUtils;->safeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_4

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "cannot find method  ParameName.getParameName"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    check-cast v9, Ljava/lang/String;

    const-string v10, "Karaoke_volume="

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_5

    move-object v4, v8

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_6
    :goto_2
    if-nez v4, :cond_7

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "cannot find object  ParameName.CMD_SET_VOCAL_VOLUME_BASE"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :cond_7
    :try_start_4
    iget-object v3, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->clsHwAudioKaraokeFeatureKit:Ljava/lang/Class;

    iget-object v5, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const-string v6, "setParameter"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v0, v8, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v0, v8, v9

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-static {v3, v5, v6, v8, v0}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    :goto_3
    if-eqz v0, :cond_8

    const-string p1, "HuaweiHardwareEarback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameter error number "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2

    :cond_8
    :try_start_6
    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v1

    :cond_9
    :goto_4
    const/4 p1, -0x7

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
