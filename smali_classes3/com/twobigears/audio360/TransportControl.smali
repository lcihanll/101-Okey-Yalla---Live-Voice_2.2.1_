.class public Lcom/twobigears/audio360/TransportControl;
.super Ljava/lang/Object;
.source "TransportControl.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/twobigears/audio360/TransportControl;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/TransportControl;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCMemOwn:Z

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCMemOwn:Z

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlayState()Lcom/twobigears/audio360/PlayState;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_getPlayState(JLcom/twobigears/audio360/TransportControl;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/PlayState;->swigToEnum(I)Lcom/twobigears/audio360/PlayState;

    move-result-object v0

    return-object v0
.end method

.method public pause()Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_pause(JLcom/twobigears/audio360/TransportControl;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public pauseScheduled(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_pauseScheduled(JLcom/twobigears/audio360/TransportControl;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public pauseWithFade(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_pauseWithFade(JLcom/twobigears/audio360/TransportControl;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public play()Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_play(JLcom/twobigears/audio360/TransportControl;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public playScheduled(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_playScheduled(JLcom/twobigears/audio360/TransportControl;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public playWithFade(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_playWithFade(JLcom/twobigears/audio360/TransportControl;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public stop()Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_stop(JLcom/twobigears/audio360/TransportControl;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public stopScheduled(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_stopScheduled(JLcom/twobigears/audio360/TransportControl;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public stopWithFade(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/TransportControl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TransportControl_stopWithFade(JLcom/twobigears/audio360/TransportControl;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method
