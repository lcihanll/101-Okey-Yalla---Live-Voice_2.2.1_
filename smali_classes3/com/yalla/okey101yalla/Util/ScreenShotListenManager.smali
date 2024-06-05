.class public Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;
.super Ljava/lang/Object;
.source "ScreenShotListenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;,
        Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$OnScreenShotListener;
    }
.end annotation


# static fields
.field private static final KEYWORDS:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ScreenShotListenManager"

.field private static final sHasCallbackPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreenRealSize:Landroid/graphics/Point;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

.field private mInternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

.field private mListener:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$OnScreenShotListener;

.field private mStartListenTime:J

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "_data"

    const-string v1, "datetaken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    const-string v2, "width"

    const-string v3, "height"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

    const-string v1, "screenshot"

    const-string v2, "screen_shot"

    const-string v3, "screen-shot"

    const-string v4, "screen shot"

    const-string v5, "screencapture"

    const-string v6, "screen_capture"

    const-string v7, "screen-capture"

    const-string v8, "screen capture"

    const-string v9, "screencap"

    const-string v10, "screen_cap"

    const-string v11, "screen-cap"

    const-string v12, "screen cap"

    const-string v13, "screenshots"

    const-string v14, "\u622a\u5c4f"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->KEYWORDS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mUiHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->sScreenRealSize:Landroid/graphics/Point;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object p1

    sput-object p1, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->sScreenRealSize:Landroid/graphics/Point;

    const-string v0, "ScreenShotListenManager"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen Real Size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->sScreenRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->sScreenRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Get screen real size failed."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->handleMediaContentChange(Landroid/net/Uri;)V

    return-void
.end method

.method private static assertInMainThread()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call the method must be in main thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkCallback(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenShot: imgPath has done; imagePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenShotListenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method private checkScreenShot(Ljava/lang/String;JII)Z
    .locals 3

    iget-wide p4, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mStartListenTime:J

    const-string v0, "ScreenShotListenManager"

    const/4 v1, 0x0

    cmp-long v2, p2, p4

    if-ltz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sub-long/2addr p4, p2

    const-wide/16 p2, 0x2710

    cmp-long v2, p4, p2

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "checkScreenShot: \u8def\u5f84"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->KEYWORDS:[Ljava/lang/String;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_3

    aget-object p5, p2, p4

    invoke-virtual {p1, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "checkScreenShot: \u5176\u4ed6"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    const-string p1, "checkScreenShot: \u65f6\u95f4"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private getImageSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private getRealScreenSize()Landroid/graphics/Point;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    :try_start_2
    const-class v2, Landroid/view/Display;

    const-string v3, "getRawWidth"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Landroid/view/Display;

    const-string v5, "getRawHeight"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private handleMediaContentChange(Landroid/net/Uri;)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1d

    const-string v3, "datetaken"

    const-string v4, "ScreenShotListenManager"

    if-lt v1, v2, :cond_0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android:query-arg-sort-columns"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "android:query-arg-sort-direction"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android:query-arg-limit"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

    invoke-virtual {v2, p1, v5, v1, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    const-string p1, "Android11"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Android10"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date_added desc limit 1"

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_2

    const-string p1, "Deviant logic."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Cursor no data."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_3
    const-string p1, "_data"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, -0x1

    if-ne v2, v3, :cond_5

    const-string v2, "width"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v2, "height"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    :goto_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v9, p1

    move v10, v1

    goto :goto_2

    :cond_6
    invoke-direct {p0, v6}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->getImageSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    move v10, p1

    move v9, v1

    :goto_2
    if-lez v9, :cond_7

    if-lez v10, :cond_7

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->handleMediaRowData(Ljava/lang/String;JII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_8

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :goto_4
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1
.end method

.method private handleMediaRowData(Ljava/lang/String;JII)V
    .locals 6

    invoke-direct/range {p0 .. p5}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->checkScreenShot(Ljava/lang/String;JII)Z

    move-result v0

    const-string v1, "; date = "

    const-string v2, " * "

    const-string v3, "; size = "

    const-string v4, "ScreenShotListenManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenShot: path = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mListener:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$OnScreenShotListener;

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->checkCallback(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mListener:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$OnScreenShotListener;

    invoke-interface {p2, p1}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$OnScreenShotListener;->onShot(Ljava/lang/String;)V

    const-string p1, "ScreenShot: Send Msg to Unity Success"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media content changed, but not screenshot: path = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;
    .locals 1

    invoke-static {}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->assertInMainThread()V

    new-instance v0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;

    invoke-direct {v0, p0}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public setListener(Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$OnScreenShotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mListener:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$OnScreenShotListener;

    return-void
.end method

.method public startListen()V
    .locals 4

    invoke-static {}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->assertInMainThread()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mStartListenTime:J

    new-instance v0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;-><init>(Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mInternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    new-instance v0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;-><init>(Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mExternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mInternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mExternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stopListen()V
    .locals 4

    invoke-static {}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->assertInMainThread()V

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mInternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mInternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mInternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mExternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mExternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iput-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mExternalObserver:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;

    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mStartListenTime:J

    iput-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->mListener:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$OnScreenShotListener;

    return-void
.end method
