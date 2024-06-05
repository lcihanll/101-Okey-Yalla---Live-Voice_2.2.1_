.class public abstract Lio/agora/rtc/video/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/VideoCapture$TexBuffer;,
        Lio/agora/rtc/video/VideoCapture$RawBuffer;,
        Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;,
        Lio/agora/rtc/video/VideoCapture$CaptureOutputDataType;
    }
.end annotation


# static fields
.field public static FORCE_ENC_TEXTURE_OES:Z = false

.field protected static final MAX_BUFFER_CNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "VideoCapture"

.field public static final kCaptureFpsDefault:I = 0x0

.field public static final kCaptureFpsLowPower:I = 0x1

.field public static final kCaptureFpsUnknown:I = -0x1

.field private static final kVideoI420:I = 0x0

.field private static final kVideoNV12:I = 0xb

.field private static final kVideoNV21:I = 0xc

.field private static final kVideoUnknown:I = 0x63

.field private static final kVideoYUY2:I = 0x2

.field private static final kVideoYV12:I = 0x1


# instance fields
.field protected mCameraNativeOrientation:I

.field protected mCaptureOutputDataType:I

.field protected final mContext:Landroid/content/Context;

.field protected mDroppedTextureBufferCount:I

.field protected mEglContext:Lio/agora/rtc/gl/EglBase$Context;

.field protected mExpectedRawBufferSize:I

.field protected final mId:I

.field private mLastRotation:I

.field protected mNativeVideoCaptureDeviceAndroid:J

.field protected mPQFirst:I

.field protected final mShareContext:Lio/agora/rtc/gl/EglBase$Context;

.field protected mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

.field protected mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "pqFirst",
            "sharedContext",
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    iput v0, p0, Lio/agora/rtc/video/VideoCapture;->mExpectedRawBufferSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    iput v0, p0, Lio/agora/rtc/video/VideoCapture;->mDroppedTextureBufferCount:I

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/video/VideoCapture;->mLastRotation:I

    iput v0, p0, Lio/agora/rtc/video/VideoCapture;->mPQFirst:I

    iput-wide p5, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    iput-object p1, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    iput p2, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    iput p3, p0, Lio/agora/rtc/video/VideoCapture;->mPQFirst:I

    iput-object p4, p0, Lio/agora/rtc/video/VideoCapture;->mShareContext:Lio/agora/rtc/gl/EglBase$Context;

    return-void
.end method

