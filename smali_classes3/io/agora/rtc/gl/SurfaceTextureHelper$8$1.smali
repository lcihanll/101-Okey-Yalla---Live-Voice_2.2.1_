.class Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/SurfaceTextureHelper$8;->call()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/agora/rtc/gl/SurfaceTextureHelper$8;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/SurfaceTextureHelper$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;->this$1:Lio/agora/rtc/gl/SurfaceTextureHelper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;->this$1:Lio/agora/rtc/gl/SurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$1200(Lio/agora/rtc/gl/SurfaceTextureHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;-><init>(Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
