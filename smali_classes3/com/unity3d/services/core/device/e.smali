.class public Lcom/unity3d/services/core/device/e;
.super Ljava/lang/Object;
.source "OpenAdvertisingId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/device/e$c;,
        Lcom/unity3d/services/core/device/e$b;
    }
.end annotation


# static fields
.field private static a:Lcom/unity3d/services/core/device/e;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/device/e;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/core/device/e;->c:Z

    return-void
.end method

.method private static a()Lcom/unity3d/services/core/device/e;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/device/e;->a:Lcom/unity3d/services/core/device/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/core/device/e;

    invoke-direct {v0}, Lcom/unity3d/services/core/device/e;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/device/e;->a:Lcom/unity3d/services/core/device/e;

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/device/e;->a:Lcom/unity3d/services/core/device/e;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/unity3d/services/core/device/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/core/device/e$c;-><init>(Lcom/unity3d/services/core/device/e;Lcom/unity3d/services/core/device/e$a;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.huawei.hwid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/unity3d/services/core/device/e$c;->a()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/device/e$b$a;->a(Landroid/os/IBinder;)Lcom/unity3d/services/core/device/e$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/unity3d/services/core/device/e$b;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unity3d/services/core/device/e;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/unity3d/services/core/device/e$b;->a(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/unity3d/services/core/device/e;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Couldn\'t get openAdvertising info"

    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :catch_1
    move-exception p1

    const-string v0, "Couldn\'t bind to identifier service intent"

    invoke-static {v0, p1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/services/core/device/e;->a()Lcom/unity3d/services/core/device/e;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/device/e;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/device/e;->a()Lcom/unity3d/services/core/device/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unity3d/services/core/device/e;->c:Z

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/device/e;->a()Lcom/unity3d/services/core/device/e;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/core/device/e;->b:Ljava/lang/String;

    return-object v0
.end method
