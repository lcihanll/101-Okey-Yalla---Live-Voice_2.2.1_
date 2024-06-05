.class final Lcom/liteav/audio2/earmonitor/h$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liteav/audio2/earmonitor/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;


# direct methods
.method public constructor <init>(Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liteav/audio2/earmonitor/h$a;->a:Z

    iput-object p1, p0, Lcom/liteav/audio2/earmonitor/h$a;->b:Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lcom/liteav/audio2/LiteavAudioTrack2;

    invoke-direct {v0}, Lcom/liteav/audio2/LiteavAudioTrack2;-><init>()V

    const/4 v1, 0x3

    const v2, 0xbb80

    const/16 v3, 0xc

    const/16 v4, 0xf00

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liteav/audio2/LiteavAudioTrack2;->startPlayout(IIII)I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-array v2, v4, [B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    iget-boolean v2, p0, Lcom/liteav/audio2/earmonitor/h$a;->a:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/liteav/audio2/earmonitor/h$a;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v3, v4}, Lcom/liteav/audio2/LiteavAudioTrack2;->write(Ljava/nio/ByteBuffer;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/liteav/audio2/earmonitor/h$a;->b:Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;

    iget-object v2, p0, Lcom/liteav/audio2/earmonitor/h$a;->b:Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;

    invoke-virtual {v1, v2}, Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;->notifySystemEarMonitoringError(Lcom/liteav/audio2/earmonitor/SystemEarMonitoring;)V

    :cond_0
    invoke-virtual {v0}, Lcom/liteav/audio2/LiteavAudioTrack2;->stopPlayout()V

    return-void
.end method
