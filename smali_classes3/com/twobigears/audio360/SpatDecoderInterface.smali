.class public Lcom/twobigears/audio360/SpatDecoderInterface;
.super Lcom/twobigears/audio360/Object3D;
.source "SpatDecoderInterface.java"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/twobigears/audio360/Object3D;-><init>(JZ)V

    iput-wide p1, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/SpatDecoderInterface;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCMemOwn:Z

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCMemOwn:Z

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/twobigears/audio360/Object3D;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableFocus(ZZ)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_enableFocus(JLcom/twobigears/audio360/SpatDecoderInterface;ZZ)V

    return-void
.end method

.method public getPlayState()Lcom/twobigears/audio360/PlayState;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_getPlayState(JLcom/twobigears/audio360/SpatDecoderInterface;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/PlayState;->swigToEnum(I)Lcom/twobigears/audio360/PlayState;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_getVolume(JLcom/twobigears/audio360/SpatDecoderInterface;)F

    move-result v0

    return v0
.end method

.method public getVolumeDecibels()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_getVolumeDecibels(JLcom/twobigears/audio360/SpatDecoderInterface;)F

    move-result v0

    return v0
.end method

.method public pause()Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_pause(JLcom/twobigears/audio360/SpatDecoderInterface;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public pauseScheduled(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_pauseScheduled(JLcom/twobigears/audio360/SpatDecoderInterface;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public pauseWithFade(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_pauseWithFade(JLcom/twobigears/audio360/SpatDecoderInterface;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public play()Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_play(JLcom/twobigears/audio360/SpatDecoderInterface;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public playScheduled(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_playScheduled(JLcom/twobigears/audio360/SpatDecoderInterface;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public playWithFade(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_playWithFade(JLcom/twobigears/audio360/SpatDecoderInterface;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setFocusOrientationQuat(Lcom/twobigears/audio360/TBQuat;)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setFocusOrientationQuat(JLcom/twobigears/audio360/SpatDecoderInterface;JLcom/twobigears/audio360/TBQuat;)V

    return-void
.end method

.method public setFocusProperties(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setFocusProperties(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V

    return-void
.end method

.method public setFocusWidthDegrees(F)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setFocusWidthDegrees(JLcom/twobigears/audio360/SpatDecoderInterface;F)V

    return-void
.end method

.method public setOffFocusLeveldB(F)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setOffFocusLeveldB(JLcom/twobigears/audio360/SpatDecoderInterface;F)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setVolume__SWIG_1(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V

    return-void
.end method

.method public setVolume(FFZ)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setVolume__SWIG_0(JLcom/twobigears/audio360/SpatDecoderInterface;FFZ)V

    return-void
.end method

.method public setVolumeDecibels(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setVolumeDecibels__SWIG_1(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V

    return-void
.end method

.method public setVolumeDecibels(FFZ)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setVolumeDecibels__SWIG_0(JLcom/twobigears/audio360/SpatDecoderInterface;FFZ)V

    return-void
.end method