.method private native ProvideCameraTexture(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureBuffer",
            "rotation",
            "ts",
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation
.end method

.method private native ProvideCameraTextureAndRaw(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ[BIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureBuffer",
            "rotation",
            "ts",
            "data",
            "length",
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/agora/rtc/video/VideoCapture;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cacheCapability(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "appContext",
            "cap",
            "captureName"
        }
    .end annotation

    const-string v0, "CamCaps2"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cam_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "CaptureName"

    invoke-interface {p1, p0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static checkVideoPermission(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static clearCapabilityCache(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appContext"
        }
    .end annotation

    const-string v0, "CamCaps2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static fetchCapability(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "appContext",
            "captureName"
        }
    .end annotation

    const-string v0, "CamCaps2"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "CaptureName"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cam_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v1
.end method

.method public static isEmulator()Z
    .locals 6

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "nokia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Nokia_N1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "N1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    :try_start_0
    const-string v0, "/system/bin/cat"

    const-string v2, "/proc/cpuinfo"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "intel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "amd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public static translateToAndroidFormat(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fmt"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x11

    return p0

    :cond_1
    const/16 p0, 0x14

    return p0

    :cond_2
    const p0, 0x32315659

    return p0

    :cond_3
    const/16 p0, 0x23

    return p0
.end method

.method public static translateToCaptureOutputDataType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameDataType"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static translateToEngineFormat(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fmt"
        }
    .end annotation

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/16 p0, 0x63

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 p0, 0xc

    return p0
.end method


# virtual methods
.method public native NotifyCameraExposureAreaChanged(FFFFJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height",
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation
.end method

.method public native NotifyCameraFocusAreaChanged(FFFFJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height",
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation
.end method

.method public native NotifyFaceDetection(II[Landroid/graphics/RectF;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageWidth",
            "imageHeight",
            "faceArray",
            "len",
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation
.end method

.method public native ProvideCameraFrame([BIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "length",
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation
.end method

.method public abstract UnRegisterNativeHandle()I
.end method

.method public abstract allocate()I
.end method

.method protected checkOrientation()I
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

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
    const-string v0, "VideoCapture"

    const-string v1, "video capture checkOrientation display getRotation throwout exception"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mLastRotation:I

    return v0

    :cond_0
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mLastRotation:I

    return v0
.end method

.method public abstract deallocate()V
.end method

.method public abstract getMaxZoom()F
.end method

.method public native isAutoFaceFocusEnabled(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation
.end method

.method public abstract isAutoFaceFocusSupported()Z
.end method

.method public abstract isExposureSupported()Z
.end method

.method public native isFaceDetectionEnabled(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation
.end method

.method public abstract isFocusSupported()Z
.end method

.method public abstract isTorchSupported()Z
.end method

.method public abstract isZoomSupported()Z
.end method

.method public native onCameraError(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeVideoCaptureDeviceAndroid",
            "message"
        }
    .end annotation
.end method

.method protected onRawBufferAvailable([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "length"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/agora/rtc/video/AgoraVideoDebugger;->onRawBufferAvailable(Lio/agora/rtc/video/VideoCapture;[BI)V

    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/agora/rtc/video/VideoCapture;->ProvideCameraFrame([BIJ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->onRawBufferAvailable([BI)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onTextureAndRawBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ[BI)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureBuffer",
            "rotation",
            "timestampNs",
            "data",
            "length"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lio/agora/rtc/video/AgoraVideoDebugger;->onTextureAndRawBufferAvailable(Lio/agora/rtc/video/VideoCapture;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ[BI)V

    iget-wide v7, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lio/agora/rtc/video/VideoCapture;->ProvideCameraTextureAndRaw(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ[BIJ)V

    return-void
.end method

.method protected onTextureBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureBuffer",
            "rotation",
            "timestampNs"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    if-eqz v0, :cond_1

    sget-boolean v1, Lio/agora/rtc/video/VideoCapture;->FORCE_ENC_TEXTURE_OES:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/SurfaceTextureHelper;->textureCopy(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p1, :cond_4

    iget p1, p0, Lio/agora/rtc/video/VideoCapture;->mDroppedTextureBufferCount:I

    add-int/2addr p1, v7

    iput p1, p0, Lio/agora/rtc/video/VideoCapture;->mDroppedTextureBufferCount:I

    rem-int/lit8 p1, p1, 0x32

    if-ne p1, v7, :cond_2

    sget-object p1, Lio/agora/rtc/video/VideoCapture;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dropped texture buffer count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mDroppedTextureBufferCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget p1, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-ne p1, v6, :cond_3

    iget-object p1, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    invoke-virtual {p1, p3, p4}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->onDropTextureBuffer(J)V

    :cond_3
    invoke-static {p3, p4}, Lio/agora/rtc/video/AgoraVideoDebugger;->onDropTextureBuffer(J)V

    return-void

    :cond_4
    iget-object v1, p0, Lio/agora/rtc/video/VideoCapture;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/agora/rtc/video/AgoraVideoDebugger;->onTextureBufferAvailable(Lio/agora/rtc/video/VideoCapture;Lio/agora/rtc/gl/EglBase$Context;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V

    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-ne v0, v7, :cond_5

    iget-wide v5, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/VideoCapture;->ProvideCameraTexture(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJJ)V

    goto :goto_1

    :cond_5
    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->onTextureBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V

    :cond_6
    :goto_1
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->release()V

    return-void
.end method

.method public abstract setAntiBandingMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setAutoFaceFocus(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCaptureFormat(IIZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "frameDataType",
            "textureOES"
        }
    .end annotation
.end method

.method public abstract setEdgeEnhanceMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setExposure(FFZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "inPreview"
        }
    .end annotation
.end method

.method public abstract setExposureCompensation(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setFaceDetection(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFocus(FFZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "inPreview"
        }
    .end annotation
.end method

.method public abstract setNoiseReductionMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setTorchMode(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTorchOn"
        }
    .end annotation
.end method

.method public abstract setVideoStabilityMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setZoom(F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation
.end method

.method public abstract startCapture(III)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "frameRate"
        }
    .end annotation
.end method

.method public abstract stopCapture()I
.end method
