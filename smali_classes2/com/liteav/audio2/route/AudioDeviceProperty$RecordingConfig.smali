.class Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liteav/audio2/route/AudioDeviceProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecordingConfig"
.end annotation


# instance fields
.field a:I

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;->a:I

    return v0
.end method

.method public isSilenced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liteav/audio2/route/AudioDeviceProperty$RecordingConfig;->b:Z

    return v0
.end method