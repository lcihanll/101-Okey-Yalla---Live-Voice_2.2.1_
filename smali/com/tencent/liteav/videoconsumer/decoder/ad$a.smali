.class public final Lcom/tencent/liteav/videoconsumer/decoder/ad$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/decoder/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ad$a;->c:Ljava/lang/String;

    return-void
.end method
