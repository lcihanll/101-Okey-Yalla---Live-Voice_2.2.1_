.class public Lio/agora/rtc/video/CameraCapturerConfiguration;
.super Ljava/lang/Object;
.source "CameraCapturerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;,
        Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;,
        Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;
    }
.end annotation


# static fields
.field public static final CD_1280x720:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

.field public static final CD_1920x1080:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

.field public static final CD_640x480:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;


# instance fields
.field public cameraDirection:Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

.field public dimensions:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

.field public preference:Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/CameraCapturerConfiguration;->CD_640x480:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    new-instance v0, Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/CameraCapturerConfiguration;->CD_1280x720:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    new-instance v0, Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/CameraCapturerConfiguration;->CD_1920x1080:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    return-void
.end method

.method public constructor <init>(IILio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "cameraDirection"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;->CAPTURER_OUTPUT_PREFERENCE_MANUAL:Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;

    iput-object v0, p0, Lio/agora/rtc/video/CameraCapturerConfiguration;->preference:Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;

    iput-object p3, p0, Lio/agora/rtc/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    new-instance p3, Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    invoke-direct {p3, p1, p2}, Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;-><init>(II)V

    iput-object p3, p0, Lio/agora/rtc/video/CameraCapturerConfiguration;->dimensions:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "cameraDirection"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/CameraCapturerConfiguration;->preference:Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;

    iput-object p2, p0, Lio/agora/rtc/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dimensions",
            "cameraDirection"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;->CAPTURER_OUTPUT_PREFERENCE_MANUAL:Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;

    iput-object v0, p0, Lio/agora/rtc/video/CameraCapturerConfiguration;->preference:Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;

    iput-object p2, p0, Lio/agora/rtc/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    iput-object p1, p0, Lio/agora/rtc/video/CameraCapturerConfiguration;->dimensions:Lio/agora/rtc/video/CameraCapturerConfiguration$CaptureDimensions;

    return-void
.end method
