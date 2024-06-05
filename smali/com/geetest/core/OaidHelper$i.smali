.class public Lcom/geetest/core/OaidHelper$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/core/OaidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Lcom/geetest/core/OaidHelper$d;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/concurrent/CountDownLatch;

.field public d:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geetest/core/OaidHelper$i;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/geetest/core/OaidHelper$i;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/geetest/core/OaidHelper$i;->a:Lcom/geetest/core/OaidHelper$d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iget-object p2, p0, Lcom/geetest/core/OaidHelper$i;->c:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object p2, p0, Lcom/geetest/core/OaidHelper$i;->d:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/geetest/core/OaidHelper$i;->b:Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/geetest/core/OaidHelper$d;

    if-eqz v2, :cond_2

    move-object p2, v1

    check-cast p2, Lcom/geetest/core/OaidHelper$d;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/geetest/core/OaidHelper$d;

    invoke-direct {v1, p2, v0}, Lcom/geetest/core/OaidHelper$d;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lcom/geetest/core/OaidHelper$i;->a:Lcom/geetest/core/OaidHelper$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iput-object p2, p0, Lcom/geetest/core/OaidHelper$i;->d:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/geetest/core/OaidHelper$i;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/geetest/core/OaidHelper$i;->a:Lcom/geetest/core/OaidHelper$d;

    iput-object p1, p0, Lcom/geetest/core/OaidHelper$i;->d:Landroid/os/IBinder;

    return-void
.end method
