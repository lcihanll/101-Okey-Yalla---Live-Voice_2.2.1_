.class public Lcom/unity3d/services/core/lifecycle/c;
.super Ljava/lang/Object;
.source "LifecycleCache.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lcom/unity3d/services/core/lifecycle/e;

.field private b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity3d/services/core/lifecycle/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/services/core/lifecycle/e;->c:Lcom/unity3d/services/core/lifecycle/e;

    iput-object v0, p0, Lcom/unity3d/services/core/lifecycle/c;->a:Lcom/unity3d/services/core/lifecycle/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/c;->b:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/core/lifecycle/c;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/unity3d/services/core/lifecycle/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/c;->b:Z

    return v0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/c;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/services/core/lifecycle/e;->c:Lcom/unity3d/services/core/lifecycle/e;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/lifecycle/e;->d:Lcom/unity3d/services/core/lifecycle/e;

    :goto_0
    iget-object v1, p0, Lcom/unity3d/services/core/lifecycle/c;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/services/core/lifecycle/b;

    invoke-interface {v2, v0}, Lcom/unity3d/services/core/lifecycle/b;->a(Lcom/unity3d/services/core/lifecycle/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/unity3d/services/core/lifecycle/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/c;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p1, Lcom/unity3d/services/core/lifecycle/e;->a:Lcom/unity3d/services/core/lifecycle/e;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/c;->a:Lcom/unity3d/services/core/lifecycle/e;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    sget-object p1, Lcom/unity3d/services/core/lifecycle/e;->g:Lcom/unity3d/services/core/lifecycle/e;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/c;->a:Lcom/unity3d/services/core/lifecycle/e;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    sget-object p1, Lcom/unity3d/services/core/lifecycle/e;->d:Lcom/unity3d/services/core/lifecycle/e;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/c;->a:Lcom/unity3d/services/core/lifecycle/e;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/c;->b:Z

    invoke-virtual {p0}, Lcom/unity3d/services/core/lifecycle/c;->b()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    sget-object p1, Lcom/unity3d/services/core/lifecycle/e;->c:Lcom/unity3d/services/core/lifecycle/e;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/c;->a:Lcom/unity3d/services/core/lifecycle/e;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/c;->b:Z

    invoke-virtual {p0}, Lcom/unity3d/services/core/lifecycle/c;->b()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p1, Lcom/unity3d/services/core/lifecycle/e;->f:Lcom/unity3d/services/core/lifecycle/e;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/c;->a:Lcom/unity3d/services/core/lifecycle/e;

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    sget-object p1, Lcom/unity3d/services/core/lifecycle/e;->b:Lcom/unity3d/services/core/lifecycle/e;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/c;->a:Lcom/unity3d/services/core/lifecycle/e;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    sget-object p1, Lcom/unity3d/services/core/lifecycle/e;->e:Lcom/unity3d/services/core/lifecycle/e;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/c;->a:Lcom/unity3d/services/core/lifecycle/e;

    return-void
.end method
