.class Lio/agora/rtc/gl/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/SurfaceTextureHelper;-><init>(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/SurfaceTextureHelper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$name"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    iput-object p2, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$302(Lio/agora/rtc/gl/SurfaceTextureHelper;Z)Z

    iget-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {p1}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$500(Lio/agora/rtc/gl/SurfaceTextureHelper;)V

    return-void
.end method
