.class public interface abstract Lio/agora/rtc/IAudioEffectManager;
.super Ljava/lang/Object;
.source "IAudioEffectManager.java"


# virtual methods
.method public abstract configRhythmPlayer(Lio/agora/rtc/audio/AgoraRhythmPlayerConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract getEffectCurrentPosition(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation
.end method

.method public abstract getEffectDuration(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation
.end method

.method public abstract getEffectsVolume()D
.end method

.method public abstract pauseAllEffects()I
.end method

.method public abstract pauseEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation
.end method

.method public abstract playEffect(ILjava/lang/String;IDDD)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundId",
            "filePath",
            "loop",
            "pitch",
            "pan",
            "gain"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playEffect(ILjava/lang/String;IDDDZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundId",
            "filePath",
            "loopCount",
            "pitch",
            "pan",
            "gain",
            "publish"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playEffect(ILjava/lang/String;IDDDZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundId",
            "filePath",
            "loopCount",
            "pitch",
            "pan",
            "gain",
            "publish",
            "startPos"
        }
    .end annotation
.end method

.method public abstract preloadEffect(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soundId",
            "filePath"
        }
    .end annotation
.end method

.method public abstract resumeAllEffects()I
.end method

.method public abstract resumeEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation
.end method

.method public abstract setEffectPosition(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soundId",
            "pos"
        }
    .end annotation
.end method

.method public abstract setEffectsVolume(D)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setVolumeOfEffect(ID)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soundId",
            "volume"
        }
    .end annotation
.end method

.method public abstract startRhythmPlayer(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtc/audio/AgoraRhythmPlayerConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sound1",
            "sound2",
            "config"
        }
    .end annotation
.end method

.method public abstract stopAllEffects()I
.end method

.method public abstract stopEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation
.end method

.method public abstract stopRhythmPlayer()I
.end method

.method public abstract unloadEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation
.end method
