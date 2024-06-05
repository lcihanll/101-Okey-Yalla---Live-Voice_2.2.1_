.class public Lcom/tencent/liteav/videobase/frame/MirrorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field public isHorizontal:Z

.field public isVertical:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/MirrorInfo;->isHorizontal:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/MirrorInfo;->isVertical:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/MirrorInfo;->isHorizontal:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/MirrorInfo;->isVertical:Z

    iput-boolean p1, p0, Lcom/tencent/liteav/videobase/frame/MirrorInfo;->isHorizontal:Z

    iput-boolean p2, p0, Lcom/tencent/liteav/videobase/frame/MirrorInfo;->isVertical:Z

    return-void
.end method
