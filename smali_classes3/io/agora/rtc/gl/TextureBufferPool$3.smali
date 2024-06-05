.class Lio/agora/rtc/gl/TextureBufferPool$3;
.super Ljava/lang/Object;
.source "TextureBufferPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/TextureBufferPool;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/gl/TextureBufferPool;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/TextureBufferPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/agora/rtc/gl/TextureBufferPool;->access$302(Lio/agora/rtc/gl/TextureBufferPool;Z)Z

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$400(Lio/agora/rtc/gl/TextureBufferPool;)Lio/agora/rtc/gl/TextureBufferPool$PoolMode;

    move-result-object v0

    sget-object v1, Lio/agora/rtc/gl/TextureBufferPool$PoolMode;->POOL_MODE_DYNAMIC:Lio/agora/rtc/gl/TextureBufferPool$PoolMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$500(Lio/agora/rtc/gl/TextureBufferPool;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$600(Lio/agora/rtc/gl/TextureBufferPool;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$400(Lio/agora/rtc/gl/TextureBufferPool;)Lio/agora/rtc/gl/TextureBufferPool$PoolMode;

    move-result-object v0

    sget-object v1, Lio/agora/rtc/gl/TextureBufferPool$PoolMode;->POOL_MODE_STATIC:Lio/agora/rtc/gl/TextureBufferPool$PoolMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$700(Lio/agora/rtc/gl/TextureBufferPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v1}, Lio/agora/rtc/gl/TextureBufferPool;->access$800(Lio/agora/rtc/gl/TextureBufferPool;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$600(Lio/agora/rtc/gl/TextureBufferPool;)V

    :cond_1
    :goto_0
    return-void
.end method
