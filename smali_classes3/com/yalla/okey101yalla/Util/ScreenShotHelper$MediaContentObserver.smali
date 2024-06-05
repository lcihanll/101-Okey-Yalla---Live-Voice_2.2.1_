.class Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;
.super Landroid/database/ContentObserver;
.source "ScreenShotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalla/okey101yalla/Util/ScreenShotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaContentObserver"
.end annotation


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;


# direct methods
.method constructor <init>(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;->mContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;

    invoke-static {p1}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->access$000(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;)Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$MediaContentObserver;->mContentUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->access$200(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
