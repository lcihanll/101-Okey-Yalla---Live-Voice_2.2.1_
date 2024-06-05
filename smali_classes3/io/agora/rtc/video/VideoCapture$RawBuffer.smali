.class public Lio/agora/rtc/video/VideoCapture$RawBuffer;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RawBuffer"
.end annotation


# instance fields
.field data:[B

.field length:I


# direct methods
.method constructor <init>([BI)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCapture$RawBuffer;->data:[B

    iput p2, p0, Lio/agora/rtc/video/VideoCapture$RawBuffer;->length:I

    return-void
.end method
