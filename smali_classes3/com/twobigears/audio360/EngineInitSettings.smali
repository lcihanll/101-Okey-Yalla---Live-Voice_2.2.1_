.class public Lcom/twobigears/audio360/EngineInitSettings;
.super Ljava/lang/Object;
.source "EngineInitSettings.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_EngineInitSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/EngineInitSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/EngineInitSettings;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_EngineInitSettings(J)V

    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/twobigears/audio360/EngineInitSettings;->delete()V

    return-void
.end method

.method public getAudioSettings()Lcom/twobigears/audio360/AudioSettings;
    .locals 5

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_audioSettings_get(JLcom/twobigears/audio360/EngineInitSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/twobigears/audio360/AudioSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/AudioSettings;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getExperimental()Lcom/twobigears/audio360/Experimental;
    .locals 5

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_experimental_get(JLcom/twobigears/audio360/EngineInitSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/twobigears/audio360/Experimental;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/Experimental;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getMemorySettings()Lcom/twobigears/audio360/MemorySettings;
    .locals 5

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_memorySettings_get(JLcom/twobigears/audio360/EngineInitSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/twobigears/audio360/MemorySettings;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/MemorySettings;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getPlatformSettings()Lcom/twobigears/audio360/PlatformSettings;
    .locals 5

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_platformSettings_get(JLcom/twobigears/audio360/EngineInitSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/twobigears/audio360/PlatformSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/PlatformSettings;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getThreads()Lcom/twobigears/audio360/ThreadSettings;
    .locals 5

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_threads_get(JLcom/twobigears/audio360/EngineInitSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/twobigears/audio360/ThreadSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/ThreadSettings;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public setAudioSettings(Lcom/twobigears/audio360/AudioSettings;)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioSettings;->getCPtr(Lcom/twobigears/audio360/AudioSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_audioSettings_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/AudioSettings;)V

    return-void
.end method

.method public setExperimental(Lcom/twobigears/audio360/Experimental;)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/Experimental;->getCPtr(Lcom/twobigears/audio360/Experimental;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_experimental_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/Experimental;)V

    return-void
.end method

.method public setMemorySettings(Lcom/twobigears/audio360/MemorySettings;)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/MemorySettings;->getCPtr(Lcom/twobigears/audio360/MemorySettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_memorySettings_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/MemorySettings;)V

    return-void
.end method

.method public setPlatformSettings(Lcom/twobigears/audio360/PlatformSettings;)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/PlatformSettings;->getCPtr(Lcom/twobigears/audio360/PlatformSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_platformSettings_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/PlatformSettings;)V

    return-void
.end method

.method public setThreads(Lcom/twobigears/audio360/ThreadSettings;)V
    .locals 6

    iget-wide v0, p0, Lcom/twobigears/audio360/EngineInitSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/ThreadSettings;->getCPtr(Lcom/twobigears/audio360/ThreadSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_threads_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/ThreadSettings;)V

    return-void
.end method
