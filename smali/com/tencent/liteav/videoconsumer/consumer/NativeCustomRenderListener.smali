.class public Lcom/tencent/liteav/videoconsumer/consumer/NativeCustomRenderListener;
.super Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NativeCustomRenderListener"


# instance fields
.field private mNativeVideoCustomRenderListener:J


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeCustomRenderListener;->mNativeVideoCustomRenderListener:J

    iput-wide p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeCustomRenderListener;->mNativeVideoCustomRenderListener:J

    return-void
.end method

.method private native nativeOnCustomRenderFrame(JLcom/tencent/liteav/videobase/frame/PixelFrame;IIJI)V
.end method

.method private declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeCustomRenderListener;->mNativeVideoCustomRenderListener:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onRenderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener$a;)V
    .locals 9

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeCustomRenderListener;->mNativeVideoCustomRenderListener:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "NativeCustomRenderListener"

    const-string p2, "PixelFrame PixelFormatType is null."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/tencent/liteav/videoconsumer/consumer/NativeCustomRenderListener;->mNativeVideoCustomRenderListener:J

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->getValue()I

    move-result v8

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/tencent/liteav/videoconsumer/consumer/NativeCustomRenderListener;->nativeOnCustomRenderFrame(JLcom/tencent/liteav/videobase/frame/PixelFrame;IIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method
