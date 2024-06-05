.class public Lcom/yalla/okey101yalla/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# instance fields
.field TAG:Ljava/lang/String;

.field currentDate:Ljava/util/Date;

.field handler:Landroid/os/Handler;

.field initialDate:Ljava/util/Date;

.field running:Z

.field sensorManager:Landroid/hardware/SensorManager;

.field public sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "PEDOMETER"

    iput-object v0, p0, Lcom/yalla/okey101yalla/MyService;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yalla/okey101yalla/MyService;->handler:Landroid/os/Handler;

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    const-string v2, "PedometerLib"

    const-string v3, "Service Channel"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {}, Lcom/yalla/okey101yalla/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private startNotification()V
    .locals 5

    sget-object v0, Lcom/yalla/okey101yalla/MainActivity;->ServiceContent:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/yalla/okey101yalla/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/yalla/okey101yalla/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    invoke-static {}, Lcom/yalla/okey101yalla/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/yalla/okey101yalla/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "PedometerLib"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/yalla/okey101yalla/MainActivity;->ServiceTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v2, Lcom/yalla/okey101yalla/R$mipmap;->icon_okey:I

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {p0, v1, v0}, Lcom/yalla/okey101yalla/MyService;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "StartNotification......."

    invoke-static {v0}, Lcom/yalla/okey101yalla/MainActivity;->UnityDebug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    iget-object v0, p0, Lcom/yalla/okey101yalla/MyService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/yalla/okey101yalla/MyService$1;

    invoke-direct {v1, p0}, Lcom/yalla/okey101yalla/MyService$1;-><init>(Lcom/yalla/okey101yalla/MyService;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    iget-object p1, p0, Lcom/yalla/okey101yalla/MyService;->TAG:Ljava/lang/String;

    const-string p2, "onStartCommand: STARTED"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/yalla/okey101yalla/MyService;->createNotificationChannel()V

    invoke-direct {p0}, Lcom/yalla/okey101yalla/MyService;->startNotification()V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
