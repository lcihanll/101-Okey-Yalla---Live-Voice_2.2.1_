.class public Lio/agora/rtc/video/AgoraVideoDebugger;
.super Ljava/lang/Object;
.source "AgoraVideoDebugger.java"


# static fields
.field public static final DIRECT_OES:Z = false

.field public static final ENABLE_DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AgoraVideoDebugger"

.field public static final VERBOSE:Z = false

.field public static final VERBOSE_DETAIL:Z = false

.field static applyRotation:Z = false

.field static debugViewForTexture:Lio/agora/rtc/mediaio/AgoraSurfaceView; = null

.field static droppedTextureFrameCnt:I = 0x0

.field static followSourceDimension:Z = false

.field static isDebugViewInitialized:Z = false

.field static lastTextureHeight:I = 0x0

.field static lastTextureWidth:I = 0x0

.field static mirror:Z = false

.field static renderHandler:Landroid/os/Handler;

.field static renderThread:Landroid/os/HandlerThread;

.field static textureFrameCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onDropTextureBuffer(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestampNs"
        }
    .end annotation

    return-void
.end method

.method static onRawBufferAvailable(Lio/agora/rtc/video/VideoCapture;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "videoCapture",
            "data",
            "length"
        }
    .end annotation

    return-void
.end method

.method static onTextureAndRawBufferAvailable(Lio/agora/rtc/video/VideoCapture;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ[BI)V
    .locals 0
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
            "videoCapture",
            "textureBuffer",
            "rotation",
            "timestampNs",
            "data",
            "length"
        }
    .end annotation

    return-void
.end method

.method static onTextureBufferAvailable(Lio/agora/rtc/video/VideoCapture;Lio/agora/rtc/gl/EglBase$Context;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "videoCapture",
            "eglContext",
            "textureBuffer",
            "rotation",
            "timestampNs"
        }
    .end annotation

    return-void
.end method

.method static reset()V
    .locals 0

    return-void
.end method

.method public static setDebugViewForTexture(Lio/agora/rtc/mediaio/AgoraSurfaceView;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "followSourceDimension",
            "mirror",
            "applyRotation"
        }
    .end annotation

    return-void
.end method
