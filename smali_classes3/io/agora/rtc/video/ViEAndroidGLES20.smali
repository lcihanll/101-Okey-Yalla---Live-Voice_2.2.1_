.class public Lio/agora/rtc/video/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lio/agora/rtc/video/GLRendererController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "ViEAndroidGLES20"

.field private static final VERBOSE:Z = false


# instance fields
.field private mLastRotation:I

.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private nativeGLPragram:I

.field private nativeGLResourceUpdated:Z

.field private nativeGLTextureId:[I

.field private nativeObject:J

.field private nativeOesGLPragram:I

.field private openGLCreated:Z

.field private surfaceCreated:Z

.field private textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeOesGLPragram:I

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    new-instance v0, Lio/agora/rtc/video/TextureRendererHelper;

    invoke-direct {v0}, Lio/agora/rtc/video/TextureRendererHelper;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-direct {p0, p1, p1, p1}, Lio/agora/rtc/video/ViEAndroidGLES20;->init(ZII)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "translucent",
            "depth",
            "stencil"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeOesGLPragram:I

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    const/4 p1, -0x1

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    new-instance p1, Lio/agora/rtc/video/TextureRendererHelper;

    invoke-direct {p1}, Lio/agora/rtc/video/TextureRendererHelper;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/video/ViEAndroidGLES20;->init(ZII)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private native CreateOpenGLNative(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeObject",
            "width",
            "height"
        }
    .end annotation
.end method

.method private native DrawNative(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeObject"
        }
    .end annotation
.end method

.method private native DrawNativeTexture(JIIIIIJJZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeObject",
            "texType",
            "texId",
            "width",
            "height",
            "rotation",
            "renderMs",
            "firstRevcTimestamp",
            "isDummy"
        }
    .end annotation
.end method

.method public static IsSupported(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private native OnCfgChangedNative(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeObject",
            "ori"
        }
    .end annotation
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderWindow"
        }
    .end annotation

    const-class v0, Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lio/agora/rtc/video/ViEAndroidGLES20;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    return p1
.end method

.method static synthetic access$200(Lio/agora/rtc/video/ViEAndroidGLES20;)Lio/agora/rtc/video/TextureRendererHelper;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    return-object p0
.end method

.method static synthetic access$300(Lio/agora/rtc/video/ViEAndroidGLES20;)I
    .locals 0

    iget p0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    return p0
.end method

.method static synthetic access$400(Lio/agora/rtc/video/ViEAndroidGLES20;)[I
    .locals 0

    iget-object p0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    return-object p0
.end method

.method static synthetic access$500(Lio/agora/rtc/video/ViEAndroidGLES20;)I
    .locals 0

    iget p0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeOesGLPragram:I

    return p0
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prompt",
            "egl"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    :try_start_0
    sget-object v1, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AGORA_SDK"

    const-string v1, "egl error!!, video may not displayed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkOrientation()I
    .locals 2

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    const-string v1, "checkOrientation display getRotation throwout exception"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    return v0

    :cond_0
    iget v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    return v0
.end method

.method private init(ZII)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "translucent",
            "depth",
            "stencil"
        }
    .end annotation

    move-object v0, p0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->setEGLContextClientVersion(I)V

    new-instance v1, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    move-object v2, v1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x0

    move-object v7, v1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0, p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->setRenderMode(I)V

    return-void
.end method

.method private onDrawFrameTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gl"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1}, Lio/agora/rtc/video/TextureRendererHelper;->isTexture()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1, p0}, Lio/agora/rtc/video/TextureRendererHelper;->onDrawFrame(Lio/agora/rtc/video/GLRendererController;)V

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1}, Lio/agora/rtc/video/TextureRendererHelper;->useJavaRender()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->updateOrientation()V

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    if-nez p1, :cond_3

    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iget p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    iget v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v0, v1, p1, v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    :cond_3
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1}, Lio/agora/rtc/video/TextureRendererHelper;->isTexture()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1}, Lio/agora/rtc/video/TextureRendererHelper;->getTextureFrame()Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-wide v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iget v3, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->textureType:I

    iget v4, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->texId:I

    iget v5, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->frameWidth:I

    iget v6, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->frameHeight:I

    iget v7, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->rotation:I

    iget-wide v8, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->renderMs:J

    iget-wide v10, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->firstRecvTimestamp:J

    iget-boolean v12, p1, Lio/agora/rtc/video/TextureRendererHelper$TextureFrame;->isDummy:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lio/agora/rtc/video/ViEAndroidGLES20;->DrawNativeTexture(JIIIIIJJZ)V

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->DrawNative(J)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private updateOrientation()V
    .locals 3

    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->checkOrientation()I

    move-result v0

    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v1, v2, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->OnCfgChangedNative(JI)V

    :cond_0
    iput v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-void
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->releaseOpenGLResource()V

    return-void
.end method

.method public GetAPILevel()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public ReDraw()V
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->requestRender()V

    :cond_0
    return-void
.end method

.method public RegisterNativeObject(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeObject"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iput-wide p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public UpdateOpenGLResource([I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v3

    aput v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    aget v1, p1, v1

    iput v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeOesGLPragram:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    sget-object v3, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateOpenGLResource, program = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " texture[0~2] = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deliverVideoTextureFrame(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJJZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureBuffer",
            "rotation",
            "renderMs",
            "firstRecvTimestamp",
            "isDummy"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lio/agora/rtc/video/TextureRendererHelper;->onTextureFrameArrived(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJJZ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->updateOrientation()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gl"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/TextureRendererHelper;->isTexture()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lio/agora/rtc/video/ViEAndroidGLES20;->onDrawFrameTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->updateOrientation()V

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    if-nez p1, :cond_3

    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iget p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    iget v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v0, v1, p1, v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    :cond_3
    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->DrawNative(J)V

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1}, Lio/agora/rtc/video/TextureRendererHelper;->isTexture()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {p1, p0}, Lio/agora/rtc/video/TextureRendererHelper;->onFrameAvailable(Lio/agora/rtc/video/GLRendererController;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gl",
            "width",
            "height"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    iput p2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    iput p3, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0, p0, p2, p3}, Lio/agora/rtc/video/TextureRendererHelper;->onSurfaceChanged(Lio/agora/rtc/video/GLRendererController;II)V

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/TextureRendererHelper;->useJavaRender()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "AGORA_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed to width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1, p2, p3}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result p2

    if-nez p2, :cond_1

    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_2
    const-string p1, "AGORA_SDK"

    const-string p2, "Exception occurs when create RtcEngine"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object p2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gl",
            "config"
        }
    .end annotation

    return-void
.end method

.method public releaseOpenGLResource()V
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lio/agora/rtc/video/ViEAndroidGLES20$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/ViEAndroidGLES20$2;-><init>(Lio/agora/rtc/video/ViEAndroidGLES20;)V

    invoke-virtual {p0, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    new-instance v0, Lio/agora/rtc/video/ViEAndroidGLES20$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/ViEAndroidGLES20$1;-><init>(Lio/agora/rtc/video/ViEAndroidGLES20;)V

    invoke-virtual {p0, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->queueEvent(Ljava/lang/Runnable;)V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public textureRenderThreadWillExit()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    const-string v1, "texture render thread will exit"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->textureRendererHelper:Lio/agora/rtc/video/TextureRendererHelper;

    invoke-virtual {v0}, Lio/agora/rtc/video/TextureRendererHelper;->releaseProducerResourceIfNotYet()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
