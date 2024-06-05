.class final synthetic Lcom/tencent/liteav/videobase/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videobase/c/j;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videobase/c/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/c/k;->a:Lcom/tencent/liteav/videobase/c/j;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videobase/c/j;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videobase/c/k;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/c/k;-><init>(Lcom/tencent/liteav/videobase/c/j;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videobase/c/k;->a:Lcom/tencent/liteav/videobase/c/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/c/j;->getProgramId()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v1, v0, Lcom/tencent/liteav/videobase/c/j;->a:I

    iget-object v2, v0, Lcom/tencent/liteav/videobase/c/j;->mOutputSize:Lcom/tencent/liteav/base/util/Size;

    iget v2, v2, Lcom/tencent/liteav/base/util/Size;->width:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/tencent/liteav/videobase/c/j;->b:I

    iget-object v0, v0, Lcom/tencent/liteav/videobase/c/j;->mOutputSize:Lcom/tencent/liteav/base/util/Size;

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
