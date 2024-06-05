.class public Lcom/unity3d/services/store/core/b;
.super Ljava/lang/Object;
.source "StoreLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/unity3d/services/store/gpbl/c;

.field private final c:Lcom/unity3d/services/store/listeners/e;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/unity3d/services/store/gpbl/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unity3d/services/store/gpbl/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/store/core/b;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/unity3d/services/store/core/b;->b:Lcom/unity3d/services/store/gpbl/c;

    new-instance p1, Lcom/unity3d/services/store/listeners/e;

    sget-object p2, Lcom/unity3d/services/store/b;->d:Lcom/unity3d/services/store/b;

    sget-object v0, Lcom/unity3d/services/store/b;->e:Lcom/unity3d/services/store/b;

    invoke-direct {p1, p2, v0}, Lcom/unity3d/services/store/listeners/e;-><init>(Lcom/unity3d/services/store/b;Lcom/unity3d/services/store/b;)V

    iput-object p1, p0, Lcom/unity3d/services/store/core/b;->c:Lcom/unity3d/services/store/listeners/e;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/unity3d/services/store/core/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/unity3d/services/store/core/b;->b:Lcom/unity3d/services/store/gpbl/c;

    iget-object v2, p0, Lcom/unity3d/services/store/core/b;->c:Lcom/unity3d/services/store/listeners/e;

    invoke-virtual {v1, v0, v2}, Lcom/unity3d/services/store/gpbl/c;->a(Ljava/lang/String;Lcom/unity3d/services/store/listeners/c;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t fetch purchases onActivityResumed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/log/a;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
