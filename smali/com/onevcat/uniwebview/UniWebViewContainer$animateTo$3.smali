.class public final Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;
.super Ljava/lang/Object;
.source "UniWebViewContainer.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewContainer;->animateTo(IIIIFFLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onevcat/uniwebview/UniWebViewContainer$animateTo$3",
        "Landroid/view/animation/Animation$AnimationListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationRepeat",
        "onAnimationStart",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $height:I

.field final synthetic $identifier:Ljava/lang/String;

.field final synthetic $width:I

.field final synthetic $x:I

.field final synthetic $y:I

.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewContainer;IIIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;

    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$x:I

    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$y:I

    iput p4, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$width:I

    iput p5, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$height:I

    iput-object p6, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->setCurrentAnimation(Landroid/view/animation/AnimationSet;)V

    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;

    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$x:I

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$y:I

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$width:I

    iget v3, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$height:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/onevcat/uniwebview/UniWebViewContainer;->setFrame(IIII)V

    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebViewContainer;->access$getMessageSender$p(Lcom/onevcat/uniwebview/UniWebViewContainer;)Lcom/onevcat/uniwebview/UnityMessageSender;

    move-result-object p1

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->getWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onevcat/uniwebview/UnityMethod;->AnimateToFinished:Lcom/onevcat/uniwebview/UnityMethod;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;->$identifier:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
