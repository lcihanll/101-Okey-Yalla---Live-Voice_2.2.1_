.class public final synthetic Lcom/tencent/liteav/videoconsumer/decoder/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field private final b:Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bc;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/bc;->b:Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/bc;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/bc;->b:Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;

    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->s:Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;

    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/e;

    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->s:Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;->hwDecoderMaxCacheForHighRes:I

    iput v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->i:I

    iget v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/VideoConsumerServerConfig;->hwDecoderMaxCacheForLowRes:I

    iput v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->j:I

    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v1, v1, Lcom/tencent/liteav/videoconsumer/decoder/e;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "set hardware decoder max cache to highResolution: %d, lowResolution: %d"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
