.class Lio/agora/rtc/gl/TextureBufferImpl$2;
.super Ljava/lang/Object;
.source "TextureBufferImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/TextureBufferImpl;->toI420()Lio/agora/rtc/gl/VideoFrame$I420Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/agora/rtc/gl/VideoFrame$I420Buffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/gl/TextureBufferImpl;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/TextureBufferImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferImpl$2;->this$0:Lio/agora/rtc/gl/TextureBufferImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl$2;->this$0:Lio/agora/rtc/gl/TextureBufferImpl;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferImpl;->access$100(Lio/agora/rtc/gl/TextureBufferImpl;)Lio/agora/rtc/gl/YuvConverter;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl$2;->this$0:Lio/agora/rtc/gl/TextureBufferImpl;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/YuvConverter;->convert(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl$2;->call()Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method
