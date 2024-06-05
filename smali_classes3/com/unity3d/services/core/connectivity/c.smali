.class public Lcom/unity3d/services/core/connectivity/c;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"


# static fields
.field private static a:I = -0x1

.field private static b:Z = false

.field private static c:Z = false

.field private static d:Z = false

.field private static e:I = -0x1

.field private static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity3d/services/core/connectivity/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 3

    sget v0, Lcom/unity3d/services/core/connectivity/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Unity Ads connectivity change: connected"

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->d()V

    sget-object v0, Lcom/unity3d/services/core/connectivity/c;->f:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/core/connectivity/e;

    invoke-interface {v1}, Lcom/unity3d/services/core/connectivity/e;->onConnected()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/unity3d/services/core/connectivity/b;->a:Lcom/unity3d/services/core/connectivity/b;

    sget-boolean v1, Lcom/unity3d/services/core/connectivity/c;->d:Z

    sget v2, Lcom/unity3d/services/core/connectivity/c;->e:I

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/core/connectivity/c;->a(Lcom/unity3d/services/core/connectivity/b;ZI)V

    return-void
.end method

.method private static a(Lcom/unity3d/services/core/connectivity/b;ZI)V
    .locals 5

    sget-boolean v0, Lcom/unity3d/services/core/connectivity/c;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/a;->i()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/unity3d/services/core/connectivity/c$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    const/4 v4, 0x3

    if-eq p0, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p0, Lcom/unity3d/services/core/webview/b;->g:Lcom/unity3d/services/core/webview/b;

    sget-object p2, Lcom/unity3d/services/core/connectivity/b;->c:Lcom/unity3d/services/core/connectivity/b;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, p2, v1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/unity3d/services/core/webview/b;->g:Lcom/unity3d/services/core/webview/b;

    sget-object v4, Lcom/unity3d/services/core/connectivity/b;->c:Lcom/unity3d/services/core/connectivity/b;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v4, v1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/unity3d/services/core/webview/b;->g:Lcom/unity3d/services/core/webview/b;

    sget-object p1, Lcom/unity3d/services/core/connectivity/b;->b:Lcom/unity3d/services/core/connectivity/b;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    sget-object p0, Lcom/unity3d/services/core/webview/b;->g:Lcom/unity3d/services/core/webview/b;

    sget-object p2, Lcom/unity3d/services/core/connectivity/b;->a:Lcom/unity3d/services/core/connectivity/b;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, p2, v1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/unity3d/services/core/webview/b;->g:Lcom/unity3d/services/core/webview/b;

    sget-object v4, Lcom/unity3d/services/core/connectivity/b;->a:Lcom/unity3d/services/core/connectivity/b;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v4, v1}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public static a(Lcom/unity3d/services/core/connectivity/e;)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/connectivity/c;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/connectivity/c;->f:Ljava/util/Set;

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/connectivity/c;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->h()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/unity3d/services/core/connectivity/c;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->h()V

    return-void
.end method

.method public static b()V
    .locals 4

    sget v0, Lcom/unity3d/services/core/connectivity/c;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "Unity Ads was not able to get current network type due to missing permission"

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->e(Ljava/lang/String;)V

    :goto_1
    sget-boolean v0, Lcom/unity3d/services/core/connectivity/c;->d:Z

    if-ne v1, v0, :cond_3

    sget v3, Lcom/unity3d/services/core/connectivity/c;->e:I

    if-eq v2, v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    sput-boolean v1, Lcom/unity3d/services/core/connectivity/c;->d:Z

    sput v2, Lcom/unity3d/services/core/connectivity/c;->e:I

    const-string v0, "Unity Ads connectivity change: network change"

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/services/core/connectivity/b;->c:Lcom/unity3d/services/core/connectivity/b;

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/core/connectivity/c;->a(Lcom/unity3d/services/core/connectivity/b;ZI)V

    :cond_4
    return-void
.end method

.method public static b(Lcom/unity3d/services/core/connectivity/e;)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/connectivity/c;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->h()V

    return-void
.end method

.method public static c()V
    .locals 3

    sget v0, Lcom/unity3d/services/core/connectivity/c;->a:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/unity3d/services/core/connectivity/c;->a:I

    const-string v1, "Unity Ads connectivity change: disconnected"

    invoke-static {v1}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/unity3d/services/core/connectivity/c;->f:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/core/connectivity/e;

    invoke-interface {v2}, Lcom/unity3d/services/core/connectivity/e;->onDisconnected()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/unity3d/services/core/connectivity/b;->b:Lcom/unity3d/services/core/connectivity/b;

    invoke-static {v1, v0, v0}, Lcom/unity3d/services/core/connectivity/c;->a(Lcom/unity3d/services/core/connectivity/b;ZI)V

    return-void
.end method

.method private static d()V
    .locals 3

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    sput v2, Lcom/unity3d/services/core/connectivity/c;->a:I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/unity3d/services/core/connectivity/c;->d:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    sput v0, Lcom/unity3d/services/core/connectivity/c;->e:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Unity Ads was not able to get current network type due to missing permission"

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sput v1, Lcom/unity3d/services/core/connectivity/c;->a:I

    :cond_3
    :goto_0
    return-void
.end method

.method private static e()V
    .locals 2

    sget-boolean v0, Lcom/unity3d/services/core/connectivity/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/services/core/connectivity/c;->b:Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->d()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/connectivity/a;->a()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/unity3d/services/core/connectivity/d;->a()V

    :goto_0
    return-void
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/core/connectivity/c;->f:Ljava/util/Set;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/services/core/connectivity/c;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->h()V

    return-void
.end method

.method private static g()V
    .locals 2

    sget-boolean v0, Lcom/unity3d/services/core/connectivity/c;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/services/core/connectivity/c;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/unity3d/services/core/connectivity/a;->b()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/unity3d/services/core/connectivity/d;->b()V

    :goto_0
    return-void
.end method

.method private static h()V
    .locals 1

    sget-boolean v0, Lcom/unity3d/services/core/connectivity/c;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/unity3d/services/core/connectivity/c;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->g()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/connectivity/c;->e()V

    :goto_1
    return-void
.end method
