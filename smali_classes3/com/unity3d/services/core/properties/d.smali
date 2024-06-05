.class public Lcom/unity3d/services/core/properties/d;
.super Ljava/lang/Object;
.source "SdkProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/properties/d$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/unity3d/services/core/cache/a;

.field private static c:J

.field private static d:J

.field private static e:Lcom/unity3d/services/core/configuration/Configuration;

.field private static final f:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/unity3d/ads/IUnityAdsInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/unity3d/services/core/properties/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/properties/d;->f:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/services/core/properties/d;->g:Z

    sput-boolean v0, Lcom/unity3d/services/core/properties/d;->h:Z

    sput-boolean v0, Lcom/unity3d/services/core/properties/d;->i:Z

    sput-boolean v0, Lcom/unity3d/services/core/properties/d;->j:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/unity3d/services/core/properties/d$a;->a:Lcom/unity3d/services/core/properties/d$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/services/core/properties/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/properties/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    sget-object v0, Lcom/unity3d/services/core/properties/d;->b:Lcom/unity3d/services/core/cache/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/core/cache/a;

    const-string v1, "UnityAdsCache"

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/cache/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/properties/d;->a(Lcom/unity3d/services/core/cache/a;)V

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/properties/d;->b:Lcom/unity3d/services/core/cache/a;

    invoke-virtual {v0, p0}, Lcom/unity3d/services/core/cache/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/unity3d/services/core/device/b;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/properties/d;->b(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/core/properties/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".unityads.unity3d.com/webview/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/properties/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".unityads.unitychina.cn/webview/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/config.json"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lcom/unity3d/services/core/properties/d;->c:J

    return-void
.end method

.method public static a(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/properties/d;->f:Ljava/util/LinkedHashSet;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/unity3d/services/core/properties/d$a;->d:Lcom/unity3d/services/core/properties/d$a;

    invoke-static {v0}, Lcom/unity3d/services/core/properties/d;->a(Lcom/unity3d/services/core/properties/d$a;)V

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->g()[Lcom/unity3d/ads/IUnityAdsInitializationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/properties/d;->u()V

    return-void
.end method

.method public static a(Lcom/unity3d/services/core/cache/a;)V
    .locals 0

    sput-object p0, Lcom/unity3d/services/core/properties/d;->b:Lcom/unity3d/services/core/cache/a;

    return-void
.end method

.method public static a(Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 0

    sput-object p0, Lcom/unity3d/services/core/properties/d;->e:Lcom/unity3d/services/core/configuration/Configuration;

    return-void
.end method

.method public static a(Lcom/unity3d/services/core/properties/d$a;)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/properties/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/unity3d/services/core/properties/d;->j:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    invoke-static {p0}, Lcom/unity3d/services/core/log/a;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/unity3d/services/core/log/a;->a(I)V

    :goto_0
    return-void
.end method

.method public static b()Lcom/unity3d/services/core/cache/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/properties/d;->b:Lcom/unity3d/services/core/cache/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "configv2"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "com.unity3d.ads.configversion"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to retrieve application info for current package"

    invoke-static {p0}, Lcom/unity3d/services/core/log/a;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static b(J)V
    .locals 0

    sput-wide p0, Lcom/unity3d/services/core/properties/d;->d:J

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/unity3d/services/core/properties/d;->g:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "UnityAdsCache-"

    return-object v0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/unity3d/services/core/properties/d;->h:Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/properties/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "release"

    invoke-static {v0}, Lcom/unity3d/services/core/properties/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/properties/d;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/properties/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/unity3d/services/core/properties/d;->i:Z

    return-void
.end method

.method public static e()Lcom/unity3d/services/core/properties/d$a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/properties/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/properties/d$a;

    return-object v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/services/core/properties/d;->j:Z

    return v0
.end method

.method public static g()[Lcom/unity3d/ads/IUnityAdsInitializationListener;
    .locals 2

    sget-object v0, Lcom/unity3d/services/core/properties/d;->f:Ljava/util/LinkedHashSet;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/unity3d/ads/IUnityAdsInitializationListener;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static h()J
    .locals 2

    sget-wide v0, Lcom/unity3d/services/core/properties/d;->c:J

    return-wide v0
.end method

.method public static i()J
    .locals 2

    sget-wide v0, Lcom/unity3d/services/core/properties/d;->d:J

    return-wide v0
.end method

.method public static j()Lcom/unity3d/services/core/configuration/Configuration;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/properties/d;->e:Lcom/unity3d/services/core/configuration/Configuration;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/UnityAdsWebViewConfiguration.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    const-string v0, "UnityAdsStorage-"

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/UnityAdsWebApp.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()I
    .locals 1

    const/16 v0, 0x10cc

    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    const-string v0, "4.3.0"

    return-object v0
.end method

.method private static p()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/services/core/properties/d;->g:Z

    return v0
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/services/core/properties/d;->h:Z

    return v0
.end method

.method public static s()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/services/core/properties/d;->i:Z

    return v0
.end method

.method public static t()V
    .locals 4

    sget-object v0, Lcom/unity3d/services/core/properties/d$a;->c:Lcom/unity3d/services/core/properties/d$a;

    invoke-static {v0}, Lcom/unity3d/services/core/properties/d;->a(Lcom/unity3d/services/core/properties/d$a;)V

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->g()[Lcom/unity3d/ads/IUnityAdsInitializationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/properties/d;->u()V

    return-void
.end method

.method public static u()V
    .locals 2

    sget-object v0, Lcom/unity3d/services/core/properties/d;->f:Ljava/util/LinkedHashSet;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
