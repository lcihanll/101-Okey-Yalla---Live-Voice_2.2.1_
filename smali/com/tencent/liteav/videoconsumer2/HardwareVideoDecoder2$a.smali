.class final Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/media/MediaCodec;

.field public b:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$a;->a:Landroid/media/MediaCodec;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$a;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$a;->d:Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer2/HardwareVideoDecoder2$a;-><init>()V

    return-void
.end method
