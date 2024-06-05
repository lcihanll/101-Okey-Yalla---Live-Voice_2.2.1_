.class public Lcom/unity3d/services/store/c;
.super Ljava/lang/Object;
.source "StoreMonitor.java"


# static fields
.field private static a:Lcom/unity3d/services/store/gpbl/c;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/unity3d/services/store/core/a;

.field private static d:Lcom/unity3d/services/store/core/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/unity3d/services/store/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/unity3d/services/store/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/unity3d/services/store/c;->a:Lcom/unity3d/services/store/gpbl/c;

    new-instance v1, Lcom/unity3d/services/store/listeners/e;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/store/b;->h:Lcom/unity3d/services/store/b;

    sget-object v4, Lcom/unity3d/services/store/b;->i:Lcom/unity3d/services/store/b;

    invoke-direct {v1, v2, v3, v4}, Lcom/unity3d/services/store/listeners/e;-><init>(Ljava/lang/Integer;Lcom/unity3d/services/store/b;Lcom/unity3d/services/store/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/services/store/gpbl/c;->a(Ljava/lang/String;Lcom/unity3d/services/store/listeners/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/unity3d/services/store/c;->c:Lcom/unity3d/services/store/core/a;

    sget-object v1, Lcom/unity3d/services/store/b;->i:Lcom/unity3d/services/store/b;

    invoke-virtual {v0, v1, p0, p1}, Lcom/unity3d/services/store/core/a;->a(Lcom/unity3d/services/store/b;ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static a(ILjava/lang/String;I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/unity3d/services/store/c;->a:Lcom/unity3d/services/store/gpbl/c;

    new-instance v1, Lcom/unity3d/services/store/c$c;

    invoke-direct {v1, p0}, Lcom/unity3d/services/store/c$c;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/unity3d/services/store/gpbl/c;->a(Ljava/lang/String;ILcom/unity3d/services/store/listeners/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/unity3d/services/store/c;->c:Lcom/unity3d/services/store/core/a;

    sget-object v0, Lcom/unity3d/services/store/b;->k:Lcom/unity3d/services/store/b;

    invoke-virtual {p2, v0, p0, p1}, Lcom/unity3d/services/store/core/a;->a(Lcom/unity3d/services/store/b;ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/unity3d/services/store/c;->a:Lcom/unity3d/services/store/gpbl/c;

    new-instance v1, Lcom/unity3d/services/store/c$d;

    invoke-direct {v1, p0}, Lcom/unity3d/services/store/c$d;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/unity3d/services/store/gpbl/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/unity3d/services/store/listeners/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/unity3d/services/store/c;->c:Lcom/unity3d/services/store/core/a;

    sget-object v0, Lcom/unity3d/services/store/b;->m:Lcom/unity3d/services/store/b;

    invoke-virtual {p2, v0, p0, p1}, Lcom/unity3d/services/store/core/a;->a(Lcom/unity3d/services/store/b;ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/unity3d/services/store/core/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lcom/unity3d/services/store/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p0

    sget-object v0, Lcom/unity3d/services/core/webview/b;->p:Lcom/unity3d/services/core/webview/b;

    sget-object v1, Lcom/unity3d/services/store/b;->a:Lcom/unity3d/services/store/b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/services/store/gpbl/a;->d:Lcom/unity3d/services/store/gpbl/a;

    invoke-virtual {v3}, Lcom/unity3d/services/store/gpbl/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    sput-object p0, Lcom/unity3d/services/store/c;->c:Lcom/unity3d/services/store/core/a;

    new-instance p0, Lcom/unity3d/services/store/gpbl/c;

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->e()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/unity3d/services/store/c$a;

    invoke-direct {v1}, Lcom/unity3d/services/store/c$a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/c;-><init>(Landroid/content/Context;Lcom/unity3d/services/store/listeners/b;)V

    sput-object p0, Lcom/unity3d/services/store/c;->a:Lcom/unity3d/services/store/gpbl/c;

    new-instance v0, Lcom/unity3d/services/store/c$b;

    invoke-direct {v0}, Lcom/unity3d/services/store/c$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/unity3d/services/store/gpbl/c;->a(Lcom/unity3d/services/store/gpbl/b;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/services/store/c;->d:Lcom/unity3d/services/store/core/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/store/c;->c()V

    :cond_0
    new-instance v0, Lcom/unity3d/services/store/core/b;

    sget-object v1, Lcom/unity3d/services/store/c;->a:Lcom/unity3d/services/store/gpbl/c;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/store/core/b;-><init>(Ljava/util/ArrayList;Lcom/unity3d/services/store/gpbl/c;)V

    sput-object v0, Lcom/unity3d/services/store/c;->d:Lcom/unity3d/services/store/core/b;

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->d()Landroid/app/Application;

    move-result-object p0

    sget-object v0, Lcom/unity3d/services/store/c;->d:Lcom/unity3d/services/store/core/b;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static b(ILjava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/unity3d/services/store/c;->a:Lcom/unity3d/services/store/gpbl/c;

    invoke-virtual {v1, p1}, Lcom/unity3d/services/store/gpbl/c;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v1, Lcom/unity3d/services/core/webview/b;->p:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/services/store/b;->n:Lcom/unity3d/services/store/b;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/unity3d/services/store/c;->c:Lcom/unity3d/services/store/core/a;

    sget-object v2, Lcom/unity3d/services/store/b;->o:Lcom/unity3d/services/store/b;

    invoke-virtual {v1, v2, p0, p1}, Lcom/unity3d/services/store/core/a;->a(Lcom/unity3d/services/store/b;ILjava/lang/Exception;)V

    :goto_0
    return v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/unity3d/services/store/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lcom/unity3d/services/store/c;->d:Lcom/unity3d/services/store/core/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->d()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/c;->d:Lcom/unity3d/services/store/core/b;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/store/c;->d:Lcom/unity3d/services/store/core/b;

    :cond_0
    return-void
.end method
