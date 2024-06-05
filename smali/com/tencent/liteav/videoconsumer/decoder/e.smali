.class public final Lcom/tencent/liteav/videoconsumer/decoder/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/decoder/e$a;,
        Lcom/tencent/liteav/videoconsumer/decoder/e$b;,
        Lcom/tencent/liteav/videoconsumer/decoder/e$c;,
        Lcom/tencent/liteav/videoconsumer/decoder/e$e;,
        Lcom/tencent/liteav/videoconsumer/decoder/e$d;
    }
.end annotation


# static fields
.field static final y:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field A:Z

.field private final B:Lcom/tencent/liteav/videoconsumer/decoder/e$d;

.field private final C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

.field private D:Z

.field private E:Z

.field private F:I

.field private G:Z

.field private H:Z

.field a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

.field d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

.field e:Z

.field f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

.field g:J

.field h:J

.field i:I

.field j:I

.field k:Z

.field l:I

.field m:I

.field n:Z

.field o:I

.field p:Z

.field q:Z

.field r:Z

.field s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

.field t:J

.field final u:Lcom/tencent/liteav/base/b/a;

.field v:F

.field w:J

.field x:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/e$d;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DecoderSupervisor"

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    invoke-direct {v0}, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->e:Z

    const/16 v1, 0x8

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->i:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->j:I

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->F:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->r:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->G:Z

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->H:Z

    new-instance v1, Lcom/tencent/liteav/base/b/a;

    const-wide/16 v2, 0x3e8

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->u:Lcom/tencent/liteav/base/b/a;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->w:J

    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->x:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->z:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->A:Z

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->B:Lcom/tencent/liteav/videoconsumer/decoder/e$d;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-boolean p3, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->D:Z

    iput-boolean p4, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->E:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mIsSW265Supported:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mIsHW265Supported:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->a()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/decoder/e;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->d:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq v0, v1, :cond_0

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ge v0, v2, :cond_2

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->d:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-nez v0, :cond_3

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-nez v0, :cond_5

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt v0, v2, :cond_4

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string v0, "Use software decoder because of hardware stuck too much"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->d:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->B:Lcom/tencent/liteav/videoconsumer/decoder/e$d;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v1

    iget-object p1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e$d;->a(ZLjava/nio/ByteBuffer;)Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->set(Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/decoder/e;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->p:Z

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string v2, "EGLContext changed."

    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_0
    return-object v1
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v0

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->e:Z

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->F:I

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->o:I

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string v2, "checkH265Frame find h265 frame."

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->E:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->D:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->c()V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->g:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->D:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq v2, v3, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->d:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->g:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->c()V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->g:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_3
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->E:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq v0, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->g:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->c()V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->g:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_5
    return-object v1
.end method

.method private b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->E:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/decoder/e;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->H:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string v1, "scene changed, restart decoder"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->H:Z

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->n:Z

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->F:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->F:I

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isHDRFrame()Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->E:Z

    :cond_0
    iget v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->o:I

    iget v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->x:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->o:I

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkPendingDecodeError restart. index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->x:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$b;->d:Lcom/tencent/liteav/videobase/videobase/h$b;

    const-string v2, "MediaCodec doesn\'t work, switch HW to SW decode"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string p1, "checkPendingDecodeError switch HW to SW decode"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->c()V

    :cond_3
    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->g:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_4
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne v2, v3, :cond_9

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->o:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string p1, "checkPendingDecodeError failed decoder count is less max count."

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->D:Z

    :cond_6
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->F:I

    if-gtz v0, :cond_7

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isRPSEnable()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string p1, "checkPendingDecodeError switch SW to HW decode"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->d:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->c()V

    :cond_8
    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->g:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_9
    return-object v1
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$a;->k:Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v2, "no available hevc decoders"

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isRPSEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-ne v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->mPriority:I

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iget v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->mPriority:I

    if-le p1, v0, :cond_0

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$b;->G:Lcom/tencent/liteav/videobase/videobase/h$b;

    const-string v2, "remote video disable RPS, switch SW to HW decode"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-ne p1, p0, :cond_1

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->d:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p1, Lcom/tencent/liteav/videobase/videobase/h$b;->c:Lcom/tencent/liteav/videobase/videobase/h$b;

    const-string v0, "remote video enable RPS, switch HW to SW decode"

    invoke-interface {p0, p1, v1, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->b:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->g:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_4
    return-object v1
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->G:Z

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isSVCEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->G:Z

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isSVCEnable()Z

    move-result p1

    if-eq v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->r:Z

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkSVCStatus expect low latency:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Using low latency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->r:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq p0, v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object p1, Lcom/tencent/liteav/videobase/common/CodecType;->e:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne p0, p1, :cond_0

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->h:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    iget v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->width:I

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    iget v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->height:I

    mul-int v0, v0, v1

    const v1, 0x9c40

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isHDRFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->q:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->q:Z

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/liteav/videoconsumer/decoder/e;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/e$b;
    .locals 11

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    iget v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->width:I

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    iget v2, v2, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->height:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/bk$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->getArea()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->v:F

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const-string p1, "Received frame too fast, skip check hardware decoder"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/Size;->getArea()I

    move-result v1

    const v2, 0x75300

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->i:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->j:I

    :goto_1
    iget v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    if-lt v2, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-wide v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->h:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5

    iget-wide v6, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v8, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->h:J

    sub-long/2addr v6, v8

    mul-int/lit8 v8, v1, 0x42

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_5

    iget v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    add-int/lit8 v1, v1, -0x2

    if-lt v6, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :cond_7
    :goto_4
    if-eqz v4, :cond_b

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/e;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v2, :cond_8

    const-string v4, "Too many hard decoder buffers, switch to soft decoder"

    goto :goto_5

    :cond_8
    const-string v4, "Hard decoding takes too long, switch to soft decoder"

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Remote-VideoDecoder["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[videoSize: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "][decCacheNum:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "][decPts:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "][renderPts:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "][cacheHigh:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->i:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "][cacheLow:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->j:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->q:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cache to much deviceName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    :cond_9
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->b:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "decode cost too high, switch HW to SW, deviceName:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/liteav/videoconsumer/decoder/e$b;

    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/e$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/e$c;

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->d:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/e$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/e$c;Lcom/tencent/liteav/videoconsumer/decoder/e$e;)V

    return-object p0

    :cond_b
    :goto_6
    return-object v3
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->o:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->p:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->k:Z

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->m:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->w:J

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->n:Z

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    new-instance v4, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    invoke-direct {v4}, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;-><init>()V

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->set(Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;)V

    iput-wide v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->h:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->g:J

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->l:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->d:Lcom/tencent/liteav/videoconsumer/decoder/bk$a;

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/e$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->f:Lcom/tencent/liteav/videoconsumer/decoder/e$e;

    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->F:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->v:F

    iput-wide v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->t:J

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->u:Lcom/tencent/liteav/base/b/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/liteav/base/b/a;->a:J

    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->x:I

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->z:Z

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->H:Z

    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    return-void
.end method

.method final a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isHDRFrame()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->D:Z

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->G:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->maxNumRefFrames:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/e;->C:Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->maxNumRefFrames:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
