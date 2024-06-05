.class public final Lcom/tencent/liteav/videobase/c/a;
.super Lcom/tencent/liteav/videobase/c/i;
.source "SourceFile"


# static fields
.field private static final c:[F

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F

.field private static final g:[F

.field private static final h:[F


# instance fields
.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/tencent/liteav/videobase/c/a;->c:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/tencent/liteav/videobase/c/a;->d:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/tencent/liteav/videobase/c/a;->e:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/tencent/liteav/videobase/c/a;->f:[F

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/tencent/liteav/videobase/c/a;->g:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/tencent/liteav/videobase/c/a;->h:[F

    return-void

    :array_0
    .array-data 4
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x0
        -0x413765fe    # -0.3918f
        0x400119ce    # 2.0172f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x414fd220    # -0.3441f
        0x3fe2d0e5    # 1.772f
        0x3fb374bc    # 1.402f
        -0x40c930be    # -0.7141f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x0
        -0x41a5aee6    # -0.2132f
        0x40073190    # 2.1124f
        0x3fe57732    # 1.7927f
        -0x40f793de    # -0.5329f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x41c0346e    # -0.1873f
        0x3fed844d    # 1.8556f
        0x3fc9930c    # 1.5748f
        -0x41105532    # -0.4681f
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x427f7f7f
        -0x40ff7f7f
        -0x40ff7f7f
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x40ff7f7f
        -0x40ff7f7f
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string v1, "precision highp float;\nvarying vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform sampler2D uvTexture;\nuniform mat3 convertMatrix;\nuniform vec3 offset;\n\nvoid main()\n{\n    highp vec3 yuvColor;\n    highp vec3 rgbColor;\n\n    // Get the YUV values\n    yuvColor.x = texture2D(inputImageTexture, textureCoordinate).r;\n    yuvColor.y = texture2D(uvTexture, vec2(textureCoordinate.x, textureCoordinate.y * 0.5)).r;\n    yuvColor.z = texture2D(uvTexture, vec2(textureCoordinate.x, textureCoordinate.y * 0.5 + 0.5)).r;\n\n    // Do the color transform\n    yuvColor += offset;\n    rgbColor = convertMatrix * yuvColor;\n\n    gl_FragColor = vec4(rgbColor, 1.0);\n}"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/liteav/videobase/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videobase/c/a;)V
    .locals 6

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/c/a;->getProgramId()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/tencent/liteav/videobase/c/a;->j:I

    sget-object v1, Lcom/tencent/liteav/videobase/c/a$1;->a:[I

    iget-object v2, p0, Lcom/tencent/liteav/videobase/c/a;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/tencent/liteav/videobase/c/a;->g:[F

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/liteav/videobase/c/a;->h:[F

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget v0, p0, Lcom/tencent/liteav/videobase/c/a;->i:I

    iget-object v1, p0, Lcom/tencent/liteav/videobase/c/a;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    iget-object v4, p0, Lcom/tencent/liteav/videobase/c/a;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/liteav/videobase/c/a;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    if-ne v4, v5, :cond_2

    :cond_1
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    :cond_2
    iget-object v4, p0, Lcom/tencent/liteav/videobase/c/a;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    iget-object v5, p0, Lcom/tencent/liteav/videobase/c/a;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    if-eqz v5, :cond_3

    iget-object p0, p0, Lcom/tencent/liteav/videobase/c/a;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->a:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    if-ne p0, v5, :cond_4

    :cond_3
    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    :cond_4
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    if-ne v1, p0, :cond_5

    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    if-eq v4, p0, :cond_7

    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    if-ne v4, p0, :cond_7

    sget-object p0, Lcom/tencent/liteav/videobase/c/a;->d:[F

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorSpace;

    if-ne v1, p0, :cond_7

    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->b:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    if-ne v4, p0, :cond_6

    sget-object p0, Lcom/tencent/liteav/videobase/c/a;->e:[F

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;->c:Lcom/tencent/liteav/videobase/base/GLConstants$ColorRange;

    if-ne v4, p0, :cond_7

    sget-object p0, Lcom/tencent/liteav/videobase/c/a;->f:[F

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/tencent/liteav/videobase/c/a;->c:[F

    :goto_1
    invoke-static {v0, v2, v3, p0, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/16 v0, 0x1909

    return v0
.end method

.method public final onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/c/i;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/c/a;->getProgramId()I

    move-result p1

    const-string v0, "convertMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videobase/c/a;->i:I

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/c/a;->getProgramId()I

    move-result p1

    const-string v0, "offset"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videobase/c/a;->j:I

    invoke-static {p0}, Lcom/tencent/liteav/videobase/c/b;->a(Lcom/tencent/liteav/videobase/c/a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/c/a;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
