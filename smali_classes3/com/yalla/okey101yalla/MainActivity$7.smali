.class Lcom/yalla/okey101yalla/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalla/okey101yalla/MainActivity;->GetAdveritisingId()V
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

    iput-object p1, p0, Lcom/yalla/okey101yalla/MainActivity$7;->this$0:Lcom/yalla/okey101yalla/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/yalla/okey101yalla/MainActivity$7;->this$0:Lcom/yalla/okey101yalla/MainActivity;

    invoke-virtual {v0}, Lcom/yalla/okey101yalla/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yalla/okey101yalla/Util/AdvertisingIdClient;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main Camera"

    const-string v2, "onAdvertisingRes"

    invoke-static {v1, v2, v0}, Lcom/yalla/okey101yalla/MainActivity;->callUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
