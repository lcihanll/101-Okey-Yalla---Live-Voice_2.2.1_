.class public Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il$l1111l111111Il;
    }
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String; = "fc_times"

.field private static final l111l11111I1l:Ljava/lang/String; = "n"

.field private static final l111l11111Il:Ljava/lang/String; = "t"

.field private static final l111l11111lIl:Ljava/lang/String; = "l"

.field private static final l111l1111l1Il:I = 0x14

.field private static final l111l1111llIl:I = -0x100000


# instance fields
.field private l111l1111lI1l:Landroid/content/SharedPreferences;

.field private l111l1111lIl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/util/List;

    :try_start_0
    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    const-string v1, "fc_times"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;-><init>()V

    return-void
.end method

.method private static l1111l111111Il(I)I
    .locals 1

    const v0, 0xfffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 v0, 0xb40

    if-le p0, v0, :cond_0

    const/16 p0, 0xb40

    :cond_0
    return p0
.end method

.method public static l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;
    .locals 1

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    return-object v0
.end method

.method private l111l11111Il()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "t"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    invoke-static {v1, v3, v0}, Lcom/ishumei/l111l1111llIl/l111l1111llIl;->l1111l111111Il(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private static l111l11111lIl(I)I
    .locals 1

    shr-int/lit8 p0, p0, 0x14

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/16 p0, 0x64

    :cond_0
    return p0
.end method

.method private static l111l11111lIl(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x14

    add-int/2addr p1, p0

    return p1
.end method

.method private l111l1111l1Il()V
    .locals 5

    const-string v0, "t"

    :try_start_0
    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/util/List;

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    const-string v2, "l"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ishumei/l111l1111llIl/l111l1111llIl;->l1111l111111Il(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/ishumei/l111l1111llIl/l111l1111llIl;->l1111l111111Il(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized l1111l111111Il(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-lez p1, :cond_2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "n"

    shl-int/lit8 p2, p2, 0x14

    add-int/2addr p2, p1

    invoke-static {v0, v1, p2}, Lcom/ishumei/l111l1111llIl/l111l1111llIl;->l1111l111111Il(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string p1, "n"

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/ishumei/l111l1111llIl/l111l1111llIl;->l1111l111111Il(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized l111l11111I1l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lIl:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l111l11111lIl()Z
    .locals 10

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v2, "n"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111l1Il()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    const-string v4, "l"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const v2, 0xfffff

    and-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v6, 0xb40

    if-le v2, v6, :cond_2

    const/16 v2, 0xb40

    :cond_2
    int-to-long v6, v2

    const-wide/32 v8, 0xea60

    mul-long v6, v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v2, v6, v4

    if-gez v2, :cond_3

    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111l1Il()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    const-string v4, "t"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    shr-int/lit8 v1, v1, 0x14

    const/16 v4, 0x64

    if-le v1, v4, :cond_4

    const/16 v1, 0x64

    :cond_4
    if-lt v2, v1, :cond_5

    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111l1Il()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :cond_5
    :try_start_4
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    const-string v4, "t"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111lI1l:Landroid/content/SharedPreferences;

    const-string v4, "t"

    invoke-static {v2, v4, v1}, Lcom/ishumei/l111l1111llIl/l111l1111llIl;->l1111l111111Il(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    :try_start_5
    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l1111l1Il()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
