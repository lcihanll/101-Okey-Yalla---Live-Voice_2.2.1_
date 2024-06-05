.class public final Lcom/tencent/liteav/videobase/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videobase/utils/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:J

.field private d:J

.field private e:J

.field private final f:Lcom/tencent/liteav/videobase/utils/f$a;

.field private g:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/liteav/videobase/utils/f$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->g:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/f;->a:Ljava/lang/String;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/liteav/videobase/utils/f;->b:I

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    iput-object p2, p0, Lcom/tencent/liteav/videobase/utils/f;->f:Lcom/tencent/liteav/videobase/utils/f$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/videobase/utils/f;->e:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->e:J

    return-void

    :cond_0
    sub-long v4, v0, v2

    iget v6, p0, Lcom/tencent/liteav/videobase/utils/f;->b:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    iget-wide v4, p0, Lcom/tencent/liteav/videobase/utils/f;->c:J

    iget-wide v6, p0, Lcom/tencent/liteav/videobase/utils/f;->d:J

    sub-long v6, v4, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float v6, v6, v7

    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float/2addr v6, v2

    float-to-double v2, v6

    iput-wide v2, p0, Lcom/tencent/liteav/videobase/utils/f;->g:D

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->e:J

    iput-wide v4, p0, Lcom/tencent/liteav/videobase/utils/f;->d:J

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/f;->f:Lcom/tencent/liteav/videobase/utils/f$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2, v3}, Lcom/tencent/liteav/videobase/utils/f$a;->a(D)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->c:J

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->d:J

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/utils/f;->e:J

    return-void
.end method
