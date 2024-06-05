.class public abstract Lcom/tencent/liteav/videoconsumer/decoder/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/decoder/ad$a;,
        Lcom/tencent/liteav/videoconsumer/decoder/ad$b;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

.field protected final c:Lcom/tencent/liteav/base/util/Size;

.field protected final d:Landroid/media/MediaCodec$BufferInfo;

.field e:Z

.field protected final f:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field protected final g:Lcom/tencent/liteav/base/b/b;

.field protected final h:Z

.field private i:Landroid/media/MediaCodec;

.field private final j:Lcom/tencent/liteav/videobase/utils/h;

.field private final k:Lcom/tencent/liteav/videoconsumer/decoder/t;

.field private volatile l:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/utils/h;Lcom/tencent/liteav/base/util/Size;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZLcom/tencent/liteav/videoconsumer/decoder/ad$b;Lcom/tencent/liteav/base/util/CustomHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaCodecDecoder"

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->d:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->e:Z

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/t;

    invoke-direct {v0}, Lcom/tencent/liteav/videoconsumer/decoder/t;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->k:Lcom/tencent/liteav/videoconsumer/decoder/t;

    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->g:Lcom/tencent/liteav/base/b/b;

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->j:Lcom/tencent/liteav/videobase/utils/h;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->c:Lcom/tencent/liteav/base/util/Size;

    iput-object p3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->f:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iput-boolean p4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->h:Z

    iput-object p5, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->b:Lcom/tencent/liteav/videoconsumer/decoder/ad$b;

    iput-object p6, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->l:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method private c()V
    .locals 7

    const-string v0, "release MediaCodec failed."

    const-string v1, "mediaCodec release"

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v4, "mediaCodec stop"

    invoke-static {v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    return-void

    :catchall_1
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stop MediaCodec failed."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    return-void

    :catchall_3
    move-exception v3

    :try_start_4
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    throw v3
.end method


# virtual methods
.method public final a(ZLandroid/media/MediaCodec;)Lcom/tencent/liteav/videoconsumer/decoder/ad$a;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->j:Lcom/tencent/liteav/videobase/utils/h;

    move/from16 v3, p1

    iput-boolean v3, v2, Lcom/tencent/liteav/videobase/utils/h;->f:Z

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->j:Lcom/tencent/liteav/videobase/utils/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/utils/h;->a()Landroid/media/MediaFormat;

    move-result-object v2

    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;

    invoke-direct {v3}, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;-><init>()V

    sget-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->m:Lcom/tencent/liteav/videobase/videobase/h$c;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, ""

    if-eqz v0, :cond_0

    :try_start_0
    iput-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(Landroid/media/MediaCodec;)V

    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v2, "preload MediaCodec update surface success (%s)"

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v0, v2, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_0
    const-string v0, "mime"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v8, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->h:Z

    if-eqz v8, :cond_3

    new-instance v8, Landroid/media/MediaCodecList;

    invoke-direct {v8, v5}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v8}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v13

    if-nez v13, :cond_2

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    aget-object v15, v12, v14

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {v11}, Lcom/tencent/liteav/videobase/common/MediaCodecAbility;->isSoftOnlyDecoder(Landroid/media/MediaCodecInfo;)Z

    move-result v15

    if-eqz v15, :cond_1

    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v8, "Use soft only decoder:%s"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v0, v8, v9}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_2

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :goto_2
    iput-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0, v6}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v8, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v9, "configure MediaCodec with "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v8, "start MediaCodec(%s) success."

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-static {v2, v8, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move v5, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v6, "start MediaCodec failed."

    invoke-static {v2, v6, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->i:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v4, "VideoDecode: illegal argument, Start decoder failed"

    goto :goto_3

    :cond_5
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->j:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v4, "VideoDecode: illegal state, Start decoder failed"

    goto :goto_3

    :cond_6
    const-string v2, "VideoDecode: Start decoder failed"

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "decoder config fail, message:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exception:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v2

    :goto_4
    iput-boolean v5, v3, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->a:Z

    if-nez v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->c()V

    iput-object v4, v3, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    iput-object v7, v3, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->c:Ljava/lang/String;

    :cond_7
    return-object v3
.end method

.method protected abstract a(Landroid/media/MediaCodec;)V
.end method

.method protected a(Landroid/media/MediaFormat;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "decode output format changed: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "crop-right"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-left"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "crop-bottom"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "crop-top"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v1

    const-string/jumbo v3, "width"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v5, v0

    const-string p1, "cropWidth: %d, cropHeight: %d, frameWidth: %d, frameHeight: %d"

    invoke-static {v4, p1, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->l:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->l:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 7

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->d:Landroid/media/MediaCodec$BufferInfo;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v3, "on output buffers changed"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(Landroid/media/MediaFormat;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ltz v2, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->d:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;I)Z

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v2, "dequeueOutputBuffer get invalid index: %d"

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v1
.end method

.method protected abstract a(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;I)Z
.end method

.method protected abstract a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
.end method

.method public final a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z
    .locals 12

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_10

    iget-boolean v2, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_10

    iget-object v2, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/c;->a([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v0, "get invalid input buffers."

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-gez v7, :cond_3

    return v1

    :cond_3
    iget-boolean v3, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    if-nez v3, :cond_f

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isIDRFrame()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v4, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v3, v4, :cond_e

    iget-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->e:Z

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v3, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/liteav/videobase/utils/j;->a(I)[B

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v4, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v4, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-array v4, v0, [I

    const/4 v5, -0x1

    aput v5, v4, v1

    const/4 v5, 0x0

    :cond_5
    add-int/lit8 v6, v5, 0x4

    array-length v8, v3

    if-ge v6, v8, :cond_6

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->getNextNALHeaderPos(ILjava/nio/ByteBuffer;)I

    move-result v5

    if-ltz v5, :cond_6

    aget-byte v6, v3, v5

    and-int/lit8 v6, v6, 0x1f

    const/4 v8, 0x7

    if-ne v6, v8, :cond_5

    aput v5, v4, v1

    :cond_6
    aget v5, v4, v1

    const/4 v6, 0x0

    if-gez v5, :cond_7

    move-object v8, v6

    goto :goto_2

    :cond_7
    array-length v5, v3

    aget v8, v4, v1

    sub-int/2addr v5, v8

    aget v8, v4, v1

    :goto_0
    add-int/lit8 v9, v8, 0x3

    array-length v10, v3

    if-ge v9, v10, :cond_b

    aget-byte v10, v3, v8

    if-nez v10, :cond_8

    add-int/lit8 v10, v8, 0x1

    aget-byte v10, v3, v10

    if-nez v10, :cond_8

    add-int/lit8 v10, v8, 0x2

    aget-byte v10, v3, v10

    if-eq v10, v0, :cond_9

    :cond_8
    aget-byte v10, v3, v8

    if-nez v10, :cond_a

    add-int/lit8 v10, v8, 0x1

    aget-byte v10, v3, v10

    if-nez v10, :cond_a

    add-int/lit8 v10, v8, 0x2

    aget-byte v10, v3, v10

    if-nez v10, :cond_a

    aget-byte v9, v3, v9

    if-ne v9, v0, :cond_a

    :cond_9
    aget v5, v4, v1

    sub-int v5, v8, v5

    goto :goto_1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_b
    :goto_1
    new-array v8, v5, [B

    aget v9, v4, v1

    invoke-static {v3, v9, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-eqz v8, :cond_e

    aget v5, v4, v1

    if-gez v5, :cond_c

    goto :goto_4

    :cond_c
    :try_start_0
    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->k:Lcom/tencent/liteav/videoconsumer/decoder/t;

    invoke-virtual {v5, v8}, Lcom/tencent/liteav/videoconsumer/decoder/t;->a([B)[B

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v5

    iget-object v9, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v10, "modify dec buffer error "

    invoke-static {v9, v10, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v6, :cond_e

    array-length v5, v3

    array-length v9, v8

    sub-int/2addr v5, v9

    array-length v9, v6

    add-int/2addr v5, v9

    invoke-static {v5}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_e

    iput-object v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    aget v5, v4, v1

    if-lez v5, :cond_d

    iget-object v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    aget v9, v4, v1

    invoke-virtual {v5, v3, v1, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_d
    iget-object v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    aget v6, v4, v1

    array-length v9, v8

    add-int/2addr v6, v9

    array-length v9, v3

    aget v1, v4, v1

    sub-int/2addr v9, v1

    array-length v1, v8

    sub-int/2addr v9, v1

    invoke-virtual {v5, v3, v6, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_e
    :goto_4
    iget-object v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    aget-object v1, v2, v7

    iget-object v2, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/tencent/liteav/videoconsumer/decoder/am;->a(Landroid/media/MediaCodec;IIJI)V

    goto :goto_5

    :cond_f
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v1, "feedDataToMediaCodec BUFFER_FLAG_END_OF_STREAM"

    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->i:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-static/range {v6 .. v11}, Lcom/tencent/liteav/videoconsumer/decoder/am;->a(Landroid/media/MediaCodec;IIJI)V

    :goto_5
    return v0

    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a:Ljava/lang/String;

    const-string v1, "receive empty buffer."

    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public abstract a(Ljava/lang/Object;)Z
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->c()V

    return-void
.end method
