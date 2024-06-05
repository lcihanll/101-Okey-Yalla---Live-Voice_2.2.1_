.class public final Lcom/tencent/liteav/videobase/b/b;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# instance fields
.field a:[F

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string v1, "precision highp float;\nvarying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform mat3 matrix;\n\nvoid main()\n{\n  float cv_y = 1.0 - textureCoordinate.y;\n  float denominator = matrix[0][2] * textureCoordinate.x + matrix[1][2] * cv_y + matrix[2][2];\n  vec2 dst_coords;\n  dst_coords.x = matrix[0][0] * textureCoordinate.x + matrix[1][0] * cv_y + matrix[2][0];\n  dst_coords.y = matrix[0][1] * textureCoordinate.x + matrix[1][1] * cv_y + matrix[2][1];\n  dst_coords.x = dst_coords.x / denominator;\n  dst_coords.y = 1.0 - (dst_coords.y / denominator);\n  gl_FragColor = texture2D(inputImageTexture, dst_coords);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videobase/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final beforeDrawArrays(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->beforeDrawArrays(I)V

    iget-object p1, p0, Lcom/tencent/liteav/videobase/b/b;->a:[F

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants;->a:[F

    :cond_0
    iget v0, p0, Lcom/tencent/liteav/videobase/b/b;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method

.method public final onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/b/b;->getProgramId()I

    move-result p1

    const-string v0, "matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videobase/b/b;->b:I

    return-void
.end method
