.class public Lcom/twobigears/audio360/AttenuationProps;
.super Ljava/lang/Object;
.source "AttenuationProps.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_AttenuationProps__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/AttenuationProps;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/twobigears/audio360/Audio360JNI;->new_AttenuationProps__SWIG_2(FFF)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/twobigears/audio360/AttenuationProps;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFFZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/twobigears/audio360/Audio360JNI;->new_AttenuationProps__SWIG_1(FFFZ)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/twobigears/audio360/AttenuationProps;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AttenuationProps;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AttenuationProps(J)V

    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/twobigears/audio360/AttenuationProps;->delete()V

    return-void
.end method

.method public getFactor()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AttenuationProps_factor_get(JLcom/twobigears/audio360/AttenuationProps;)F

    move-result v0

    return v0
.end method

.method public getMaxDistanceMute()Z
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AttenuationProps_maxDistanceMute_get(JLcom/twobigears/audio360/AttenuationProps;)Z

    move-result v0

    return v0
.end method

.method public getMaximumDistance()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AttenuationProps_maximumDistance_get(JLcom/twobigears/audio360/AttenuationProps;)F

    move-result v0

    return v0
.end method

.method public getMinimumDistance()F
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AttenuationProps_minimumDistance_get(JLcom/twobigears/audio360/AttenuationProps;)F

    move-result v0

    return v0
.end method

.method public setFactor(F)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AttenuationProps_factor_set(JLcom/twobigears/audio360/AttenuationProps;F)V

    return-void
.end method

.method public setMaxDistanceMute(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AttenuationProps_maxDistanceMute_set(JLcom/twobigears/audio360/AttenuationProps;Z)V

    return-void
.end method

.method public setMaximumDistance(F)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AttenuationProps_maximumDistance_set(JLcom/twobigears/audio360/AttenuationProps;F)V

    return-void
.end method

.method public setMinimumDistance(F)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/AttenuationProps;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AttenuationProps_minimumDistance_set(JLcom/twobigears/audio360/AttenuationProps;F)V

    return-void
.end method
