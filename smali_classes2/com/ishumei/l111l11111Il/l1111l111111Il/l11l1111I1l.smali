.class public final Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1l;
.super Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;


# instance fields
.field private l1111l111111Il:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;-><init>()V

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1l;->l1111l111111Il:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 7

    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1l;->l1111l111111Il:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, ""

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method
