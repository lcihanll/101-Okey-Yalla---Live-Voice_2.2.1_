.class public Lcom/twobigears/audio360/SpatDecoderFile;
.super Lcom/twobigears/audio360/SpatDecoderInterface;
.source "SpatDecoderFile.java"


# instance fields
.field private eventListener_:Lcom/twobigears/audio360/EventListener;

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/twobigears/audio360/SpatDecoderInterface;-><init>(JZ)V

    iput-wide p1, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/SpatDecoderFile;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method private setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/EventListener;->getCPtr(Lcom/twobigears/audio360/EventListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_setEventListenerInternal(JLcom/twobigears/audio360/SpatDecoderFile;JLcom/twobigears/audio360/EventListener;)V

    return-void
.end method


# virtual methods
.method public applyVolumeFade(FFF)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_applyVolumeFade(JLcom/twobigears/audio360/SpatDecoderFile;FFF)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_close(JLcom/twobigears/audio360/SpatDecoderFile;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCMemOwn:Z

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCMemOwn:Z

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/twobigears/audio360/SpatDecoderInterface;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableLooping(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_enableLooping(JLcom/twobigears/audio360/SpatDecoderFile;Z)V

    return-void
.end method

.method public getAssetDurationInMs()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_getAssetDurationInMs(JLcom/twobigears/audio360/SpatDecoderFile;)F

    move-result v0

    return v0
.end method

.method public getAssetDurationInSamples()J
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_getAssetDurationInSamples(JLcom/twobigears/audio360/SpatDecoderFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedTimeInMs()D
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_getElapsedTimeInMs(JLcom/twobigears/audio360/SpatDecoderFile;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedTimeInSamples()J
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_getElapsedTimeInSamples(JLcom/twobigears/audio360/SpatDecoderFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreewheelTimeInMs()D
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_getFreewheelTimeInMs(JLcom/twobigears/audio360/SpatDecoderFile;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getResyncThresholdMs()D
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_getResyncThresholdMs(JLcom/twobigears/audio360/SpatDecoderFile;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncMode()Lcom/twobigears/audio360/SyncMode;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_getSyncMode(JLcom/twobigears/audio360/SpatDecoderFile;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/SyncMode;->swigToEnum(I)Lcom/twobigears/audio360/SyncMode;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_isOpen(JLcom/twobigears/audio360/SpatDecoderFile;)Z

    move-result v0

    return v0
.end method

.method public loopingEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_loopingEnabled(JLcom/twobigears/audio360/SpatDecoderFile;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_open__SWIG_1(JLcom/twobigears/audio360/SpatDecoderFile;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;Lcom/twobigears/audio360/AssetDescriptor;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {p2}, Lcom/twobigears/audio360/AssetDescriptor;->getCPtr(Lcom/twobigears/audio360/AssetDescriptor;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_open__SWIG_3(JLcom/twobigears/audio360/SpatDecoderFile;Ljava/lang/String;JLcom/twobigears/audio360/AssetDescriptor;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;Lcom/twobigears/audio360/AssetDescriptor;Lcom/twobigears/audio360/ChannelMap;)Lcom/twobigears/audio360/EngineError;
    .locals 8

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {p2}, Lcom/twobigears/audio360/AssetDescriptor;->getCPtr(Lcom/twobigears/audio360/AssetDescriptor;)J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_open__SWIG_2(JLcom/twobigears/audio360/SpatDecoderFile;Ljava/lang/String;JLcom/twobigears/audio360/AssetDescriptor;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;Lcom/twobigears/audio360/ChannelMap;)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-virtual {p2}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_open__SWIG_0(JLcom/twobigears/audio360/SpatDecoderFile;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public seekToMs(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_seekToMs(JLcom/twobigears/audio360/SpatDecoderFile;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public seekToSample(J)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_seekToSample(JLcom/twobigears/audio360/SpatDecoderFile;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setEventListener(Lcom/twobigears/audio360/EventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->eventListener_:Lcom/twobigears/audio360/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twobigears/audio360/EventListener;->delete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->eventListener_:Lcom/twobigears/audio360/EventListener;

    :cond_0
    iput-object p1, p0, Lcom/twobigears/audio360/SpatDecoderFile;->eventListener_:Lcom/twobigears/audio360/EventListener;

    invoke-direct {p0, p1}, Lcom/twobigears/audio360/SpatDecoderFile;->setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V

    return-void
.end method

.method public setExternalClockInMs(D)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_setExternalClockInMs(JLcom/twobigears/audio360/SpatDecoderFile;D)V

    return-void
.end method

.method public setFreewheelTimeInMs(D)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_setFreewheelTimeInMs(JLcom/twobigears/audio360/SpatDecoderFile;D)V

    return-void
.end method

.method public setResyncThresholdMs(D)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_setResyncThresholdMs(JLcom/twobigears/audio360/SpatDecoderFile;D)V

    return-void
.end method

.method public setSyncMode(Lcom/twobigears/audio360/SyncMode;)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderFile;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/SyncMode;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderFile_setSyncMode(JLcom/twobigears/audio360/SpatDecoderFile;I)V

    return-void
.end method
