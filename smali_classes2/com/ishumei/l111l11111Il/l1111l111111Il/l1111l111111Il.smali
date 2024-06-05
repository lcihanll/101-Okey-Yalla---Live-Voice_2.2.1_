.class public final Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;
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

    iput-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l111l11111lIl:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il$1;

    invoke-direct {v0, p0}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il$1;-><init>(Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;)V

    iput-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l111l11111I1l:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l1111l111111Il:Landroid/content/Context;

    return-void
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l111l11111lIl:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.msa.SupplementaryDID"

    const-string v3, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l1111l111111Il:Landroid/content/Context;

    iget-object v2, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l111l11111I1l:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l111l11111lIl:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l1111l111111Il:Landroid/content/Context;

    iget-object v4, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;->l111l11111I1l:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method
