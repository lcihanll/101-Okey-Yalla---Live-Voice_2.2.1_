.class public Lcom/ishumei/l1111l111111Il/l111l1111llIl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l1111l111111Il;
.implements Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l111l11111lIl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;,
        Lcom/ishumei/l1111l111111Il/l111l1111llIl$l111l11111lIl;
    }
.end annotation


# static fields
.field private static final l1111l111111Il:I = -0x1

.field private static final l111l11111I1l:I = -0x3

.field private static l111l11111Il:I = -0x4

.field private static final l111l11111lIl:I = -0x2

.field private static final l111l1111l1Il:Ljava/lang/String; = "sm"


# instance fields
.field private l111l1111lI1l:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

.field private l111l1111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;

.field private l111l1111llIl:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l11l1111lIIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;


# direct methods
.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l1111llIl:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$1;-><init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl;ZI)V

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l1111lI1l:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

    new-instance v7, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;

    const/4 v0, 0x2

    invoke-direct {v7, p0, v1, v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$3;-><init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl;ZI)V

    iput-object v7, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l1111lIl:Lcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;

    new-instance v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v8, ""

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;-><init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l1111l111111Il;Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il$l111l11111lIl;ZILcom/ishumei/l111l1111l1Il/l111l11111I1l$l1111l111111Il;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l11l1111lIIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;-><init>()V

    return-void
.end method

.method public static l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;
    .locals 1

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l111l11111lIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    move-result-object v0

    return-object v0
.end method

.method public static l1111l111111Il(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "fp-it.fengkongcloud.com"

    if-eqz v0, :cond_1

    move-object p0, v1

    :cond_1
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const-string p2, "https://"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p2, "http://"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l1111l111111Il/l111l1111llIl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l1111llIl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic l111l11111lIl(Lcom/ishumei/l1111l111111Il/l111l1111llIl;)Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l11l1111lIIl:Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;

    return-object p0
.end method

.method private static l111l11111lIl(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "c"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "t"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    if-ltz v0, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l1111l111111Il(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl$2;-><init>(Lcom/ishumei/l1111l111111Il/l111l1111llIl;ZLcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final l1111l111111Il(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "9b9a8b9e9693"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "9b9a89969c9ab69b"

    invoke-static {v1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "c"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "t"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    if-ltz v2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l1111l111111Il(II)V

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->getServerIdCallback()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    sput-object v1, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111llIl:Ljava/lang/String;

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->getServerIdCallback()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "B"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;->onSuccess(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111I1l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return v0
.end method

.method public final declared-synchronized l111l11111I1l()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111llIl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "B"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111llIl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111lIl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111llIl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "B"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111llIl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l1111l111111Il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l111l11111lIl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "D"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "9c9e9393df989a8bbb9a89969c9ab69bdf9d8a8bdf91908bdf9c8d9a9e8b9a"

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111I1l;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalAccessException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111lIl([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v2

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "D"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_6
    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111lIIl()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l1111l111111Il;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_5

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111lIl([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111I1l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111lIl([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_2
    move-exception v0

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "D"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111I1l;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {v2, v3}, Lcom/ishumei/l111l11111lIl/l111l11111I1l;->l1111l111111Il(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lIl;->l111l11111lIl([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_3
    move-exception v0

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l111l11111Il()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111lIl/l111l11111lIl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl;->l11l1111I1l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111lIIl()Z

    move-result v2

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int v0, v2, v1

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l1111l111111Il;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ishumei/l1111l111111Il/l1111l111111Il;->l1111l111111Il(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l111l11111lIl()V
    .locals 1

    iget-object v0, p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l1111lI1l:Lcom/ishumei/l111l11111I1l/l111l11111lIl;

    invoke-virtual {v0}, Lcom/ishumei/l111l11111I1l/l111l11111lIl;->l1111l111111Il()V

    return-void
.end method

.method public l111l1111l1Il()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
