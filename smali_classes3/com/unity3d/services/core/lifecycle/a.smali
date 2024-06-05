.class public Lcom/unity3d/services/core/lifecycle/a;
.super Ljava/lang/Object;
.source "CachedLifecycle.java"


# static fields
.field private static a:Lcom/unity3d/services/core/lifecycle/c;


# direct methods
.method public static a()Lcom/unity3d/services/core/lifecycle/c;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/lifecycle/a;->a:Lcom/unity3d/services/core/lifecycle/c;

    return-object v0
.end method

.method public static a(Lcom/unity3d/services/core/lifecycle/c;)V
    .locals 0

    sput-object p0, Lcom/unity3d/services/core/lifecycle/a;->a:Lcom/unity3d/services/core/lifecycle/c;

    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->d()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/lifecycle/a;->a()Lcom/unity3d/services/core/lifecycle/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/core/lifecycle/c;

    invoke-direct {v0}, Lcom/unity3d/services/core/lifecycle/c;-><init>()V

    invoke-static {v0}, Lcom/unity3d/services/core/lifecycle/a;->a(Lcom/unity3d/services/core/lifecycle/c;)V

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/services/core/lifecycle/a;->a()Lcom/unity3d/services/core/lifecycle/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
