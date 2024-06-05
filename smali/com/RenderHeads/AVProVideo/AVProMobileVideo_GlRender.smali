.class public Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;
.super Ljava/lang/Object;
.source "AVProMobileVideo_GlRender.java"


# instance fields
.field private m_FragmentShaderHandle:I

.field private m_FragmentShaderSource:Ljava/lang/String;

.field private m_FrameBufferHandle:I

.field private m_FrameBufferTextureHandle:I

.field private m_FramebufferHeight:I

.field private m_FramebufferWidth:I

.field private m_HasImageData:Z

.field private m_Height:I

.field private m_ImageData:Ljava/nio/ByteBuffer;

.field private m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

.field private m_MatrixHandle:I

.field private m_ProgramHandle:I

.field private m_QuadPositions:Ljava/nio/FloatBuffer;

.field private m_QuadUVs:Ljava/nio/FloatBuffer;

.field private m_TextureHandle:I

.field private m_UseFastOesPath:Z

.field private m_VertexAttribHandle:I

.field private m_VertexShaderHandle:I

.field private m_VertexShaderSource:Ljava/lang/String;

.field private m_Width:I

.field private m_aiVertexBufferObjects:[I

.field private m_bBlendEnabled:Z

.field private m_bCanUseGLBindVertexArray:Z

.field private m_bCullFace:Z

.field private m_bDepthTest:Z

.field private m_bStencilEnabled:Z

.field private m_bTextureFormat_EOS:Z

.field private m_iCurrentProgram:I

.field private m_iFrameBufferBinding:I

.field private m_iRenderBufferBinding:I

.field private m_iVertexArrayObject:I

.field private m_uvAttribHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    return-void
.end method

.method private static CreateFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private CreateGlQuadGeometry()V
    .locals 12

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadPositions:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadUVs:Ljava/nio/FloatBuffer;

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iVertexArrayObject:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glGenBuffers(ILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    aput v4, v1, v2

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    aput v3, v1, v0

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    aget v1, v1, v2

    const v3, 0x8892

    invoke-static {v3, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/16 v1, 0x30

    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadPositions:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v3, v1, v4, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    aget v0, v1, v0

    invoke-static {v3, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadUVs:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    const/4 v7, 0x2

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    invoke-static {v2}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private CreateGlShaderProgram()V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    const v1, 0x8b31

    invoke-direct {p0, v1, v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->LoadGlShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderHandle:I

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    const v1, 0x8b30

    invoke-direct {p0, v1, v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->LoadGlShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderHandle:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_0
    return-void
.end method

.method private CreateGlTexture()V
    .locals 11

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateGlTexture m_TextureHandle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    if-eqz v1, :cond_0

    const v1, 0x8d65

    goto :goto_0

    :cond_0
    const/16 v1, 0xde1

    :goto_0
    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_HasImageData:Z

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    iget v5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_Width:I

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_Height:I

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    iget-object v10, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ImageData:Ljava/nio/ByteBuffer;

    move v2, v1

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_1
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error allocating texture handle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private DestroyGlTexture()V
    .locals 4

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    iput v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    :cond_0
    return-void
.end method

.method private LoadGlShader(ILjava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    :cond_0
    return p1
.end method

.method private LoadGlShaders_Texture2D()V
    .locals 7

    const-string v0, "#version 100\n"

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "precision mediump float;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexPosition;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexUV;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uniform mat4 textureMat;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "varying highp vec2 out_uv;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "void main()\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tgl_Position = vec4(vertexPosition.xy, 0.0, 1.0);\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tout_uv = (textureMat * vertexUV).xy;\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uniform sampler2D texture;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tgl_FragColor = texture2D(texture, out_uv);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    return-void
.end method

.method private LoadGlShaders_TextureOES()V
    .locals 7

    const-string v0, "#version 100\n"

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "precision mediump float;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexPosition;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexUV;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uniform mat4 textureMat;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "varying highp vec2 out_uv;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "void main()\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tgl_Position = vec4(vertexPosition.xy, 0.0, 1.0);\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tout_uv = (textureMat * vertexUV).xy;\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexShaderSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uniform samplerExternalOES texture;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tgl_FragColor = texture2D(texture, out_uv);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FragmentShaderSource:Ljava/lang/String;

    return-void
.end method

.method private SetupGlShaderProgram()V
    .locals 2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    const-string/jumbo v1, "vertexPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    const-string/jumbo v1, "vertexUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    const-string/jumbo v1, "textureMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_MatrixHandle:I

    return-void
.end method


# virtual methods
.method public Blit(Landroid/graphics/SurfaceTexture;[F)J
    .locals 9

    const v0, 0x8893

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8892

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v2, 0x1

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    iget-boolean v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v3, 0x303

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    :cond_0
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    if-nez v0, :cond_1

    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadPositions:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    const/4 v4, 0x2

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadUVs:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    const v3, 0x8d65

    if-eqz v0, :cond_2

    const v4, 0x8d65

    goto :goto_0

    :cond_2
    const/16 v4, 0xde1

    :goto_0
    const v5, 0x84c0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_6

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const v8, 0x8d68

    invoke-static {v3, v8, v0}, Landroid/opengl/GLES20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_4
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :goto_1
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, v5

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed to updateTexImage in Blit: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    if-nez p2, :cond_6

    const/16 p2, 0x10

    new-array p2, p2, [F

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_3

    :cond_5
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    invoke-static {p2}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_MatrixHandle:I

    invoke-static {p2, v2, v1, p1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    :cond_7
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    const/4 p2, 0x4

    const/4 v0, 0x5

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iVertexArrayObject:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    goto :goto_4

    :cond_8
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :goto_4
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_uvAttribHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_VertexAttribHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-wide v6
.end method

.method public CreateRenderTarget(II)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CreateRenderTarget() called ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferWidth:I

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferHeight:I

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateRenderTarget m_FrameBufferHandle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CreateRenderTarget m_FrameBufferTextureHandle: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    const/16 v1, 0xde1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferWidth:I

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferHeight:I

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p1, 0x2801

    const/16 v2, 0x2601

    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v2, 0x812f

    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    const v2, 0x8ce0

    invoke-static {p2, v2, v1, p1, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, p1, p1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4500

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    return-void
.end method

.method public Destroy()V
    .locals 6

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->DestroyGlTexture()V

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->DestroyRenderTarget()V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ProgramHandle:I

    :cond_0
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iVertexArrayObject:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    new-array v3, v2, [I

    aput v0, v3, v1

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iVertexArrayObject:I

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    aget v3, v0, v1

    if-lez v3, :cond_2

    const/4 v3, 0x2

    new-array v4, v3, [I

    aget v5, v0, v1

    aput v5, v4, v1

    aget v0, v0, v2

    aput v0, v4, v2

    invoke-static {v3, v4, v1}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    aput v1, v0, v1

    aput v1, v0, v2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadPositions:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_QuadUVs:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_aiVertexBufferObjects:[I

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public DestroyRenderTarget()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DestroyRenderTarget m_FrameBufferHandle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v3, 0x8d40

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v3, v0, v4, v2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    new-array v0, v1, [I

    iget v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    aput v4, v0, v2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DestroyRenderTarget m_FrameBufferTextureHandle: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    if-eqz v0, :cond_1

    new-array v3, v1, [I

    aput v0, v3, v2

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    :cond_1
    return-void
.end method

.method public EndRender()V
    .locals 2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bBlendEnabled:Z

    const/16 v1, 0xbe2

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bDepthTest:Z

    const/16 v1, 0xb71

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCullFace:Z

    const/16 v1, 0xb44

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bStencilEnabled:Z

    const/16 v1, 0xb90

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_3

    :cond_3
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_3
    const v0, 0x8d40

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iFrameBufferBinding:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8d41

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iRenderBufferBinding:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_4
    return-void
.end method

.method public GetGlTextureHandle(Z)I
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_UseFastOesPath:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferTextureHandle:I

    return p1

    :cond_0
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_TextureHandle:I

    return p1
.end method

.method public Setup(II[BZZZ)V
    .locals 0

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_Width:I

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_Height:I

    iput-boolean p4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    iput-boolean p5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCanUseGLBindVertexArray:Z

    iput-boolean p6, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_UseFastOesPath:Z

    if-eqz p3, :cond_0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CreateGlTexture image size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_ImageData:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_HasImageData:Z

    :cond_0
    if-nez p6, :cond_2

    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bTextureFormat_EOS:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->LoadGlShaders_TextureOES()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->LoadGlShaders_Texture2D()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateGlTexture()V

    if-nez p6, :cond_3

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateGlShaderProgram()V

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->SetupGlShaderProgram()V

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateGlQuadGeometry()V

    :cond_3
    return-void
.end method

.method public StartRender()V
    .locals 4

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/16 v1, 0xbe2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bBlendEnabled:Z

    const/16 v2, 0xb71

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bDepthTest:Z

    const/16 v2, 0xb44

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bCullFace:Z

    const v2, 0x8b8d

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iCurrentProgram:I

    const v2, 0x8ca6

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iFrameBufferBinding:I

    const v2, 0x8ca7

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_iRenderBufferBinding:I

    const/16 v2, 0xb90

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_bStencilEnabled:Z

    const v0, 0x8d40

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FrameBufferHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8d41

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferWidth:I

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->m_FramebufferHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_4
    return-void
.end method
