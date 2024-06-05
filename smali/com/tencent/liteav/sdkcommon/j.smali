.class final synthetic Lcom/tencent/liteav/sdkcommon/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/tencent/liteav/sdkcommon/g;

.field private final b:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/g;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/j;->a:Lcom/tencent/liteav/sdkcommon/g;

    iput-object p2, p0, Lcom/tencent/liteav/sdkcommon/j;->b:Landroid/widget/Button;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/sdkcommon/g;Landroid/widget/Button;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/sdkcommon/j;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/sdkcommon/j;-><init>(Lcom/tencent/liteav/sdkcommon/g;Landroid/widget/Button;)V

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/tencent/liteav/sdkcommon/j;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-boolean v0, p1, Lcom/tencent/liteav/sdkcommon/g;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Lcom/tencent/liteav/sdkcommon/g;->n:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Lcom/tencent/liteav/sdkcommon/g;->n:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p1, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p1, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_1

    iget-object v0, p1, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p1, Lcom/tencent/liteav/sdkcommon/g;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p1, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/tencent/liteav/sdkcommon/g;->m:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/liteav/sdkcommon/g;->m:Z

    iget-object v0, p1, Lcom/tencent/liteav/sdkcommon/g;->f:Landroid/view/WindowManager;

    iget-object v1, p1, Lcom/tencent/liteav/sdkcommon/g;->g:Landroid/view/View;

    iget-object v2, p1, Lcom/tencent/liteav/sdkcommon/g;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/liteav/sdkcommon/g;->b()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p1, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/tencent/liteav/sdkcommon/g;->d:Landroid/os/Handler;

    invoke-static {p1}, Lcom/tencent/liteav/sdkcommon/l;->a(Lcom/tencent/liteav/sdkcommon/g;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
