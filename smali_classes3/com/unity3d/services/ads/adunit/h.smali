.class public Lcom/unity3d/services/ads/adunit/h;
.super Ljava/lang/Object;
.source "VideoPlayerHandler.java"

# interfaces
.implements Lcom/unity3d/services/ads/adunit/f;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/unity3d/services/ads/video/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/unity3d/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/adunit/h;->e(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z

    return-void
.end method

.method public a()Z
    .locals 3

    invoke-static {}, Lcom/unity3d/services/core/log/a;->a()V

    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/services/ads/video/c;->e()V

    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    invoke-static {v0}, Lcom/unity3d/services/core/misc/k;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    invoke-static {}, Lcom/unity3d/services/ads/api/VideoPlayer;->getVideoPlayerView()Lcom/unity3d/services/ads/video/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/unity3d/services/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/services/ads/video/c;)V

    :cond_0
    iput-object v1, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/unity3d/services/core/misc/k;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/unity3d/services/ads/adunit/h;->a:Landroid/widget/RelativeLayout;

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public b(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/h;->a()Z

    return-void
.end method

.method public c(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/log/a;->a()V

    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->a:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/unity3d/services/ads/video/c;

    invoke-direct {v0, p1}, Lcom/unity3d/services/ads/video/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unity3d/services/ads/adunit/h;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/unity3d/services/ads/adunit/h;->b:Lcom/unity3d/services/ads/video/c;

    invoke-static {p1}, Lcom/unity3d/services/ads/api/VideoPlayer;->setVideoPlayerView(Lcom/unity3d/services/ads/video/c;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V
    .locals 0

    return-void
.end method
