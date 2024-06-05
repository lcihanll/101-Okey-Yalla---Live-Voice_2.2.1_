.class public final Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111Il;
.super Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;


# instance fields
.field private l1111l111111Il:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;-><init>()V

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111Il;->l1111l111111Il:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    :try_start_0
    const-string v1, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111Il;->l1111l111111Il:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "oaid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :catchall_0
    :cond_1
    return-object v0
.end method
