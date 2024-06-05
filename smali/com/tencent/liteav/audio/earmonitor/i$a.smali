.class final Lcom/tencent/liteav/audio/earmonitor/i$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/earmonitor/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/earmonitor/i$a;->a:Z

    iput-object p1, p0, Lcom/tencent/liteav/audio/earmonitor/i$a;->b:Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    new-instance v6, Lcom/tencent/liteav/audio/LiteavAudioTrack;

    invoke-direct {v6}, Lcom/tencent/liteav/audio/LiteavAudioTrack;-><init>()V

    const/4 v1, 0x3

    const v2, 0xbb80

    const/16 v3, 0xc

    const/16 v4, 0xf00

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/audio/LiteavAudioTrack;->startPlayout(IIIIZ)I

    const/16 v0, 0xf00

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    iget-boolean v2, p0, Lcom/tencent/liteav/audio/earmonitor/i$a;->a:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/earmonitor/i$a;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v6, v1, v3, v0, v2}, Lcom/tencent/liteav/audio/LiteavAudioTrack;->write(Ljava/nio/ByteBuffer;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/i$a;->b:Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;

    iget-object v1, p0, Lcom/tencent/liteav/audio/earmonitor/i$a;->b:Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifySystemError(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;)V

    :cond_0
    invoke-virtual {v6}, Lcom/tencent/liteav/audio/LiteavAudioTrack;->stopPlayout()V

    return-void
.end method
