.class public Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/TRTCCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRTCViewMargin"
.end annotation


# instance fields
.field public bottomMargin:F

.field public leftMargin:F

.field public rightMargin:F

.field public topMargin:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;->leftMargin:F

    iput v0, p0, Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;->topMargin:F

    iput v0, p0, Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;->rightMargin:F

    iput v0, p0, Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;->bottomMargin:F

    iput p1, p0, Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;->leftMargin:F

    iput p3, p0, Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;->topMargin:F

    iput p2, p0, Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;->rightMargin:F

    iput p4, p0, Lcom/tencent/trtc/TRTCCloud$TRTCViewMargin;->bottomMargin:F

    return-void
.end method
