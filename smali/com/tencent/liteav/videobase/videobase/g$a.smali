.class final Lcom/tencent/liteav/videobase/videobase/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videobase/videobase/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field public final b:I

.field public final c:Lcom/tencent/liteav/videobase/videobase/d$a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;ILcom/tencent/liteav/videobase/videobase/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/g$a;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iput p2, p0, Lcom/tencent/liteav/videobase/videobase/g$a;->b:I

    iput-object p3, p0, Lcom/tencent/liteav/videobase/videobase/g$a;->c:Lcom/tencent/liteav/videobase/videobase/d$a;

    return-void
.end method
