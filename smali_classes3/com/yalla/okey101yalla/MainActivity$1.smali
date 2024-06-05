.class Lcom/yalla/okey101yalla/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalla/okey101yalla/MainActivity;->startScreenShotListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalla/okey101yalla/MainActivity;


# direct methods
.method constructor <init>(Lcom/yalla/okey101yalla/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/MainActivity$1;->this$0:Lcom/yalla/okey101yalla/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShot(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/yalla/okey101yalla/MainActivity$1;->this$0:Lcom/yalla/okey101yalla/MainActivity;

    iput-object p1, v0, Lcom/yalla/okey101yalla/MainActivity;->pathshotScreen:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u5f97\u622a\u56fe\u8def\u5f84\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u622a\u56fe\u6d4b\u8bd5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Main Camera"

    const-string v1, "ScreenshotsListener"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
