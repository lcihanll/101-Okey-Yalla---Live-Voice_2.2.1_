.class final synthetic Lcom/tencent/liteav/videobase/utils/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videobase/utils/n;

.field private final b:Lcom/tencent/liteav/videobase/frame/PixelFrame;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videobase/utils/n;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/r;->a:Lcom/tencent/liteav/videobase/utils/n;

    iput-object p2, p0, Lcom/tencent/liteav/videobase/utils/r;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videobase/utils/n;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videobase/utils/r;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videobase/utils/r;-><init>(Lcom/tencent/liteav/videobase/utils/n;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/r;->a:Lcom/tencent/liteav/videobase/utils/n;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/r;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v2, v0, Lcom/tencent/liteav/videobase/utils/n;->a:Ljava/lang/String;

    const-string v3, "snapshot pixelFrame"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/liteav/videobase/utils/n;->e:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/tencent/liteav/videobase/utils/n;->f:I

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/tencent/liteav/videobase/utils/n;->g:I

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videobase/utils/n;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/tencent/liteav/videobase/utils/n;->d:Lcom/tencent/liteav/videobase/frame/e;

    iget v3, v0, Lcom/tencent/liteav/videobase/utils/n;->f:I

    iget v4, v0, Lcom/tencent/liteav/videobase/utils/n;->g:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/liteav/videobase/utils/n;->c:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v3, v1, v4, v2}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    iget-object v3, v0, Lcom/tencent/liteav/videobase/utils/n;->b:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/frame/c;->a(I)V

    iget-object v3, v0, Lcom/tencent/liteav/videobase/utils/n;->b:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/c;->b()V

    iget v3, v0, Lcom/tencent/liteav/videobase/utils/n;->f:I

    iget v4, v0, Lcom/tencent/liteav/videobase/utils/n;->g:I

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Lcom/tencent/liteav/videobase/utils/j;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/tencent/liteav/videobase/utils/n;->a:Ljava/lang/String;

    const-string v6, "snapshotFromFrameBuffer, allocate direct buffer failed"

    invoke-static {v3, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/liteav/videobase/utils/n;->e:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    invoke-interface {v3, v4}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, v0, Lcom/tencent/liteav/videobase/utils/n;->f:I

    iget v7, v0, Lcom/tencent/liteav/videobase/utils/n;->g:I

    invoke-static {v5, v5, v6, v7, v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->readPixels(IIIILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, v0, Lcom/tencent/liteav/videobase/utils/n;->f:I

    iget v7, v0, Lcom/tencent/liteav/videobase/utils/n;->g:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v3, v0, Lcom/tencent/liteav/videobase/utils/n;->e:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    invoke-interface {v3, v6}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    :goto_0
    iput-object v4, v0, Lcom/tencent/liteav/videobase/utils/n;->e:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    const v3, 0x8d40

    invoke-static {v3, v5}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindFramebuffer(II)V

    iget-object v3, v0, Lcom/tencent/liteav/videobase/utils/n;->b:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/c;->c()V

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/d;->release()V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/n;->c()V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/tencent/liteav/videobase/utils/n;->a:Ljava/lang/String;

    const-string v2, "snapshot when surface height or width is zero!"

    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method
