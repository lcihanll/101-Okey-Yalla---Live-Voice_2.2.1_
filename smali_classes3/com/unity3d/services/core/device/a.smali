.class public Lcom/unity3d/services/core/device/a;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/device/a$c;,
        Lcom/unity3d/services/core/device/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/unity3d/services/core/device/a;


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

    iput-object v0, p0, Lcom/unity3d/services/core/device/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/core/device/a;->c:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/device/a;->b()Lcom/unity3d/services/core/device/a;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/core/device/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/unity3d/services/core/device/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/services/core/device/a$c;-><init>(Lcom/unity3d/services/core/device/a;Lcom/unity3d/services/core/device/a$a;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Couldn\'t bind to identifier service intent"

    invoke-static {v3, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/unity3d/services/core/device/a$c;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/core/device/a$b$a;->a(Landroid/os/IBinder;)Lcom/unity3d/services/core/device/a$b;

    move-result-object v3

    invoke-interface {v3}, Lcom/unity3d/services/core/device/a$b;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unity3d/services/core/device/a;->b:Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/unity3d/services/core/device/a$b;->a(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/unity3d/services/core/device/a;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "Couldn\'t get advertising info"

    invoke-static {v3, v2}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    throw v2

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    return-void
.end method

.method private static b()Lcom/unity3d/services/core/device/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/device/a;->a:Lcom/unity3d/services/core/device/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/services/core/device/a;

    invoke-direct {v0}, Lcom/unity3d/services/core/device/a;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/device/a;->a:Lcom/unity3d/services/core/device/a;

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/device/a;->a:Lcom/unity3d/services/core/device/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/device/a;->b()Lcom/unity3d/services/core/device/a;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/device/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/unity3d/services/core/device/a;->b()Lcom/unity3d/services/core/device/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unity3d/services/core/device/a;->c:Z

    return v0
.end method
