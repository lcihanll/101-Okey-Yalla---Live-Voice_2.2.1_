.class Lcom/unity3d/services/banners/view/b$c;
.super Ljava/lang/Object;
.source "BannerWebPlayerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/view/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/services/banners/view/b;

.field final synthetic b:Lcom/unity3d/services/banners/view/b;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/view/b;Lcom/unity3d/services/banners/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/banners/view/b$c;->b:Lcom/unity3d/services/banners/view/b;

    iput-object p2, p0, Lcom/unity3d/services/banners/view/b$c;->a:Lcom/unity3d/services/banners/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b$c;->a:Lcom/unity3d/services/banners/view/b;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b$c;->a:Lcom/unity3d/services/banners/view/b;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/unity3d/services/banners/view/b$c;->a:Lcom/unity3d/services/banners/view/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/banners/view/b$c;->a:Lcom/unity3d/services/banners/view/b;

    invoke-static {v0}, Lcom/unity3d/services/banners/view/b;->a(Lcom/unity3d/services/banners/view/b;)Lcom/unity3d/services/ads/webplayer/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b$c;->a:Lcom/unity3d/services/banners/view/b;

    invoke-static {v0}, Lcom/unity3d/services/banners/view/b;->a(Lcom/unity3d/services/banners/view/b;)Lcom/unity3d/services/ads/webplayer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/ads/webplayer/f;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/banners/view/b$c;->a:Lcom/unity3d/services/banners/view/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/services/banners/view/b;->a(Lcom/unity3d/services/banners/view/b;Lcom/unity3d/services/ads/webplayer/f;)Lcom/unity3d/services/ads/webplayer/f;

    return-void
.end method
