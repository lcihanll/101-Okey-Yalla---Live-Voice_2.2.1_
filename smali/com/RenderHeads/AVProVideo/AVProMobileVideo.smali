.class public Lcom/RenderHeads/AVProVideo/AVProMobileVideo;
.super Ljava/lang/Object;
.source "AVProMobileVideo.java"


# static fields
.field public static final EXOPLAYER:I = 0x2

.field public static final MEDIAPLAYER:I = 0x1

.field private static _renderFree:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private static final _renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final kUnityGfxRendererOpenGLES20:I = 0x8

.field public static final kUnityGfxRendererOpenGLES30:I = 0xb

.field private static s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo; = null

.field private static s_PreviousContextFail:Z = false

.field private static s_PreviousDeviceIndex:I = -0x1


# instance fields
.field private final PLUGIN_VERSION:Ljava/lang/String;

.field private m_Context:Landroid/content/Context;

.field private m_Players:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Random:Ljava/util/Random;

.field private final m_bWatermarked:Z

.field private m_iOpenGLVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderFree:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v0, "AVProLocal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->nativeInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_bWatermarked:Z

    const-string v0, "1.11.4"

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->PLUGIN_VERSION:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Random:Ljava/util/Random;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Context:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_iOpenGLVersion:I

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    if-nez v0, :cond_0

    sput-object p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    :cond_0
    return-void
.end method

.method public static Deinitialise()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    return-void
.end method

.method private GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private RemovePlayer(I)V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static RenderPlayer(I)V
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_PreviousContextFail:Z

    return-void

    :cond_1
    sget-boolean v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_PreviousContextFail:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_PreviousDeviceIndex:I

    if-ltz v0, :cond_2

    invoke-static {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->RendererReset(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_PreviousContextFail:Z

    :cond_2
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->Render()Z

    :cond_3
    return-void
.end method

.method public static RendererDestroyPlayers()V
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderFree:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderFree:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->DeinitialiseRender()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderFree:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public static RendererReset(I)V
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->RendererSetupPlayer(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static RendererSetupPlayer(II)V
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput p1, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_PreviousDeviceIndex:I

    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    iget v0, v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_iOpenGLVersion:I

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RendererSetup(I)V

    :cond_3
    return-void
.end method

.method public static WaitForNewFramePlayer(I)V
    .locals 1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->WaitForNewFrame()V

    :cond_1
    return-void
.end method

.method public static _CanPlay(I)Z
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->CanPlay()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetCurrentVideoTrackBitrate(I)I
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->GetCurrentVideoTrackBitrate()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetDuration(I)J
    .locals 3

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->GetDurationMs()J

    move-result-wide v1

    :cond_1
    return-wide v1
.end method

.method public static _GetFrameCount(I)I
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->GetFrameCount()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetHeight(I)I
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->GetHeight()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetLastErrorCode(I)I
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->GetLastErrorCode()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetTextureHandle(I)I
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->GetTextureHandle()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetVideoDisplayRate(I)F
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->GetDisplayRate()F

    move-result v1

    :cond_1
    return v1
.end method

.method public static _GetWidth(I)I
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->GetWidth()I

    move-result v1

    :cond_1
    return v1
.end method

.method private static getGlVersionFromDeviceConfig(Landroid/content/Context;)I
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x30000

    if-lt v0, v1, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p0, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static getMajorVersion(I)I
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method private static getVersionFromPackageManager(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    iget p0, v3, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    if-eqz p0, :cond_0

    iget p0, v3, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    invoke-static {p0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->getMajorVersion(I)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public CreatePlayer(IZZIZ)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;
    .locals 10

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->s_Interface:Lcom/RenderHeads/AVProVideo/AVProMobileVideo;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x100

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    return-object v1

    :cond_3
    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    return-object v1

    :cond_4
    new-instance p1, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Random:Ljava/util/Random;

    invoke-direct {p1, v0, v2, v1}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;-><init>(IZLjava/util/Random;)V

    invoke-virtual {p1, v2}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->SetShowPosterFrame(Z)V

    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Context:Landroid/content/Context;

    move-object v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->Initialise(Landroid/content/Context;ZZIZ)Z

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    return-object p1

    :cond_5
    new-instance p1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Random:Ljava/util/Random;

    invoke-direct {p1, v0, v2, v1}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;-><init>(IZLjava/util/Random;)V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Context:Landroid/content/Context;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->Initialise(Landroid/content/Context;ZZIZ)Z

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Players:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    return-object p1
.end method

.method public DestroyPlayer(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->GetAVProClassForPlayerIndex(I)Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->Deinitialise()V

    invoke-direct {p0, p1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->RemovePlayer(I)V

    sget-object p1, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v1, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->_renderFree:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method

.method public GetPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.11.4"

    return-object v0
.end method

.method public SetContext(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Context:Landroid/content/Context;

    invoke-static {p1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->getVersionFromPackageManager(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->getGlVersionFromDeviceConfig(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    if-lt v0, v1, :cond_0

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_iOpenGLVersion:I

    return-void

    :cond_0
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    if-lt v0, v1, :cond_1

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->m_iOpenGLVersion:I

    :cond_1
    return-void
.end method
