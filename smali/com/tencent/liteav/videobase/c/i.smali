.class public abstract Lcom/tencent/liteav/videobase/c/i;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

.field protected final b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

.field private c:I

.field private final d:[I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/liteav/videobase/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/tencent/liteav/videobase/c/i;->d:[I

    const/4 p2, 0x0

    iput p2, p0, Lcom/tencent/liteav/videobase/c/i;->e:I

    iput p2, p0, Lcom/tencent/liteav/videobase/c/i;->f:I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    if-ne p4, p1, :cond_0

    sget-object p4, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    :cond_0
    iput-object p4, p0, Lcom/tencent/liteav/videobase/c/i;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    if-ne p3, p1, :cond_1

    sget-object p3, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    :cond_1
    iput-object p3, p0, Lcom/tencent/liteav/videobase/c/i;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/c/i;->d:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v1, v1, v0

    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    iget-object v1, p0, Lcom/tencent/liteav/videobase/c/i;->d:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Ljava/nio/ByteBuffer;II)V
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/videobase/c/i;->e:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/tencent/liteav/videobase/c/i;->f:I

    if-eq v0, p3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/c/i;->b()V

    iput p2, p0, Lcom/tencent/liteav/videobase/c/i;->e:I

    iput p3, p0, Lcom/tencent/liteav/videobase/c/i;->f:I

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/c/i;->a()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/c/i;->d:[I

    invoke-static {p1, v0, p2, p3, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->loadYuv420DataToTextures(Ljava/nio/ByteBuffer;III[I)V

    return-void
.end method

.method public beforeDrawArrays(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->beforeDrawArrays(I)V

    const p1, 0x84c1

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/c/i;->getTarget()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/c/i;->d:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindTexture(II)V

    iget p1, p0, Lcom/tencent/liteav/videobase/c/i;->c:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/liteav/videobase/c/i;->d:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/c/i;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "uvTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videobase/c/i;->c:I

    return-void
.end method

.method public onUninit()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videobase/c/i;->b()V

    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->onUninit()V

    return-void
.end method
