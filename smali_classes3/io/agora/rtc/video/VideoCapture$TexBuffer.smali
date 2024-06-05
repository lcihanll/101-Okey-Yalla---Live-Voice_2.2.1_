.class public Lio/agora/rtc/video/VideoCapture$TexBuffer;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TexBuffer"
.end annotation


# instance fields
.field rotation:I

.field textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

.field timestampNs:J


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    iput p2, p0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->rotation:I

    iput-wide p3, p0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->timestampNs:J

    return-void
.end method
