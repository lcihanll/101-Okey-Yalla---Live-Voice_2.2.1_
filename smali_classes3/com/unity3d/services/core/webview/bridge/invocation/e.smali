.class public Lcom/unity3d/services/core/webview/bridge/invocation/e;
.super Ljava/lang/Object;
.source "WebViewBridgeInvocationSingleThreadedExecutor.java"


# static fields
.field private static a:Lcom/unity3d/services/core/webview/bridge/invocation/e;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/webview/bridge/invocation/e;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static b()Lcom/unity3d/services/core/webview/bridge/invocation/e;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/invocation/e;->a:Lcom/unity3d/services/core/webview/bridge/invocation/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/core/webview/bridge/invocation/e;

    invoke-direct {v0}, Lcom/unity3d/services/core/webview/bridge/invocation/e;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/webview/bridge/invocation/e;->a:Lcom/unity3d/services/core/webview/bridge/invocation/e;

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/webview/bridge/invocation/e;->a:Lcom/unity3d/services/core/webview/bridge/invocation/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/webview/bridge/invocation/e;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
