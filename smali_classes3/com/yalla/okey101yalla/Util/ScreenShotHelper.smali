.class public Lcom/yalla/okey101yalla/Util/ScreenShotHelper;
.super Ljava/lang/Object;
.source "ScreenShotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;,
        Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;
    }
.end annotation


# static fields
.field private static final KEYWORDS:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS:[Ljava/lang/String;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private lastData:Ljava/lang/String;

.field private listener:Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;

.field private final mExternalObserver:Landroid/database/ContentObserver;

.field private final mInternalObserver:Landroid/database/ContentObserver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final shotCallBack:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "screenshot"

    const-string v1, "screen_shot"

    const-string v2, "screen-shot"

    const-string v3, "screen shot"

    const-string v4, "screencapture"

    const-string v5, "screen_capture"

    const-string v6, "screen-capture"

    const-string v7, "screen capture"

    const-string v8, "screencap"

    const-string v9, "screen_cap"

    const-string v10, "screen-cap"

    const-string v11, "screen cap"

    const-string v12, "snap"

    const-string v13, "\u622a\u5c4f"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->KEYWORDS:[Ljava/lang/String;

    const-string v0, "_data"

    const-string v1, "datetaken"

    const-string v2, "date_added"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;-><init>(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mInternalObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;-><init>(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mExternalObserver:Landroid/database/ContentObserver;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$1;

    invoke-direct {v0, p0}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$1;-><init>(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;)V

    iput-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->shotCallBack:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;)Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;
    .locals 0

    iget-object p0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->listener:Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->lastData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->handleMediaContentChange(Landroid/net/Uri;)V

    return-void
.end method

.method private checkScreenShot(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->KEYWORDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private handleMediaContentChange(Landroid/net/Uri;)V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x1a

    const-string v3, "date_added"

    if-lt v1, v2, :cond_0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android:query-arg-sort-direction"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android:query-arg-sort-columns"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "android:query-arg-offset"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android:query-arg-limit"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    invoke-virtual {v2, p1, v4, v1, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date_added desc limit 1"

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_3
    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "datetaken"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->lastData:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, 0x1f4

    if-eqz v6, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x1c20

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->shotCallBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->shotCallBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-eqz v6, :cond_7

    const-wide/16 v9, 0x3e8

    mul-long v2, v2, v9

    cmp-long v6, v4, v2

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->checkScreenShot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->shotCallBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->lastData:Ljava/lang/String;

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->shotCallBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->shotCallBack:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->listener:Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;

    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;->onShot(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->listener:Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mInternalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mExternalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mInternalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->mExternalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
