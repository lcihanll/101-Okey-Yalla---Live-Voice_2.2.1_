.class public Lcom/twobigears/audio360/AudioResampler;
.super Ljava/lang/Object;
.source "AudioResampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/AudioResampler$Quality;
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/twobigears/audio360/AudioResampler;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    return-void
.end method

.method public static create(JFFLcom/twobigears/audio360/AudioResampler$Quality;)Lcom/twobigears/audio360/AudioResampler;
    .locals 0

    invoke-virtual {p4}, Lcom/twobigears/audio360/AudioResampler$Quality;->swigValue()I

    move-result p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/twobigears/audio360/Audio360JNI;->AudioResampler_create(JFFI)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p4, p0, p2

    if-nez p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/twobigears/audio360/AudioResampler;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/twobigears/audio360/AudioResampler;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AudioResampler;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/twobigears/audio360/AudioResampler;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/twobigears/audio360/AudioResampler;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AudioResampler(J)V

    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioResampler;->delete()V

    return-void
.end method

.method public getInputSampleRate()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioResampler_getInputSampleRate(JLcom/twobigears/audio360/AudioResampler;)F

    move-result v0

    return v0
.end method

.method public getNumChannels()I
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioResampler_getNumChannels(JLcom/twobigears/audio360/AudioResampler;)I

    move-result v0

    return v0
.end method

.method public getOutputSampleRate()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioResampler_getOutputSampleRate(JLcom/twobigears/audio360/AudioResampler;)F

    move-result v0

    return v0
.end method

.method public getQuality()Lcom/twobigears/audio360/AudioResampler$Quality;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioResampler_getQuality(JLcom/twobigears/audio360/AudioResampler;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/AudioResampler$Quality;->swigToEnum(I)Lcom/twobigears/audio360/AudioResampler$Quality;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;JZ)J
    .locals 11

    move-object v10, p0

    iget-wide v0, v10, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/twobigears/audio360/Audio360JNI;->AudioResampler_process(JLcom/twobigears/audio360/AudioResampler;Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioResampler;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioResampler_reset(JLcom/twobigears/audio360/AudioResampler;)V

    return-void
.end method
