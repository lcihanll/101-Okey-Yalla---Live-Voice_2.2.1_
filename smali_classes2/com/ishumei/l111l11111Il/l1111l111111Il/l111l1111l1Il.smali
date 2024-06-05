.class public final Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111l1Il;
.super Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;


# instance fields
.field private final l1111l111111Il:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;-><init>()V

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111l1Il;->l1111l111111Il:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "content://cn.nubia.identity/identity"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x11

    const-string v4, "getOAID"

    const/4 v5, 0x0

    if-le v2, v3, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111l1Il;->l1111l111111Il:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4, v5, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111l1Il;->l1111l111111Il:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    :cond_2
    :goto_0
    const/4 v1, -0x1

    if-eqz v5, :cond_3

    const-string v2, "code"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_3
    if-nez v1, :cond_4

    const-string v1, "id"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    return-object v0
.end method
