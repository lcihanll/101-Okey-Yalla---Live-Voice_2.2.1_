.class public Lcom/tencent/liteav/videobase/b/f;
.super Lcom/tencent/liteav/videobase/a/j;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}"

    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/videobase/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/liteav/videobase/b/f;->b:I

    sget-object p1, Lcom/tencent/liteav/base/util/Rotation;->a:Lcom/tencent/liteav/base/util/Rotation;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/base/util/Rotation;ZZ)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/b/f;->a:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public afterDrawArrays()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/j;->afterDrawArrays()V

    iget v0, p0, Lcom/tencent/liteav/videobase/b/f;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_0
    return-void
.end method

.method public beforeDrawArrays(I)V
    .locals 6

    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/j;->beforeDrawArrays(I)V

    iget v0, p0, Lcom/tencent/liteav/videobase/b/f;->b:I

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/liteav/videobase/b/f;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p1, p0, Lcom/tencent/liteav/videobase/b/f;->b:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    :cond_0
    return-void
.end method

.method public onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/j;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/b/f;->getProgramId()I

    move-result p1

    const-string v0, "inputTextureCoordinate2"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videobase/b/f;->b:I

    return-void
.end method
