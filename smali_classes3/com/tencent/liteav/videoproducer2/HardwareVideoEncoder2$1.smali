.class final Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2$1;
.super Lcom/tencent/liteav/videoproducer/encoder/br$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2$1;->a:Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/br$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2$1;->a:Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->access$000(Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 0

    sget-object p1, Lcom/tencent/liteav/videobase/videobase/h$a;->a:Lcom/tencent/liteav/videobase/videobase/h$a;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2$1;->a:Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->notifyEncodeFail()V

    return-void
.end method

.method public final declared-synchronized onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2$1;->a:Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;

    invoke-static {v2}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->access$100(Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_2

    if-nez p2, :cond_2

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2$1;->a:Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;

    invoke-static {v2}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->access$100(Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;)J

    move-result-wide v3

    iget-object v8, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    iget-object v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/c;

    iget v9, v5, Lcom/tencent/liteav/videobase/common/c;->mValue:I

    iget-object v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/d;

    iget v10, v5, Lcom/tencent/liteav/videobase/common/d;->mValue:I

    iget-object v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    iget v11, v5, Lcom/tencent/liteav/videobase/common/CodecType;->mValue:I

    iget v12, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    move-wide v15, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    iget v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    move-wide/from16 v25, v13

    iget v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    iget-object v14, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    if-eqz v14, :cond_0

    const/16 v27, 0x1

    goto :goto_0

    :cond_0
    const/16 v27, 0x0

    :goto_0
    iget-object v6, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    if-nez v6, :cond_1

    const/16 v28, 0x0

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v28, v6

    :goto_1
    move/from16 v29, v5

    move-object/from16 v5, p1

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move-wide v11, v15

    move v0, v13

    move-wide/from16 v15, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v13, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v23

    move/from16 v23, v29

    move/from16 v24, v0

    move/from16 v25, v27

    move/from16 v26, v28

    invoke-static/range {v2 .. v26}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->access$200(Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;JLcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIIJJJJJJIIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2$1;->a:Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->access$300(Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onEncodedNAL mNativeHandler=%d,isEos=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2$1;->a:Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;

    invoke-static {v4}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->access$100(Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
