.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/u;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/tencent/liteav/videoconsumer/decoder/bl;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/u;Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/bl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/v;->a:Lcom/tencent/liteav/videoconsumer/decoder/u;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/v;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tencent/liteav/videoconsumer/decoder/v;->c:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/u;Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/bl;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/v;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/u;Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/bl;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/decoder/v;->a:Lcom/tencent/liteav/videoconsumer/decoder/u;

    iget-object v8, p0, Lcom/tencent/liteav/videoconsumer/decoder/v;->b:Ljava/lang/Object;

    iget-object v9, p0, Lcom/tencent/liteav/videoconsumer/decoder/v;->c:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v1, v11

    const-string v2, "Start decoder with eglContext:%s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->a:Ljava/lang/String;

    const-string v1, "Decoder already started."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "video/avc"

    :goto_0
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-object v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    if-eqz v1, :cond_2

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->f:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/b;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-boolean v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->a:Z

    if-eqz v1, :cond_3

    new-instance v14, Lcom/tencent/liteav/videoconsumer/decoder/ae;

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->i:Lcom/tencent/liteav/videobase/utils/h;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->e:Lcom/tencent/liteav/base/util/Size;

    iget-object v3, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-boolean v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->g:Z

    iget-object v6, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    move-object v0, v14

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoconsumer/decoder/ae;-><init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V

    iput-object v14, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    check-cast v0, Lcom/tencent/liteav/videoconsumer/decoder/ae;

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->c:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/ae;->a(Landroid/view/Surface;)V

    goto :goto_1

    :cond_3
    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-boolean v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->c:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v14, Lcom/tencent/liteav/videoconsumer/decoder/ag;

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->i:Lcom/tencent/liteav/videobase/utils/h;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->e:Lcom/tencent/liteav/base/util/Size;

    iget-object v3, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-boolean v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->g:Z

    iget-object v6, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    move-object v0, v14

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoconsumer/decoder/ag;-><init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V

    iput-object v14, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    goto :goto_1

    :cond_4
    new-instance v14, Lcom/tencent/liteav/videoconsumer/decoder/ah;

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->i:Lcom/tencent/liteav/videobase/utils/h;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->e:Lcom/tencent/liteav/base/util/Size;

    iget-object v3, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-boolean v4, v0, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->g:Z

    iget-object v6, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    move-object v0, v14

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoconsumer/decoder/ah;-><init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V

    iput-object v14, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    :goto_1
    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    iget-boolean v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->h:Z

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->e:Z

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    invoke-virtual {v0, v8}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(Ljava/lang/Object;)Z

    iput-object v9, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-boolean v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->d:Z

    iget-object v2, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(ZLandroid/media/MediaCodec;)Lcom/tencent/liteav/videoconsumer/decoder/ad$a;

    move-result-object v0

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->j:Lcom/tencent/liteav/videoconsumer/decoder/u$a;

    iget-boolean v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/u$a;->d:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->a:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    iget-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->d:Lcom/tencent/liteav/videoconsumer/decoder/ad;

    invoke-virtual {v0, v11, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(ZLandroid/media/MediaCodec;)Lcom/tencent/liteav/videoconsumer/decoder/ad$a;

    move-result-object v0

    :cond_7
    iget-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->a:Z

    if-eqz v1, :cond_9

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->f:Lcom/tencent/liteav/videoconsumer/decoder/bl;

    invoke-virtual {v0, v10}, Lcom/tencent/liteav/videoconsumer/decoder/bl;->a(Z)V

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v12

    iget-object v3, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v4, Lcom/tencent/liteav/videobase/videobase/i;->G:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->F:Lcom/tencent/liteav/videobase/videobase/h$b;

    const-string v3, "Start decoder success"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-virtual {v7}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a()V

    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/u;->b(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/tencent/liteav/videoconsumer/decoder/u;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/i;->H:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/h$c;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method
