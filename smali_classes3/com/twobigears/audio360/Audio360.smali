.class public Lcom/twobigears/audio360/Audio360;
.super Ljava/lang/Object;
.source "Audio360.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioSettings_default()Lcom/twobigears/audio360/AudioSettings;
    .locals 5

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->AudioSettings_default_get()J

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

.method public static getEngineInitSettings_default()Lcom/twobigears/audio360/EngineInitSettings;
    .locals 5

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->EngineInitSettings_default_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/twobigears/audio360/EngineInitSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/EngineInitSettings;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static getKMaxStrSize()J
    .locals 2

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->kMaxStrSize_get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMemorySettings_default()Lcom/twobigears/audio360/MemorySettings;
    .locals 5

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_default_get()J

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

.method public static getNetworkSettings_default()Lcom/twobigears/audio360/NetworkSettings;
    .locals 5

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->NetworkSettings_default_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/twobigears/audio360/NetworkSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/NetworkSettings;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static getNumChannelsForMap(Lcom/twobigears/audio360/ChannelMap;)I
    .locals 0

    invoke-virtual {p0}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result p0

    invoke-static {p0}, Lcom/twobigears/audio360/Audio360JNI;->getNumChannelsForMap(I)I

    move-result p0

    return p0
.end method
