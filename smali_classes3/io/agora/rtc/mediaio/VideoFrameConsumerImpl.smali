.class public Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;
.super Ljava/lang/Object;
.source "VideoFrameConsumerImpl.java"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoFrameConsumer;


# instance fields
.field private mCaptureHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    return-void
.end method


# virtual methods
.method public consumeByteArrayFrame([BIIIIJ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    move v4, p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v4, v2, :cond_3

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-eq v4, v1, :cond_2

    if-eq v4, v0, :cond_2

    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    :goto_0
    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, p3, 0x1

    shr-int/2addr v2, v1

    add-int/lit8 v3, p4, 0x1

    shr-int/lit8 v1, v3, 0x1

    mul-int v3, p3, p4

    mul-int v2, v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v3, v2

    :goto_2
    if-eqz v0, :cond_5

    move-object v3, p1

    if-lez v0, :cond_4

    array-length v1, v3

    if-ge v1, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v10, p0

    iget-wide v1, v10, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideByteArrayFrame(J[BIIIIJ)V

    goto :goto_4

    :cond_5
    :goto_3
    move-object v10, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The size of consumeByteArrayFrame is illegal, format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IVideoFrameConsumer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    move-object v10, p0

    iget-wide v1, v10, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideByteBufferFrame(JLjava/nio/ByteBuffer;IIIIJ)V

    return-void
.end method

.method public consumeTextureFrame(IIIIIJ[F)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "format",
            "width",
            "height",
            "rotation",
            "ts",
            "matrix"
        }
    .end annotation

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    move-object v12, p0

    iget-wide v1, v12, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideTextureFrame(JLjava/lang/Object;IIIIIJ[F)V

    return-void

    :cond_0
    move-object v12, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public native provideByteArrayFrame(J[BIIIIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation
.end method

.method public native provideByteBufferFrame(JLjava/nio/ByteBuffer;IIIIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "buffer",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation
.end method

.method public native provideTextureFrame(JLjava/lang/Object;IIIIIJ[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "sharedContext",
            "texId",
            "format",
            "width",
            "height",
            "rotation",
            "ts",
            "matrix"
        }
    .end annotation
.end method