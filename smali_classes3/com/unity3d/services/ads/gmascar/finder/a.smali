.class public Lcom/unity3d/services/ads/gmascar/finder/a;
.super Ljava/lang/Object;
.source "GMAInitializer.java"


# instance fields
.field private a:Lcom/unity3d/services/ads/gmascar/bridges/e;

.field private b:Lcom/unity3d/services/ads/gmascar/bridges/d;

.field private c:Lcom/unity3d/services/ads/gmascar/bridges/c;

.field private d:Lcom/unity3d/services/ads/gmascar/bridges/a;

.field private e:Lcom/unity3d/services/ads/gmascar/utils/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/gmascar/bridges/e;Lcom/unity3d/services/ads/gmascar/bridges/d;Lcom/unity3d/services/ads/gmascar/bridges/c;Lcom/unity3d/services/ads/gmascar/bridges/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->a:Lcom/unity3d/services/ads/gmascar/bridges/e;

    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->b:Lcom/unity3d/services/ads/gmascar/bridges/d;

    iput-object p3, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->c:Lcom/unity3d/services/ads/gmascar/bridges/c;

    iput-object p4, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->d:Lcom/unity3d/services/ads/gmascar/bridges/a;

    new-instance p1, Lcom/unity3d/services/ads/gmascar/utils/a;

    invoke-direct {p1}, Lcom/unity3d/services/ads/gmascar/utils/a;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->e:Lcom/unity3d/services/ads/gmascar/utils/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/unity3d/services/ads/gmascar/bridges/d;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->b:Lcom/unity3d/services/ads/gmascar/bridges/d;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->c:Lcom/unity3d/services/ads/gmascar/bridges/c;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/ads/gmascar/bridges/c;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->a:Lcom/unity3d/services/ads/gmascar/bridges/e;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/bridges/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->d:Lcom/unity3d/services/ads/gmascar/bridges/a;

    invoke-virtual {v1, p1}, Lcom/unity3d/services/ads/gmascar/bridges/a;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v1, Lcom/unity3d/services/core/webview/b;->t:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->INIT_SUCCESS:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v0}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v1, Lcom/unity3d/services/core/webview/b;->t:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->INIT_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_1
    return v0
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/finder/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->e:Lcom/unity3d/services/ads/gmascar/utils/a;

    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->ALREADY_INITIALIZED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/ads/gmascar/utils/a;->a(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->a:Lcom/unity3d/services/ads/gmascar/bridges/e;

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->b:Lcom/unity3d/services/ads/gmascar/bridges/d;

    invoke-virtual {v2}, Lcom/unity3d/services/ads/gmascar/bridges/d;->i()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/ads/gmascar/bridges/e;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/finder/a;->a:Lcom/unity3d/services/ads/gmascar/bridges/e;

    invoke-virtual {v1}, Lcom/unity3d/services/ads/gmascar/bridges/e;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/services/ads/gmascar/finder/a;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "ERROR: Could not get initialization status of GMA SDK - %s"

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0
.end method
