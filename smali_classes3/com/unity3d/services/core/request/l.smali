.class public Lcom/unity3d/services/core/request/l;
.super Ljava/lang/Object;
.source "WebRequestThread.java"


# static fields
.field private static a:Z = false

.field private static b:Ljava/util/concurrent/LinkedBlockingQueue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/unity3d/services/core/request/a; = null

.field private static d:I = 0x1

.field private static e:I = 0x1

.field private static f:J = 0x3e8L

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/request/l;->g:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/request/l;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized a(I)V
    .locals 2

    const-class v0, Lcom/unity3d/services/core/request/l;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/unity3d/services/core/request/l;->d:I

    sput p0, Lcom/unity3d/services/core/request/l;->e:I

    sget-object v1, Lcom/unity3d/services/core/request/l;->c:Lcom/unity3d/services/core/request/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    sget-object p0, Lcom/unity3d/services/core/request/l;->c:Lcom/unity3d/services/core/request/a;

    sget v1, Lcom/unity3d/services/core/request/l;->e:I

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V
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

.method public static declared-synchronized a(J)V
    .locals 3

    const-class v0, Lcom/unity3d/services/core/request/l;

    monitor-enter v0

    :try_start_0
    sput-wide p0, Lcom/unity3d/services/core/request/l;->f:J

    sget-object v1, Lcom/unity3d/services/core/request/l;->c:Lcom/unity3d/services/core/request/a;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
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

.method public static declared-synchronized a(Ljava/lang/String;Lcom/unity3d/services/core/request/h$a;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/services/core/request/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/core/request/h$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/services/core/request/c;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/unity3d/services/core/request/l;

    monitor-enter v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    :try_start_0
    invoke-static/range {v1 .. v7}, Lcom/unity3d/services/core/request/l;->a(Ljava/lang/String;Lcom/unity3d/services/core/request/h$a;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/services/core/request/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/unity3d/services/core/request/h$a;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/services/core/request/c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/core/request/h$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/services/core/request/c;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    const-class v9, Lcom/unity3d/services/core/request/l;

    monitor-enter v9

    :try_start_0
    sget-boolean v1, Lcom/unity3d/services/core/request/l;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/request/l;->c()V

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v10, Lcom/unity3d/services/core/request/l;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v11, Lcom/unity3d/services/core/request/k;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, v11

    move-object v2, p0

    move-object v4, p3

    move-object v7, p2

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/unity3d/services/core/request/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/unity3d/services/core/request/c;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-void

    :cond_2
    :goto_0
    :try_start_1
    const-string v1, "Request is NULL or too short"

    move-object/from16 v2, p6

    invoke-interface {v2, p0, v1}, Lcom/unity3d/services/core/request/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/unity3d/services/core/request/b;)Z
    .locals 3

    const-class v0, Lcom/unity3d/services/core/request/l;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/unity3d/services/core/request/l$b;

    invoke-direct {v2, p0, p1}, Lcom/unity3d/services/core/request/l$b;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/request/b;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    :goto_0
    :try_start_1
    sget-object v1, Lcom/unity3d/services/core/request/f;->a:Lcom/unity3d/services/core/request/f;

    const-string v2, "Host is NULL"

    invoke-interface {p1, p0, v1, v2}, Lcom/unity3d/services/core/request/b;->a(Ljava/lang/String;Lcom/unity3d/services/core/request/f;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/unity3d/services/core/request/l;->a:Z

    return p0
.end method

.method public static declared-synchronized b()V
    .locals 4

    const-class v0, Lcom/unity3d/services/core/request/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/request/l;->c:Lcom/unity3d/services/core/request/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/a;->a()V

    sget-object v1, Lcom/unity3d/services/core/request/l;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    instance-of v3, v2, Lcom/unity3d/services/core/request/k;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/unity3d/services/core/request/k;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/unity3d/services/core/request/k;->a(Z)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/unity3d/services/core/request/l;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    sget-object v1, Lcom/unity3d/services/core/request/l;->c:Lcom/unity3d/services/core/request/a;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(I)V
    .locals 2

    const-class v0, Lcom/unity3d/services/core/request/l;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/unity3d/services/core/request/l;->e:I

    sget-object v1, Lcom/unity3d/services/core/request/l;->c:Lcom/unity3d/services/core/request/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V
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

.method private static declared-synchronized c()V
    .locals 9

    const-class v0, Lcom/unity3d/services/core/request/l;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v1, Lcom/unity3d/services/core/request/l;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/unity3d/services/core/request/a;

    sget v3, Lcom/unity3d/services/core/request/l;->d:I

    sget v4, Lcom/unity3d/services/core/request/l;->e:I

    sget-wide v5, Lcom/unity3d/services/core/request/l;->f:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/unity3d/services/core/request/l;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/unity3d/services/core/request/a;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/LinkedBlockingQueue;)V

    sput-object v1, Lcom/unity3d/services/core/request/l;->c:Lcom/unity3d/services/core/request/a;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    sget-object v1, Lcom/unity3d/services/core/request/l;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/unity3d/services/core/request/l$a;

    invoke-direct {v2}, Lcom/unity3d/services/core/request/l$a;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-boolean v1, Lcom/unity3d/services/core/request/l;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/unity3d/services/core/request/l;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    :try_start_4
    const-string v1, "Couldn\'t synchronize thread"

    invoke-static {v1}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
