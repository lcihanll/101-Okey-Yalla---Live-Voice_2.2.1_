.class public Lcom/twobigears/audio360/ThreadSettings;
.super Ljava/lang/Object;
.source "ThreadSettings.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_ThreadSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/ThreadSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/ThreadSettings;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_ThreadSettings(J)V

    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/twobigears/audio360/ThreadSettings;->delete()V

    return-void
.end method

.method public getUseDecoderThread()Z
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->ThreadSettings_useDecoderThread_get(JLcom/twobigears/audio360/ThreadSettings;)Z

    move-result v0

    return v0
.end method

.method public setUseDecoderThread(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/ThreadSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->ThreadSettings_useDecoderThread_set(JLcom/twobigears/audio360/ThreadSettings;Z)V

    return-void
.end method