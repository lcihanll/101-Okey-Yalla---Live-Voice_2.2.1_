.class public Lcom/unity3d/services/core/device/i;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/device/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/unity3d/services/core/device/i$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/services/core/device/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/device/i;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/device/i;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/unity3d/services/core/device/i$a;)Lcom/unity3d/services/core/device/f;
    .locals 4

    sget-object v0, Lcom/unity3d/services/core/device/i;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/core/device/f;

    invoke-virtual {v2}, Lcom/unity3d/services/core/device/f;->b()Lcom/unity3d/services/core/device/i$a;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/unity3d/services/core/device/i$a;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/unity3d/services/core/device/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/device/i;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object v1, Lcom/unity3d/services/core/device/i$a;->b:Lcom/unity3d/services/core/device/i$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "public-data.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unity3d/services/core/device/i;->a(Lcom/unity3d/services/core/device/i$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/services/core/device/i;->d(Lcom/unity3d/services/core/device/i$a;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    sget-object v1, Lcom/unity3d/services/core/device/i$a;->a:Lcom/unity3d/services/core/device/i$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/d;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "private-data.json"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/unity3d/services/core/device/i;->a(Lcom/unity3d/services/core/device/i$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/unity3d/services/core/device/i;->d(Lcom/unity3d/services/core/device/i$a;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/unity3d/services/core/device/i$a;)Z
    .locals 3

    sget-object v0, Lcom/unity3d/services/core/device/i;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/core/device/f;

    invoke-virtual {v2}, Lcom/unity3d/services/core/device/f;->b()Lcom/unity3d/services/core/device/i$a;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/unity3d/services/core/device/i$a;)V
    .locals 2

    invoke-static {p0}, Lcom/unity3d/services/core/device/i;->b(Lcom/unity3d/services/core/device/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unity3d/services/core/device/i;->a(Lcom/unity3d/services/core/device/i$a;)Lcom/unity3d/services/core/device/f;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/services/core/device/f;->c()Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/device/i;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/unity3d/services/core/device/f;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Lcom/unity3d/services/core/device/f;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/device/i$a;)V

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/f;->c()Z

    sget-object p0, Lcom/unity3d/services/core/device/i;->b:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Lcom/unity3d/services/core/device/i$a;)Z
    .locals 1

    invoke-static {p0}, Lcom/unity3d/services/core/device/i;->b(Lcom/unity3d/services/core/device/i$a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/unity3d/services/core/device/i;->c(Lcom/unity3d/services/core/device/i$a;)V

    invoke-static {p0}, Lcom/unity3d/services/core/device/i;->a(Lcom/unity3d/services/core/device/i$a;)Lcom/unity3d/services/core/device/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/services/core/device/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/services/core/device/f;->f()Z

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
