.class final Lcom/unity3d/services/ads/api/WebPlayer$g;
.super Ljava/lang/Object;
.source "WebPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/api/WebPlayer;->getFrame(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/webview/bridge/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/services/ads/webplayer/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/webplayer/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->a:Lcom/unity3d/services/ads/webplayer/f;

    iput-object p2, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v4, v0, v1

    const/4 v1, 0x1

    aget v5, v0, v1

    iget-object v0, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->a:Lcom/unity3d/services/ads/webplayer/f;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getAlpha()F

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/services/ads/api/WebPlayer$g;->c:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/unity3d/services/ads/webplayer/d;->a(Ljava/lang/String;Ljava/lang/String;IIIIF)V

    return-void
.end method
