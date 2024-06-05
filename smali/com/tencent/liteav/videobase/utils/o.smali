.class final synthetic Lcom/tencent/liteav/videobase/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videobase/utils/n;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videobase/utils/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/o;->a:Lcom/tencent/liteav/videobase/utils/n;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videobase/utils/n;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videobase/utils/o;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/utils/o;-><init>(Lcom/tencent/liteav/videobase/utils/n;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/o;->a:Lcom/tencent/liteav/videobase/utils/n;

    iget-object v1, v0, Lcom/tencent/liteav/videobase/utils/n;->e:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/liteav/videobase/utils/n;->e:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lcom/tencent/liteav/videobase/utils/n;->e:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/n;->c()V

    return-void
.end method
