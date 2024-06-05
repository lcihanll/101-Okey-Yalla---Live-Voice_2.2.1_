.class final Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;


# direct methods
.method constructor <init>(Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l$1;->l1111l111111Il:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l$1;->l1111l111111Il:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;

    invoke-static {p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
