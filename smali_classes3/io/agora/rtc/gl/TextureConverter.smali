.class public Lio/agora/rtc/gl/TextureConverter;
.super Ljava/lang/Object;
.source "TextureConverter.java"


# static fields
.field static final COORDS_PER_VERTEX:I = 0x3

.field public static final CV_TYPE_2D2OES:I = 0x1

.field public static final CV_TYPE_OES22D:I = 0x2

.field public static final CV_TYPE_OES2OES:I = 0x0

.field private static final TEXTURE_2D2OES_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\n#extension GL_EXT_YUV_target : require\nin vec2 vTextureCoord;\nuniform __samplerExternal2DY2YEXT uTextureSampler;\nlayout(yuv) out vec4 gl_FragColor;\nvoid main() {\ngl_FragColor = texture(uTextureSampler, vTextureCoord);\n}\n"

.field private static final TEXTURE_OES2OES_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\n#extension GL_EXT_YUV_target : require\nin vec2 vTextureCoord;\nuniform __samplerExternal2DY2YEXT uTextureSampler;\nlayout(yuv) out vec4 gl_FragColor;\nvoid main() {\ngl_FragColor = texture(uTextureSampler, vTextureCoord);\n}\n"

.field private static final TEXTURE_OES_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nin vec2 vTextureCoord;\nuniform samplerExternalOES uTextureSampler;\nout vec4 gl_FragColor;\nvoid main() {\ngl_FragColor = texture(uTextureSampler, vTextureCoord);\n}\n"

.field private static final VERTEX_SHADER_STRING:Ljava/lang/String; = "#version 300 es\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\ngl_Position = uMVPMatrix * aPosition;\nvTextureCoord = (uSTMatrix * aTextureCoord).st;\n}\n"

