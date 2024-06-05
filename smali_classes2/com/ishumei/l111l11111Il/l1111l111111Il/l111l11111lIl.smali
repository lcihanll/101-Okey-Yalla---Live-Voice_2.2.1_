.class public final Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;
.super Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;


# instance fields
.field private l1111l111111Il:Landroid/content/Context;

.field private l111l11111I1l:Landroid/content/ServiceConnection;

.field private final l111l11111lIl:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l111l11111lIl:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl$1;

    invoke-direct {v0, p0}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl$1;-><init>(Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;)V

    iput-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l111l11111I1l:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l1111l111111Il:Landroid/content/Context;

    return-void
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l111l11111lIl:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 7

    const-string v0, "com.huawei.hwid"

    :try_start_0
    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l1111l111111Il:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l1111l111111Il:Landroid/content/Context;

    iget-object v3, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l111l11111I1l:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l111l11111lIl:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v6, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-interface {v0, v4, v3, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_0
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l1111l111111Il:Landroid/content/Context;

    iget-object v2, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l111l11111I1l:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l1111l111111Il:Landroid/content/Context;

    iget-object v2, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l111l11111I1l:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :catch_0
    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l1111l111111Il:Landroid/content/Context;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;->l111l11111I1l:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
    const-string v0, ""

    return-object v0
.end method
