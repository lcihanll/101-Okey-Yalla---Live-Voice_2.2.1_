.class public Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;
.super Ljava/lang/Object;


# static fields
.field private static final l1111l111111Il:J = 0x96L


# instance fields
.field private l111l11111I1l:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;

.field private final l111l11111lIl:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    if-eqz p1, :cond_a

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "lenovo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111Il;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111Il;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "nubia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111l1Il;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111l1Il;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v1, "oneplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lIl;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lIl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111lIIl;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111lIIl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I11l;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I11l;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1l;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1l;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1ll;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1ll;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    const-string v1, "zte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111Il;

    invoke-direct {v0, p1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111Il;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111I1l:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;

    return-void
.end method

.method private l111l11111I1l()Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;
    .locals 3

    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "asus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l1111l111111Il;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111lIl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    const-string v2, "lenovo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111I1l;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_3
    const-string v2, "meizu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111Il;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l11111Il;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_4
    const-string v2, "nubia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111l1Il;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111l1Il;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_5
    const-string v2, "oneplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lIl;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lIl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_6
    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111lIIl;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111lIIl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_7
    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I11l;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I11l;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_8
    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1l;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1l;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_9
    const-string v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1ll;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111I1ll;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_a
    const-string v2, "zte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111Il;

    iget-object v1, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111lIl:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l11l1111Il;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_b
    return-object v1
.end method

.method public static l111l11111lIl()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "scale"

    const-string v1, "level"

    const-string v2, "status"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x64

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "temperature"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "voltage"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "temp"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vol"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v3
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111llIl;->l111l11111I1l:Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/ishumei/l111l11111Il/l1111l111111Il/l111l1111lI1l;->l1111l111111Il(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
