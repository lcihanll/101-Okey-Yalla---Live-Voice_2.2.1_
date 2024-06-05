.class public Lcom/appsflyer/AFExecutor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static valueOf:Lcom/appsflyer/AFExecutor;


# instance fields
.field final $$a:Ljava/util/concurrent/ThreadFactory;

.field $$b:Ljava/util/concurrent/Executor;

.field AFDateFormat:Ljava/util/concurrent/ScheduledExecutorService;

.field values:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static $$b(Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    const-string v0, "killing non-finished tasks"

    :try_start_0
    const-string v1, "shut downing executor ..."

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v1, "InterruptedException!!!"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appsflyer/AFExecutor$1;

    invoke-direct {v0}, Lcom/appsflyer/AFExecutor$1;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFExecutor;->$$a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public static getInstance()Lcom/appsflyer/AFExecutor;
    .locals 1

    sget-object v0, Lcom/appsflyer/AFExecutor;->valueOf:Lcom/appsflyer/AFExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/AFExecutor;

    invoke-direct {v0}, Lcom/appsflyer/AFExecutor;-><init>()V

    sput-object v0, Lcom/appsflyer/AFExecutor;->valueOf:Lcom/appsflyer/AFExecutor;

    :cond_0
    sget-object v0, Lcom/appsflyer/AFExecutor;->valueOf:Lcom/appsflyer/AFExecutor;

    return-object v0
.end method


# virtual methods
.method public getThreadPoolExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/appsflyer/AFExecutor;->$$a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    :cond_2
    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->$$b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final valueOf()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->values:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->values:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/appsflyer/AFExecutor;->$$a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFExecutor;->values:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_2
    iget-object v0, p0, Lcom/appsflyer/AFExecutor;->values:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method
