.class Lcom/unity3d/services/banners/UnityBanners$c$b;
.super Ljava/lang/Object;
.source "UnityBanners.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/UnityBanners$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/services/banners/UnityBanners$c;

.field final synthetic b:Lcom/unity3d/services/banners/UnityBanners$c;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/UnityBanners$c;Lcom/unity3d/services/banners/UnityBanners$c;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/banners/UnityBanners$c$b;->b:Lcom/unity3d/services/banners/UnityBanners$c;

    iput-object p2, p0, Lcom/unity3d/services/banners/UnityBanners$c$b;->a:Lcom/unity3d/services/banners/UnityBanners$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c$b;->a:Lcom/unity3d/services/banners/UnityBanners$c;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    return-void
.end method
