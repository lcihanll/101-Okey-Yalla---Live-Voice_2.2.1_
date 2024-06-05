.class Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;
.super Landroid/database/ContentObserver;
.source "ScreenShotListenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaContentObserver"
.end annotation


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;


# direct methods
.method public constructor <init>(Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;->mContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "ScreenShotListenManager"

    const-string v0, "onChange: \u89c2\u5bdf\u5a92\u4f53\u6570\u636e\u5e93\u7684\u6539\u53d8"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager$MediaContentObserver;->mContentUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;->access$000(Lcom/yalla/okey101yalla/Util/ScreenShotListenManager;Landroid/net/Uri;)V

    return-void
.end method
