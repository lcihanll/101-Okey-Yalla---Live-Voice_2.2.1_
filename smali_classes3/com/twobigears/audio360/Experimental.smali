.class public Lcom/twobigears/audio360/Experimental;
.super Ljava/lang/Object;
.source "Experimental.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_Experimental()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/Experimental;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/twobigears/audio360/Experimental;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/twobigears/audio360/Experimental;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/Experimental;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/Experimental;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/Experimental;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/twobigears/audio360/Experimental;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/twobigears/audio360/Experimental;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_Experimental(J)V

    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/Experimental;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/twobigears/audio360/Experimental;->delete()V

    return-void
.end method

.method public getAmbisonicRenderer()Lcom/twobigears/audio360/AmbisonicRenderer;
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/Experimental;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->Experimental_ambisonicRenderer_get(JLcom/twobigears/audio360/Experimental;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/AmbisonicRenderer;->swigToEnum(I)Lcom/twobigears/audio360/AmbisonicRenderer;

    move-result-object v0

    return-object v0
.end method

.method public setAmbisonicRenderer(Lcom/twobigears/audio360/AmbisonicRenderer;)V
    .locals 2

    iget-wide v0, p0, Lcom/twobigears/audio360/Experimental;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/AmbisonicRenderer;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->Experimental_ambisonicRenderer_set(JLcom/twobigears/audio360/Experimental;I)V

    return-void
.end method
