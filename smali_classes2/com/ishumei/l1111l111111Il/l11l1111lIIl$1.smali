.class final Lcom/ishumei/l1111l111111Il/l11l1111lIIl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/l1111l111111Il/l11l1111lIIl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;


# direct methods
.method constructor <init>(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$1;->l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l11l1111lIIl$1;->l1111l111111Il:Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    invoke-static {v0}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il(Lcom/ishumei/l1111l111111Il/l11l1111lIIl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
