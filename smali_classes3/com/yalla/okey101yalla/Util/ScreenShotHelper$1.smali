.class Lcom/yalla/okey101yalla/Util/ScreenShotHelper$1;
.super Ljava/lang/Object;
.source "ScreenShotHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalla/okey101yalla/Util/ScreenShotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;


# direct methods
.method constructor <init>(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$1;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$1;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;

    invoke-static {v0}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->access$000(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;)Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$1;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;

    invoke-static {v0}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->access$100(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$1;->this$0:Lcom/yalla/okey101yalla/Util/ScreenShotHelper;

    invoke-static {v1}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper;->access$000(Lcom/yalla/okey101yalla/Util/ScreenShotHelper;)Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yalla/okey101yalla/Util/ScreenShotHelper$OnScreenShotListener;->onShot(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
