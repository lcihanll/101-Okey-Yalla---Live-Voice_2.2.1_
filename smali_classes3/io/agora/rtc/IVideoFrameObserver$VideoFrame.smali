.class public Lio/agora/rtc/IVideoFrameObserver$VideoFrame;
.super Ljava/lang/Object;
.source "IVideoFrameObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/IVideoFrameObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoFrame"
.end annotation


# instance fields
.field public avsync_type:I

.field public height:I

.field public renderTimeMs:J

.field public rotation:I

.field public type:I

.field public uBuffer:Ljava/nio/ByteBuffer;

.field public uStride:I

.field public vBuffer:Ljava/nio/ByteBuffer;

.field public vStride:I

.field public width:I

.field public yBuffer:Ljava/nio/ByteBuffer;

.field public yStride:I


# direct methods
.method public constructor <init>(IIIIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IJI)V
    .locals 0
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "width",
            "height",
            "yStride",
            "uStride",
            "vStride",
            "yBuffer",
            "uBuffer",
            "vBuffer",
            "rotation",
            "renderTimeMs",
            "avsync_type"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->type:I

    iput p2, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->width:I

    iput p3, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->height:I

    iput p4, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->yStride:I

    iput p5, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->uStride:I

    iput p6, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->vStride:I

    iput-object p7, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->yBuffer:Ljava/nio/ByteBuffer;

    iput-object p8, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->uBuffer:Ljava/nio/ByteBuffer;

    iput-object p9, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->vBuffer:Ljava/nio/ByteBuffer;

    iput p10, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->rotation:I

    iput-wide p11, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->renderTimeMs:J

    iput p13, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->avsync_type:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoFrame{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->yStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->uStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->vStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->yBuffer:Ljava/nio/ByteBuffer;

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->uBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->vBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", renderTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->renderTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", avsync_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/IVideoFrameObserver$VideoFrame;->avsync_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
