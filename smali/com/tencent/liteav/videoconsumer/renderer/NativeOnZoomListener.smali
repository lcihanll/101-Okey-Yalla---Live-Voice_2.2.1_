.class public Lcom/tencent/liteav/videoconsumer/renderer/NativeOnZoomListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/rtmp/ui/b;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mNativeHandler:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/NativeOnZoomListener;->mNativeHandler:J

    return-void
.end method

.method private static native nativeOnZoom(JF)V
.end method


# virtual methods
.method public onZoom(F)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/NativeOnZoomListener;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoconsumer/renderer/NativeOnZoomListener;->nativeOnZoom(JF)V

    :cond_0
    return-void
.end method

.method public declared-synchronized resetNativeHandle()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/NativeOnZoomListener;->mNativeHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
