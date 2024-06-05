.class final synthetic Lcom/tencent/liteav/base/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/base/util/l$a;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/base/util/l$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/base/util/q;->a:Lcom/tencent/liteav/base/util/l$a;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/base/util/l$a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/base/util/q;-><init>(Lcom/tencent/liteav/base/util/l$a;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/base/util/q;->a:Lcom/tencent/liteav/base/util/l$a;

    iget-object v1, v0, Lcom/tencent/liteav/base/util/l$a;->e:Lcom/tencent/liteav/base/util/l;

    iget-object v1, v1, Lcom/tencent/liteav/base/util/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Lcom/tencent/liteav/base/util/l$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
