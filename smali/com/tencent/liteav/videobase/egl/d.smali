.class public final synthetic Lcom/tencent/liteav/videobase/egl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videobase/egl/c;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/egl/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/egl/d;->a:Lcom/tencent/liteav/videobase/egl/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videobase/egl/d;->a:Lcom/tencent/liteav/videobase/egl/c;

    iget-object v1, v0, Lcom/tencent/liteav/videobase/egl/c;->d:Lcom/tencent/liteav/videobase/egl/EGLCore;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/tencent/liteav/videobase/egl/c;->d:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->makeCurrent()V

    iget-object v1, v0, Lcom/tencent/liteav/videobase/egl/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteShaderId(I)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/egl/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "EGLContextChecker"

    const-string v3, "release EGLCore failed."

    invoke-static {v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, v0, Lcom/tencent/liteav/videobase/egl/c;->d:Lcom/tencent/liteav/videobase/egl/EGLCore;

    invoke-static {v1}, Lcom/tencent/liteav/videobase/egl/EGLCore;->destroy(Lcom/tencent/liteav/videobase/egl/EGLCore;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/liteav/videobase/egl/c;->d:Lcom/tencent/liteav/videobase/egl/EGLCore;

    :cond_0
    return-void
.end method
