.class public Lio/agora/rtc/audio/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"


# instance fields
.field public filePath:Ljava/lang/String;

.field public recordingPosition:I

.field public recordingQuality:I

.field public recordingSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingQuality:I

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingPosition:I

    const/16 v0, 0x7d00

    iput v0, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingSampleRate:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "quality",
            "position",
            "sampleRate"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->filePath:Ljava/lang/String;

    iput p2, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingQuality:I

    iput p3, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingPosition:I

    iput p4, p0, Lio/agora/rtc/audio/AudioRecordingConfiguration;->recordingSampleRate:I

    return-void
.end method