.field static final rectCoords:[F

.field static final textureCoords:[F


# instance fields
.field private mFrameBuffer:[I

.field private mMVPMatrix:[F

.field private mMVPMatrixHandle:I

.field private mPositionHandle:I

.field private final mProgram:I

.field private mSTMatrix:[F

.field private mSTMatrixHandle:I

.field private mTextureCoordHandle:I

.field private mTextureHandle:I

.field private mTextureID:I

.field private mTextureTarget:I

.field private textureCoordBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I

.field private final vertexStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lio/agora/rtc/gl/TextureConverter;->rectCoords:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lio/agora/rtc/gl/TextureConverter;->textureCoords:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcTextureId",
            "srcTarget",
            "cvType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lio/agora/rtc/gl/TextureConverter;->mMVPMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lio/agora/rtc/gl/TextureConverter;->mSTMatrix:[F

    sget-object v0, Lio/agora/rtc/gl/TextureConverter;->rectCoords:[F

    array-length v2, v0

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lio/agora/rtc/gl/TextureConverter;->vertexCount:I

    const/16 v2, 0xc

    iput v2, p0, Lio/agora/rtc/gl/TextureConverter;->vertexStride:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lio/agora/rtc/gl/TextureConverter;->mSTMatrix:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/TextureConverter;->arrayToBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/gl/TextureConverter;->vertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lio/agora/rtc/gl/TextureConverter;->textureCoords:[F

    invoke-direct {p0, v0}, Lio/agora/rtc/gl/TextureConverter;->arrayToBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/gl/TextureConverter;->textureCoordBuffer:Ljava/nio/FloatBuffer;

    iput p1, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureID:I

    iput p2, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureTarget:I

    const p1, 0x8b31

    const-string p2, "#version 300 es\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nin vec4 aPosition;\nin vec4 aTextureCoord;\nout vec2 vTextureCoord;\nvoid main() {\ngl_Position = uMVPMatrix * aPosition;\nvTextureCoord = (uSTMatrix * aTextureCoord).st;\n}\n"

    invoke-direct {p0, p1, p2}, Lio/agora/rtc/gl/TextureConverter;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    const-string v1, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\n#extension GL_EXT_YUV_target : require\nin vec2 vTextureCoord;\nuniform __samplerExternal2DY2YEXT uTextureSampler;\nlayout(yuv) out vec4 gl_FragColor;\nvoid main() {\ngl_FragColor = texture(uTextureSampler, vTextureCoord);\n}\n"

    const v3, 0x8b30

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    if-eq p3, p2, :cond_0

    invoke-direct {p0, v3, v1}, Lio/agora/rtc/gl/TextureConverter;->loadShader(ILjava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_0
    const-string p3, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nin vec2 vTextureCoord;\nuniform samplerExternalOES uTextureSampler;\nout vec4 gl_FragColor;\nvoid main() {\ngl_FragColor = texture(uTextureSampler, vTextureCoord);\n}\n"

    invoke-direct {p0, v3, p3}, Lio/agora/rtc/gl/TextureConverter;->loadShader(ILjava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v1}, Lio/agora/rtc/gl/TextureConverter;->loadShader(ILjava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, v1}, Lio/agora/rtc/gl/TextureConverter;->loadShader(ILjava/lang/String;)I

    move-result p3

    :goto_0
    new-array p2, p2, [I

    aput p1, p2, v2

    aput p3, p2, v0

    invoke-direct {p0, p2}, Lio/agora/rtc/gl/TextureConverter;->createProgram([I)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/gl/TextureConverter;->mProgram:I

    const-string p2, "aPosition"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/gl/TextureConverter;->mPositionHandle:I

    const-string p2, "aTextureCoord"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureCoordHandle:I

    const-string p2, "uMVPMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/gl/TextureConverter;->mMVPMatrixHandle:I

    const-string p2, "uSTMatrix"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/gl/TextureConverter;->mSTMatrixHandle:I

    const-string p2, "uTextureSampler"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureHandle:I

    return-void
.end method

.method private arrayToBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private beginRenderTarget(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "textureId"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/gl/TextureConverter;->mFrameBuffer:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [I

    iput-object v2, p0, Lio/agora/rtc/gl/TextureConverter;->mFrameBuffer:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    invoke-direct {p0}, Lio/agora/rtc/gl/TextureConverter;->checkGlError()V

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/TextureConverter;->mFrameBuffer:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-direct {p0}, Lio/agora/rtc/gl/TextureConverter;->checkGlError()V

    const v0, 0x8ce0

    invoke-static {v2, v0, p1, p2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-direct {p0}, Lio/agora/rtc/gl/TextureConverter;->checkFramebufferStatus()V

    return-void
.end method

.method private checkFramebufferStatus()V
    .locals 4

    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    const-string v1, ""

    goto :goto_0

    :sswitch_0
    const-string v1, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :sswitch_1
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :sswitch_2
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_0

    :sswitch_3
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : 0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8cd6 -> :sswitch_3
        0x8cd7 -> :sswitch_2
        0x8cd9 -> :sswitch_1
        0x8cdd -> :sswitch_0
    .end sparse-switch
.end method

.method private checkGlError()V
    .locals 1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    :cond_0
    return-void
.end method

.method private varargs createProgram([I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaders"
        }
    .end annotation

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array v1, p1, [I

    const v3, 0x8b82

    invoke-static {v0, v3, v1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v1, v2

    if-eq v1, p1, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private draw()V
    .locals 7

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lio/agora/rtc/gl/TextureConverter;->mPositionHandle:I

    iget-object v6, p0, Lio/agora/rtc/gl/TextureConverter;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureCoordHandle:I

    iget-object v6, p0, Lio/agora/rtc/gl/TextureConverter;->textureCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureTarget:I

    iget v1, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureHandle:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mMVPMatrixHandle:I

    iget-object v1, p0, Lio/agora/rtc/gl/TextureConverter;->mMVPMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mSTMatrixHandle:I

    iget-object v1, p0, Lio/agora/rtc/gl/TextureConverter;->mSTMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->vertexCount:I

    const/4 v1, 0x5

    invoke-static {v1, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method private endRenderTarget()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, Lio/agora/rtc/gl/TextureConverter;->mTextureTarget:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-direct {p0}, Lio/agora/rtc/gl/TextureConverter;->checkGlError()V

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shaderType",
            "source"
        }
    .end annotation

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    if-nez p1, :cond_0

    return p1

    :cond_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v1

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p1, 0x0

    :cond_1
    return p1
.end method


# virtual methods
.method public convert(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dstTarget",
            "dstTextureId"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/agora/rtc/gl/TextureConverter;->beginRenderTarget(II)V

    invoke-direct {p0}, Lio/agora/rtc/gl/TextureConverter;->draw()V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-direct {p0}, Lio/agora/rtc/gl/TextureConverter;->endRenderTarget()V

    return-void
.end method

.method public getOneTexture(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {p1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {p1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {p1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {p1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget p1, v1, v2

    return p1
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lio/agora/rtc/gl/TextureConverter;->mFrameBuffer:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_0
    return-void
.end method
