.class public Lcom/ishumei/l111l11111I1l/l1111l111111Il;
.super Ljava/lang/Object;


# static fields
.field private static l1111l111111Il:Ljava/lang/String; = "sm"

.field private static l111l11111I1l:I = 0x2

.field private static l111l11111Il:I = 0x3

.field private static l111l11111lIl:I = 0x1

.field private static l111l1111l1Il:I = 0x4

.field private static l111l1111lI1l:I = 0x7

.field private static l111l1111lIl:[I = null

.field private static l111l1111llIl:I = 0x6

.field private static l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;


# instance fields
.field private l11l1111I11l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private l11l1111lIIl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l1111lIl:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x6
        0x7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111lIIl:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I11l:Landroid/util/SparseArray;

    sget-object v0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l1111lIl:[I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    new-instance v3, Landroid/os/HandlerThread;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sm-thread-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111lIIl:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I11l:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111lIIl:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I11l:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private l1111l111111Il(J)I
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111lIIl:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static declared-synchronized l111l11111I1l()V
    .locals 10

    const-class v0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    if-eqz v1, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v2, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    iget-object v2, v2, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111lIIl:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    sget-object v5, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(I)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    iget-object v1, v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111lIIl:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    iget-object v1, v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I11l:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    sput-object v4, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;
    .locals 2

    const-class v0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    if-nez v1, :cond_1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    invoke-direct {v1}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;-><init>()V

    sput-object v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v1, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I1l:Lcom/ishumei/l111l11111I1l/l1111l111111Il;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final l1111l111111Il()I
    .locals 3

    iget-object v0, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111lIIl:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final l1111l111111Il(I)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l11l1111I11l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    return-object p1
.end method

.method public final l1111l111111Il(Ljava/lang/Runnable;I)V
    .locals 7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IZJZ)V

    return-void
.end method

.method public final l1111l111111Il(Ljava/lang/Runnable;IJZ)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IZJZ)V

    return-void
.end method

.method public final l1111l111111Il(Ljava/lang/Runnable;IZJZ)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(I)Landroid/os/Handler;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
