.class public final Lcom/unity3d/services/banners/UnityBanners;
.super Ljava/lang/Object;
.source "UnityBanners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/banners/UnityBanners$c;,
        Lcom/unity3d/services/banners/UnityBanners$d;
    }
.end annotation


# static fields
.field private static a:Lcom/unity3d/services/banners/UnityBanners;


# instance fields
.field private b:Lcom/unity3d/services/banners/IUnityBannerListener;

.field private c:Lcom/unity3d/services/banners/view/a;

.field private d:Lcom/unity3d/services/banners/UnityBanners$d;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/services/banners/view/a;->h:Lcom/unity3d/services/banners/view/a;

    iput-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->c:Lcom/unity3d/services/banners/view/a;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/banners/UnityBanners;)Lcom/unity3d/services/banners/IUnityBannerListener;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/services/banners/UnityBanners;->b:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->d:Lcom/unity3d/services/banners/UnityBanners$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/services/banners/UnityBanners$d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->d:Lcom/unity3d/services/banners/UnityBanners$d;

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners;->d:Lcom/unity3d/services/banners/UnityBanners$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/banners/UnityBanners$c;

    new-instance v1, Lcom/unity3d/services/banners/UnityBannerSize;

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/unity3d/services/banners/UnityBanners$c;-><init>(Lcom/unity3d/services/banners/UnityBanners;Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    new-instance p2, Lcom/unity3d/services/banners/UnityBanners$d;

    invoke-direct {p2, p0, p1, v0}, Lcom/unity3d/services/banners/UnityBanners$d;-><init>(Lcom/unity3d/services/banners/UnityBanners;Landroid/content/Context;Lcom/unity3d/services/banners/UnityBanners$c;)V

    iget-object p1, p0, Lcom/unity3d/services/banners/UnityBanners;->c:Lcom/unity3d/services/banners/view/a;

    invoke-virtual {p2, p1}, Lcom/unity3d/services/banners/UnityBanners$d;->a(Lcom/unity3d/services/banners/view/a;)V

    iput-object p2, p0, Lcom/unity3d/services/banners/UnityBanners;->d:Lcom/unity3d/services/banners/UnityBanners$d;

    new-instance p1, Lcom/unity3d/services/banners/UnityBanners$a;

    invoke-direct {p1, p0, p0, p2}, Lcom/unity3d/services/banners/UnityBanners$a;-><init>(Lcom/unity3d/services/banners/UnityBanners;Lcom/unity3d/services/banners/UnityBanners;Lcom/unity3d/services/banners/UnityBanners$d;)V

    invoke-virtual {v0, p1}, Lcom/unity3d/services/banners/UnityBanners$c;->a(Lcom/unity3d/services/banners/BannerView$IListener;)V

    invoke-virtual {v0}, Lcom/unity3d/services/banners/UnityBanners$c;->b()V

    goto :goto_0

    :cond_0
    const-string p1, "A Banner is already in use, please call destroy before loading another banner!"

    invoke-static {p1}, Lcom/unity3d/services/banners/UnityBanners;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/unity3d/services/banners/UnityBanners$b;

    invoke-direct {v0, p0}, Lcom/unity3d/services/banners/UnityBanners$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b()Lcom/unity3d/services/banners/UnityBanners;
    .locals 1

    sget-object v0, Lcom/unity3d/services/banners/UnityBanners;->a:Lcom/unity3d/services/banners/UnityBanners;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/banners/UnityBanners;

    invoke-direct {v0}, Lcom/unity3d/services/banners/UnityBanners;-><init>()V

    sput-object v0, Lcom/unity3d/services/banners/UnityBanners;->a:Lcom/unity3d/services/banners/UnityBanners;

    :cond_0
    sget-object v0, Lcom/unity3d/services/banners/UnityBanners;->a:Lcom/unity3d/services/banners/UnityBanners;

    return-object v0
.end method

.method public static destroy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->b()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    invoke-direct {v0}, Lcom/unity3d/services/banners/UnityBanners;->a()V

    return-void
.end method

.method public static getBannerListener()Lcom/unity3d/services/banners/IUnityBannerListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->b()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/banners/UnityBanners;->b:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-object v0
.end method

.method public static loadBanner(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/core/log/a;->a()V

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unity Ads is not supported on this device."

    invoke-static {v0}, Lcom/unity3d/services/banners/UnityBanners;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "UnityAds is not initialized."

    invoke-static {p0}, Lcom/unity3d/services/banners/UnityBanners;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/unity3d/services/core/properties/a;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->b()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/unity3d/services/banners/UnityBanners;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static setBannerListener(Lcom/unity3d/services/banners/IUnityBannerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->b()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iput-object p0, v0, Lcom/unity3d/services/banners/UnityBanners;->b:Lcom/unity3d/services/banners/IUnityBannerListener;

    return-void
.end method

.method public static setBannerPosition(Lcom/unity3d/services/banners/view/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/unity3d/services/banners/UnityBanners;->b()Lcom/unity3d/services/banners/UnityBanners;

    move-result-object v0

    iput-object p0, v0, Lcom/unity3d/services/banners/UnityBanners;->c:Lcom/unity3d/services/banners/view/a;

    return-void
.end method
