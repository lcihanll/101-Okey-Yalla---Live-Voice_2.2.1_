.class public final Lcom/tencent/liteav/videoconsumer/consumer/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/consumer/b$a;,
        Lcom/tencent/liteav/videoconsumer/consumer/b$b;
    }
.end annotation


# instance fields
.field final A:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/tencent/liteav/videoconsumer/consumer/b$a;",
            ">;"
        }
    .end annotation
.end field

.field final B:Ljava/lang/Runnable;

.field final C:Lcom/tencent/liteav/videoconsumer/decoder/bl;

.field private final D:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field final a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/base/util/l;

.field final c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field final d:Lcom/tencent/liteav/videoconsumer/renderer/s;

.field e:Lcom/tencent/liteav/videoconsumer/renderer/t;

.field final f:Lcom/tencent/liteav/videoconsumer/consumer/a;

.field final g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field h:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field final i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field final j:Landroid/content/BroadcastReceiver;

.field k:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

.field l:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field m:Lcom/tencent/liteav/base/util/Rotation;

.field n:Z

.field final o:Lcom/tencent/liteav/videobase/utils/d;

.field p:Z

.field q:Z

.field final r:Lcom/tencent/liteav/videobase/utils/f;

.field s:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

.field t:Z

.field u:I

.field v:I

.field w:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

.field x:Ljava/lang/Object;

.field final y:Ljava/util/concurrent/atomic/AtomicLong;

.field final z:Lcom/tencent/liteav/videobase/utils/m;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoConsumer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->a:Ljava/lang/String;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/consumer/b$1;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/consumer/b$1;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/b;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->D:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/consumer/b$2;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/consumer/b$2;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/b;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/consumer/b$3;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/consumer/b$3;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/b;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->j:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->l:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v2, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->m:Lcom/tencent/liteav/base/util/Rotation;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->n:Z

    new-instance v3, Lcom/tencent/liteav/videobase/utils/d;

    invoke-direct {v3}, Lcom/tencent/liteav/videobase/utils/d;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->o:Lcom/tencent/liteav/videobase/utils/d;

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->p:Z

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->q:Z

    sget-object v3, Lcom/tencent/liteav/videoconsumer/consumer/b$b;->a:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->s:Lcom/tencent/liteav/videoconsumer/consumer/b$b;

    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->t:Z

    iput v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->u:I

    iput v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->v:I

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->w:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->x:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->y:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Lcom/tencent/liteav/videobase/utils/m;

    invoke-direct {v2}, Lcom/tencent/liteav/videobase/utils/m;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->z:Lcom/tencent/liteav/videobase/utils/m;

    new-instance v2, Ljava/util/PriorityQueue;

    invoke-direct {v2}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->A:Ljava/util/PriorityQueue;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/consumer/c;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->B:Ljava/lang/Runnable;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/consumer/b$4;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/consumer/b$4;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/b;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->C:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/renderer/s;

    invoke-direct {v2, p1}, Lcom/tencent/liteav/videoconsumer/renderer/s;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->d:Lcom/tencent/liteav/videoconsumer/renderer/s;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    invoke-direct {v2, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    new-instance p1, Lcom/tencent/liteav/videobase/utils/f;

    new-instance v2, Lcom/tencent/liteav/videoconsumer/consumer/n;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoconsumer/consumer/n;-><init>(Lcom/tencent/liteav/videoconsumer/consumer/b;)V

    invoke-direct {p1, v1, v2}, Lcom/tencent/liteav/videobase/utils/f;-><init>(Ljava/lang/String;Lcom/tencent/liteav/videobase/utils/f$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->r:Lcom/tencent/liteav/videobase/utils/f;

    new-instance p1, Lcom/tencent/liteav/base/util/l;

    const/16 v1, 0xf

    invoke-direct {p1, v1, v0}, Lcom/tencent/liteav/base/util/l;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->b:Lcom/tencent/liteav/base/util/l;

    new-instance p1, Lcom/tencent/liteav/videoconsumer/consumer/a;

    sget v0, Lcom/tencent/liteav/videoconsumer/consumer/a$a;->a:I

    invoke-direct {p1, v0}, Lcom/tencent/liteav/videoconsumer/consumer/a;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->f:Lcom/tencent/liteav/videoconsumer/consumer/a;

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videoconsumer/renderer/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->e:Lcom/tencent/liteav/videoconsumer/renderer/t;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->f:Lcom/tencent/liteav/videoconsumer/consumer/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method final a(Lcom/tencent/liteav/videoconsumer/renderer/r;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/tencent/liteav/videoconsumer/consumer/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->D:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->i:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->k:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->m:Lcom/tencent/liteav/base/util/Rotation;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/base/util/Rotation;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->l:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->n:Z

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videoconsumer/renderer/r;->b(Z)V

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->d:Lcom/tencent/liteav/videoconsumer/renderer/s;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoconsumer/renderer/s;->a(Z)V

    return-void
.end method

.method final a(Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->b:Lcom/tencent/liteav/base/util/l;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/r;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/b;->b:Lcom/tencent/liteav/base/util/l;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/base/util/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/consumer/v;->a(Lcom/tencent/liteav/videoconsumer/consumer/b;Z)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/consumer/b;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
