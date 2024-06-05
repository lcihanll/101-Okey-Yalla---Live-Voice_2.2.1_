.class Lcom/unity3d/services/banners/UnityBanners$c;
.super Landroid/widget/RelativeLayout;
.source "UnityBanners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/banners/UnityBanners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/banners/UnityBanners$c$d;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private d:Lcom/unity3d/services/banners/BannerView;

.field private e:Z

.field private f:Z

.field private g:Lcom/unity3d/services/banners/UnityBanners$c$d;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;

.field private j:J

.field final synthetic k:Lcom/unity3d/services/banners/UnityBanners;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/banners/UnityBanners;Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V
    .locals 3

    iput-object p1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->k:Lcom/unity3d/services/banners/UnityBanners;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->b:Z

    const-wide/16 v1, 0x1e

    iput-wide v1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->c:J

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->e:Z

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->f:Z

    iput-object p3, p0, Lcom/unity3d/services/banners/UnityBanners$c;->a:Ljava/lang/String;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->h:Landroid/os/Handler;

    new-instance v1, Lcom/unity3d/services/banners/UnityBanners$c$a;

    invoke-direct {v1, p0, p1, p0}, Lcom/unity3d/services/banners/UnityBanners$c$a;-><init>(Lcom/unity3d/services/banners/UnityBanners$c;Lcom/unity3d/services/banners/UnityBanners;Lcom/unity3d/services/banners/UnityBanners$c;)V

    iput-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->d()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance p1, Lcom/unity3d/services/banners/BannerView;

    invoke-direct {p1, p2, p3, p4}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    iput-object p1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->d:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/banners/UnityBanners$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->c()V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/services/banners/UnityBanners$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->f()V

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->d:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->load()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/unity3d/services/banners/UnityBanners$c;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->j:J

    iget-object v2, p0, Lcom/unity3d/services/banners/UnityBanners$c;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unity3d/services/banners/UnityBanners$c;->i:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/unity3d/services/banners/UnityBanners$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private e()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/unity3d/services/banners/UnityBanners$c;->j:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->c()V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->i:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->f:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->d()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unity3d/services/banners/UnityBanners$c$c;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/services/banners/UnityBanners$c$c;-><init>(Lcom/unity3d/services/banners/UnityBanners$c;Lcom/unity3d/services/banners/UnityBanners$c;)V

    iput-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->g:Lcom/unity3d/services/banners/UnityBanners$c$d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->f:Z

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->d()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->g:Lcom/unity3d/services/banners/UnityBanners$c$d;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->f:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->g:Lcom/unity3d/services/banners/UnityBanners$c$d;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->d()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->f:Z

    invoke-static {}, Lcom/unity3d/services/core/properties/a;->d()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->g:Lcom/unity3d/services/banners/UnityBanners$c$d;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->f()V

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->d:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->destroy()V

    new-instance v0, Lcom/unity3d/services/banners/UnityBanners$c$b;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/services/banners/UnityBanners$c$b;-><init>(Lcom/unity3d/services/banners/UnityBanners$c;Lcom/unity3d/services/banners/UnityBanners$c;)V

    invoke-static {v0}, Lcom/unity3d/services/core/misc/j;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->d:Lcom/unity3d/services/banners/BannerView;

    return-void
.end method

.method public a(Lcom/unity3d/services/banners/BannerView$IListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->d:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v0, p1}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->b:Z

    invoke-static {}, Lcom/unity3d/services/banners/properties/a;->a()Lcom/unity3d/services/banners/properties/a;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/banners/UnityBanners$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/banners/properties/a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->c:J

    :cond_0
    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->c()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->g()V

    iget-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/banners/UnityBanners$c;->e:Z

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->f()V

    invoke-direct {p0}, Lcom/unity3d/services/banners/UnityBanners$c;->h()V

    return-void
.end method
