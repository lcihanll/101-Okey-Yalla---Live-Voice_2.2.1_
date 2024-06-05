.class public Lcom/unity3d/services/core/webview/bridge/invocation/d;
.super Ljava/lang/Object;
.source "WebViewBridgeInvocationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Landroid/os/ConditionVariable;

.field private static b:Lcom/unity3d/services/core/webview/bridge/a;


# instance fields
.field private c:Lcom/unity3d/services/core/webview/bridge/invocation/b;

.field private d:Lcom/unity3d/services/core/webview/bridge/b;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Lcom/unity3d/services/core/webview/bridge/invocation/b;Lcom/unity3d/services/core/webview/bridge/b;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-class v0, Lcom/unity3d/services/core/webview/bridge/invocation/d;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "a"

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/unity3d/services/core/webview/bridge/a;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    iput-object p1, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->c:Lcom/unity3d/services/core/webview/bridge/invocation/b;

    iput-object p2, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->d:Lcom/unity3d/services/core/webview/bridge/b;

    iput-object p3, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->g:Ljava/lang/String;

    iput p5, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->h:I

    iput-object p6, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->i:[Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "WebViewBridgeInvocation callback method cannot be found"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static declared-synchronized a(Lcom/unity3d/services/core/webview/bridge/a;)V
    .locals 1

    const-class v0, Lcom/unity3d/services/core/webview/bridge/invocation/d;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->b:Lcom/unity3d/services/core/webview/bridge/a;

    sget-object p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->a:Landroid/os/ConditionVariable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V
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


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->b:Lcom/unity3d/services/core/webview/bridge/a;

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v1, Lcom/unity3d/services/core/webview/bridge/invocation/d;->a:Landroid/os/ConditionVariable;

    iget-object v1, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->d:Lcom/unity3d/services/core/webview/bridge/b;

    iget-object v2, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->e:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->i:[Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/bridge/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->c:Lcom/unity3d/services/core/webview/bridge/invocation/b;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "WebViewBridgeInvocationRunnable:run: invokeMethod failure"

    invoke-interface {v2, v1, v0}, Lcom/unity3d/services/core/webview/bridge/invocation/b;->a(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/a;)V

    return-void

    :cond_1
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->a:Landroid/os/ConditionVariable;

    iget v1, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->h:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->b:Lcom/unity3d/services/core/webview/bridge/a;

    sget-object v1, Lcom/unity3d/services/core/webview/bridge/a;->a:Lcom/unity3d/services/core/webview/bridge/a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->c:Lcom/unity3d/services/core/webview/bridge/invocation/b;

    invoke-interface {v0}, Lcom/unity3d/services/core/webview/bridge/invocation/b;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->c:Lcom/unity3d/services/core/webview/bridge/invocation/b;

    sget-object v1, Lcom/unity3d/services/core/webview/bridge/invocation/d;->b:Lcom/unity3d/services/core/webview/bridge/a;

    const-string v2, "WebViewBridgeInvocationRunnable:run CallbackStatus.Error"

    invoke-interface {v0, v2, v1}, Lcom/unity3d/services/core/webview/bridge/invocation/b;->a(Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/a;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unity3d/services/core/webview/bridge/invocation/d;->c:Lcom/unity3d/services/core/webview/bridge/invocation/b;

    invoke-interface {v0}, Lcom/unity3d/services/core/webview/bridge/invocation/b;->b()V

    :goto_0
    return-void
.end method
