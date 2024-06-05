.class Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;->this$2:Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;->this$2:Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;->this$1:Lio/agora/rtc/gl/SurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$810(Lio/agora/rtc/gl/SurfaceTextureHelper;)I

    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;->this$2:Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;->this$1:Lio/agora/rtc/gl/SurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$700(Lio/agora/rtc/gl/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;->this$2:Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;->this$1:Lio/agora/rtc/gl/SurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$600(Lio/agora/rtc/gl/SurfaceTextureHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;->this$2:Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;->this$1:Lio/agora/rtc/gl/SurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$800(Lio/agora/rtc/gl/SurfaceTextureHelper;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1$1;->this$2:Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;->this$1:Lio/agora/rtc/gl/SurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$900(Lio/agora/rtc/gl/SurfaceTextureHelper;)V

    :cond_0
    return-void
.end method
