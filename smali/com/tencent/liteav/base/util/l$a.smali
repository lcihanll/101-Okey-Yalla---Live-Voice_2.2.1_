.class final Lcom/tencent/liteav/base/util/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/base/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/lang/Runnable;

.field final c:Ljava/lang/Runnable;

.field final d:J

.field final synthetic e:Lcom/tencent/liteav/base/util/l;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/base/util/l;Ljava/lang/Runnable;J)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/base/util/l$a;->e:Lcom/tencent/liteav/base/util/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/liteav/base/util/l$a;->a:Ljava/lang/Runnable;

    invoke-static {p0, p2}, Lcom/tencent/liteav/base/util/p;->a(Lcom/tencent/liteav/base/util/l$a;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/base/util/l$a;->b:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/tencent/liteav/base/util/q;->a(Lcom/tencent/liteav/base/util/l$a;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/base/util/l$a;->c:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/tencent/liteav/base/util/l$a;->d:J

    return-void
.end method
