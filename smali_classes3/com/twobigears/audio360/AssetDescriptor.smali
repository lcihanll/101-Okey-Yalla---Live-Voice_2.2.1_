.class public Lcom/twobigears/audio360/AssetDescriptor;
.super Ljava/lang/Object;
.source "AssetDescriptor.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_AssetDescriptor__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/AssetDescriptor;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/twobigears/audio360/Audio360JNI;->new_AssetDescriptor__SWIG_1(JJ)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/twobigears/audio360/AssetDescriptor;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AssetDescriptor;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AssetDescriptor(J)V

    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/twobigears/audio360/AssetDescriptor;->delete()V

    return-void
.end method

.method public getLengthInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AssetDescriptor_lengthInBytes_get(JLcom/twobigears/audio360/AssetDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffsetInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AssetDescriptor_offsetInBytes_get(JLcom/twobigears/audio360/AssetDescriptor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setLengthInBytes(J)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AssetDescriptor_lengthInBytes_set(JLcom/twobigears/audio360/AssetDescriptor;J)V

    return-void
.end method

.method public setOffsetInBytes(J)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AssetDescriptor;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AssetDescriptor_offsetInBytes_set(JLcom/twobigears/audio360/AssetDescriptor;J)V

    return-void
.end method
