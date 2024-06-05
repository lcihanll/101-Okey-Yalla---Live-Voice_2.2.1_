.class public Lcom/twobigears/audio360/AudioSettings;
.super Ljava/lang/Object;
.source "AudioSettings.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_AudioSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/AudioSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/twobigears/audio360/AudioSettings;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AudioSettings;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/twobigears/audio360/AudioSettings;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/twobigears/audio360/AudioSettings;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AudioSettings(J)V

    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioSettings;->delete()V

    return-void
.end method

.method public getBufferSize()I
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_bufferSize_get(JLcom/twobigears/audio360/AudioSettings;)I

    move-result v0

    return v0
.end method

.method public getCustomAudioDeviceName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_customAudioDeviceName_get(JLcom/twobigears/audio360/AudioSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/twobigears/audio360/AudioDeviceType;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_deviceType_get(JLcom/twobigears/audio360/AudioSettings;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/AudioDeviceType;->swigToEnum(I)Lcom/twobigears/audio360/AudioDeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_sampleRate_get(JLcom/twobigears/audio360/AudioSettings;)F

    move-result v0

    return v0
.end method

.method public setBufferSize(I)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_bufferSize_set(JLcom/twobigears/audio360/AudioSettings;I)V

    return-void
.end method

.method public setCustomAudioDeviceName(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_customAudioDeviceName_set(JLcom/twobigears/audio360/AudioSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceType(Lcom/twobigears/audio360/AudioDeviceType;)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/AudioDeviceType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_deviceType_set(JLcom/twobigears/audio360/AudioSettings;I)V

    return-void
.end method

.method public setSampleRate(F)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AudioSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_sampleRate_set(JLcom/twobigears/audio360/AudioSettings;F)V

    return-void
.end method
