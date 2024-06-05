.class public Lcom/unity3d/services/banners/view/b;
.super Landroid/widget/RelativeLayout;
.source "BannerWebPlayerContainer.java"


# instance fields
.field private a:Lcom/unity3d/services/ads/webplayer/f;

.field private b:I

.field private c:Lcom/unity3d/services/banners/UnityBannerSize;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/unity3d/services/banners/UnityBannerSize;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/services/banners/view/b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/banners/view/b;->h:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/unity3d/services/banners/view/b;->c:Lcom/unity3d/services/banners/UnityBannerSize;

    iput-object p2, p0, Lcom/unity3d/services/banners/view/b;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/banners/view/b;->e:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/unity3d/services/banners/view/b;->f:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/unity3d/services/banners/view/b;->g:Lorg/json/JSONObject;

    new-instance p3, Lcom/unity3d/services/ads/webplayer/f;

    iget-object p4, p0, Lcom/unity3d/services/banners/view/b;->e:Lorg/json/JSONObject;

    iget-object p5, p0, Lcom/unity3d/services/banners/view/b;->f:Lorg/json/JSONObject;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/unity3d/services/ads/webplayer/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object p3, p0, Lcom/unity3d/services/banners/view/b;->a:Lcom/unity3d/services/ads/webplayer/f;

    iget-object p1, p0, Lcom/unity3d/services/banners/view/b;->g:Lorg/json/JSONObject;

    invoke-virtual {p3, p1}, Lcom/unity3d/services/ads/webplayer/f;->setEventSettings(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/unity3d/services/banners/view/b;->c()V

    iget-object p1, p0, Lcom/unity3d/services/banners/view/b;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/unity3d/services/banners/view/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/banners/view/b;)Lcom/unity3d/services/ads/webplayer/f;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/services/banners/view/b;->a:Lcom/unity3d/services/ads/webplayer/f;

    return-object p0
.end method

.method static synthetic a(Lcom/unity3d/services/banners/view/b;Lcom/unity3d/services/ads/webplayer/f;)Lcom/unity3d/services/ads/webplayer/f;
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/banners/view/b;->a:Lcom/unity3d/services/ads/webplayer/f;

    return-object p1
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/banners/view/b;->c:Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-virtual {v1}, Lcom/unity3d/services/banners/UnityBannerSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/unity3d/services/core/misc/k;->b(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/banners/view/b;->c:Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-virtual {v2}, Lcom/unity3d/services/banners/UnityBannerSize;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/unity3d/services/core/misc/k;->b(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/unity3d/services/banners/view/b;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/unity3d/services/banners/view/b$a;

    invoke-direct {v0, p0}, Lcom/unity3d/services/banners/view/b$a;-><init>(Lcom/unity3d/services/banners/view/b;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v1, Lcom/unity3d/services/banners/view/b$b;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/services/banners/view/b$b;-><init>(Lcom/unity3d/services/banners/view/b;Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/unity3d/services/banners/view/b;->h:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    new-instance v0, Lcom/unity3d/services/banners/view/b$c;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/services/banners/view/b$c;-><init>(Lcom/unity3d/services/banners/view/b;Lcom/unity3d/services/banners/view/b;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/view/View;IIIIIIII)V
    .locals 6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0xb

    if-lt p1, p6, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p1

    move v5, p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, p0, Lcom/unity3d/services/banners/view/b;->d:Ljava/lang/String;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/banners/bridge/a;->a(Ljava/lang/String;IIIIF)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p0, p1}, Lcom/unity3d/services/banners/view/b;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/banners/view/b;->e:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/unity3d/services/banners/view/b;->f:Lorg/json/JSONObject;

    return-void
.end method

.method public getWebPlayer()Lcom/unity3d/services/ads/webplayer/f;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b;->a:Lcom/unity3d/services/ads/webplayer/f;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/services/banners/bridge/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unity3d/services/banners/view/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/services/banners/bridge/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v2

    const/high16 p3, 0x3f800000    # 1.0f

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p4, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p3

    move v5, p3

    goto :goto_0

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, p0, Lcom/unity3d/services/banners/view/b;->d:Ljava/lang/String;

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/banners/bridge/a;->a(Ljava/lang/String;IIIIF)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p0, p1}, Lcom/unity3d/services/banners/view/b;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-ne p1, p0, :cond_2

    iget p1, p0, Lcom/unity3d/services/banners/view/b;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/unity3d/services/banners/view/b;->b:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unity3d/services/banners/view/b;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/unity3d/services/banners/bridge/a;->a(Ljava/lang/String;I)V

    :cond_1
    iput p2, p0, Lcom/unity3d/services/banners/view/b;->b:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/unity3d/services/banners/view/b;->a(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public setWebPlayerEventSettings(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/banners/view/b;->g:Lorg/json/JSONObject;

    return-void
.end method
