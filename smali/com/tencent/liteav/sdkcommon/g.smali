.class final Lcom/tencent/liteav/sdkcommon/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/sdkcommon/g$b;,
        Lcom/tencent/liteav/sdkcommon/g$c;,
        Lcom/tencent/liteav/sdkcommon/g$a;
    }
.end annotation


# instance fields
.field final a:Landroid/util/DisplayMetrics;

.field final b:Landroid/view/WindowManager$LayoutParams;

.field final c:Landroid/content/Context;

.field final d:Landroid/os/Handler;

.field final e:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/view/WindowManager;

.field g:Landroid/view/View;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/Spinner;

.field k:Landroid/widget/ScrollView;

.field l:Ljava/lang/String;

.field m:Z

.field n:I

.field final o:Lcom/tencent/liteav/sdkcommon/g$a;

.field private final p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/sdkcommon/g$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/tencent/liteav/sdkcommon/g;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/sdkcommon/g;->q:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/sdkcommon/g;->m:Z

    const/16 v0, 0x780

    iput v0, p0, Lcom/tencent/liteav/sdkcommon/g;->n:I

    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/g;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/liteav/sdkcommon/g;->o:Lcom/tencent/liteav/sdkcommon/g$a;

    new-instance p2, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/tencent/liteav/sdkcommon/g;->e:Landroid/widget/ArrayAdapter;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/g;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->j:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/sdkcommon/g;->d:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/liteav/sdkcommon/h;->a(Lcom/tencent/liteav/sdkcommon/g;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/liteav/sdkcommon/g;->q:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/liteav/sdkcommon/g;->g:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/liteav/sdkcommon/g;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/liteav/sdkcommon/g;->q:Z

    return-void
.end method

.method final b()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0xe6

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/sdkcommon/g;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/sdkcommon/g;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
