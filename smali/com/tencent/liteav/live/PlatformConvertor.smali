.class public Lcom/tencent/liteav/live/PlatformConvertor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformConvertor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDisplayTarget(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/videobase/DisplayTarget;
    .locals 1

    instance-of v0, p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    check-cast p0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/view/TextureView;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    check-cast p0, Landroid/view/TextureView;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/TextureView;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    check-cast p0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/SurfaceView;)V

    return-object v0

    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "object is unknown. object="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlatformConvertor"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static initContextFromNative(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/liteav/base/ContextUtils;->initContextFromNative(Ljava/lang/String;)V

    return-void
.end method
