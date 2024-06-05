.class final Lcom/tencent/liteav/sdkcommon/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/sdkcommon/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/sdkcommon/g;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/sdkcommon/g;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/sdkcommon/g$b;-><init>(Lcom/tencent/liteav/sdkcommon/g;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget v3, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    sub-int v4, p2, v4

    iget-object v5, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v5, v5, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v6, v6, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v3, v3, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v5, v5, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    iput p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le p2, v0, :cond_1

    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v3, v3, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget v0, v0, Lcom/tencent/liteav/sdkcommon/g;->n:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-boolean p2, p2, Lcom/tencent/liteav/sdkcommon/g;->m:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget v0, v0, Lcom/tencent/liteav/sdkcommon/g;->n:I

    div-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p2, v0, :cond_3

    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v2, v2, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    invoke-virtual {v0}, Lcom/tencent/liteav/sdkcommon/g;->b()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object p2, p2, Lcom/tencent/liteav/sdkcommon/g;->f:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/sdkcommon/g$b;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/tencent/liteav/sdkcommon/g$b;->c:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v1
.end method
