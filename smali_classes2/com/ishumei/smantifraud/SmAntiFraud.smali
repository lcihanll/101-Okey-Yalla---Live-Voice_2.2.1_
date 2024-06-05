.class public Lcom/ishumei/smantifraud/SmAntiFraud;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;,
        Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;,
        Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;
    }
.end annotation


# static fields
.field public static final AREA_BJ:Ljava/lang/String; = "bj"

.field public static final AREA_FJNY:Ljava/lang/String; = "fjny"

.field public static final AREA_XJP:Ljava/lang/String; = "xjp"

.field public static final SM_AF_ASYN_MODE:I = 0x1

.field public static final SM_AF_SYN_MODE:I = 0x0

.field public static l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption; = null

.field private static l111l11111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback; = null

.field private static final l111l11111lIl:Ljava/lang/String; = "sm"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V
    .locals 8

    const-class v0, Lcom/ishumei/smantifraud/SmAntiFraud;

    monitor-enter v0

    if-eqz p1, :cond_f

    :try_start_0
    invoke-virtual {p1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111llIl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "sm"

    const-string p1, "8f8a9d93969cb49a86df979e8cdf91908bdf9d9a9a91df8c9a8bdf869a8bd1"

    invoke-static {p1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sm"

    const-string v2, "9e8f8fb69bdf979e8cdf91908bdf9d9a9a91df8c9a8bdf869a8bd1"

    invoke-static {v2}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l1111l111111Il()Lcom/ishumei/l111l1111llIl/l111l11111lIl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111lIl()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_3

    :try_start_3
    invoke-static {}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l1111l111111Il()Lcom/ishumei/l111l1111llIl/l111l11111lIl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111I1l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    return-void

    :cond_3
    :try_start_4
    sput-object p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    sget-object p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p0, :cond_4

    sget-object p0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%d-%05d"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const v7, 0x186a0

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l1111l1Il:Ljava/lang/String;

    :cond_4
    sput-object p1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {p1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111lIl()Ljava/lang/String;

    move-result-object p0

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xc48

    if-eq v5, v6, :cond_7

    const v6, 0x1cfbe

    if-eq v5, v6, :cond_6

    const v6, 0x2ff98f

    if-eq v5, v6, :cond_5

    goto :goto_0

    :cond_5
    const-string v5, "fjny"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v4, 0x2

    goto :goto_0

    :cond_6
    const-string v5, "xjp"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v4, 0x1

    goto :goto_0

    :cond_7
    const-string v5, "bj"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v4, 0x0

    :cond_8
    :goto_0
    if-eqz v4, :cond_b

    if-eq v4, v1, :cond_a

    if-eq v4, v3, :cond_9

    new-array p0, v3, [Ljava/lang/String;

    sget-object v4, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v4}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v2

    sget-object v4, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v4}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111lIl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v1

    goto :goto_1

    :cond_9
    sget-object p0, Lcom/ishumei/l111l11111lIl/l111l1111llIl;->l111l11111I1l:[Ljava/lang/String;

    goto :goto_1

    :cond_a
    sget-object p0, Lcom/ishumei/l111l11111lIl/l111l1111llIl;->l111l11111lIl:[Ljava/lang/String;

    goto :goto_1

    :cond_b
    sget-object p0, Lcom/ishumei/l111l11111lIl/l111l1111llIl;->l1111l111111Il:[Ljava/lang/String;

    :goto_1
    sget-object v4, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    aget-object v5, p0, v2

    sget-object v6, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v6}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v7}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111I1l()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setUrl(Ljava/lang/String;)V

    sget-object v4, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    aget-object v2, p0, v2

    sget-object v5, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v5}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lIl()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v6}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111I1l()Z

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setConfUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v2

    aget-object p0, p0, v1

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V

    sget-object p0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lI1l()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lI1l()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object p0

    sput-object p0, Lcom/ishumei/smantifraud/SmAntiFraud;->l111l11111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    :cond_c
    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111lIl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/ishumei/smantifraud/SmAntiFraud;->l111l11111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    if-eqz p1, :cond_d

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object p1

    new-instance v1, Lcom/ishumei/smantifraud/SmAntiFraud$1;

    invoke-direct {v1, p0}, Lcom/ishumei/smantifraud/SmAntiFraud$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;I)V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_d
    :goto_2
    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l11111lIl()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_e
    :try_start_7
    invoke-static {}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l1111l111111Il()Lcom/ishumei/l111l1111llIl/l111l11111lIl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111I1l()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_8
    invoke-static {}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l1111l111111Il()Lcom/ishumei/l111l1111llIl/l111l11111lIl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111I1l()V

    throw p0

    :catch_0
    invoke-static {}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l1111l111111Il()Lcom/ishumei/l111l1111llIl/l111l11111lIl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l111l1111llIl/l111l11111lIl;->l111l11111I1l()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v0

    return-void

    :cond_f
    :goto_3
    :try_start_9
    const-string p0, "sm"

    const-string p1, "ac92b08f8b969091df9e919bdf908d989e9196859e8b969091df9c908a939bdf91908bdf9d9adf918a9393d1"

    invoke-static {p1}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    const-string v1, "sm"

    if-nez v0, :cond_0

    const-string v0, "ac92be918b96b98d9e8a9bd19c8d9a9e8b9adf979e8cdf91908bdf9d9a9a91df9c9e93939a9bdf869a8bd1"

    :goto_0
    invoke-static {v0}, Lcom/ishumei/l111l1111llIl/l111l1111lI1l;->l111l11111Il(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "908d989e9196859e8b969091df979e8cdf91908bdf9d9a9a91df8c9a8bdf869a8bd1"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111llIl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "8f8a9d93969cb49a86df979e8cdf91908bdf9d9a9a91df8c9a8bdf869a8bd1"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "9e8f8fb69bdf979e8cdf91908bdf9d9a9a91df8c9a8bdf869a8bd1"

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l11111I1l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$IDeviceIdCallback;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.6"

    return-object v0
.end method

.method public static getServerIdCallback()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;
    .locals 1

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l111l11111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    return-object v0
.end method

.method static synthetic l1111l111111Il()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;
    .locals 1

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l111l11111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    return-object v0
.end method

.method private static l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V
    .locals 3

    invoke-static {p0}, Lcom/ishumei/smantifraud/SmAntiFraud;->l111l11111lIl(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l111l11111lIl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ishumei/smantifraud/SmAntiFraud;->l111l11111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    if-eqz v0, :cond_0

    const-class v0, Lcom/ishumei/smantifraud/SmAntiFraud;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v1

    new-instance v2, Lcom/ishumei/smantifraud/SmAntiFraud$1;

    invoke-direct {v2, p0}, Lcom/ishumei/smantifraud/SmAntiFraud$1;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {v1, v2, p0}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l111l11111lIl/l111l11111lIl/l1111l111111Il;->l111l11111lIl()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l111l11111lIl()V

    :cond_1
    return-void
.end method

.method private static l111l11111lIl(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V
    .locals 7

    sput-object p0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111lIl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "fjny"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "xjp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "bj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    new-array v0, v2, [Ljava/lang/String;

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111lIl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/ishumei/l111l11111lIl/l111l1111llIl;->l111l11111I1l:[Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/ishumei/l111l11111lIl/l111l1111llIl;->l111l11111lIl:[Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/ishumei/l111l11111lIl/l111l1111llIl;->l1111l111111Il:[Ljava/lang/String;

    :goto_1
    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    aget-object v2, v0, v4

    sget-object v5, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v5}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v6}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111I1l()Z

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    aget-object v2, v0, v4

    sget-object v4, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v4}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lIl()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v5}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111I1l()Z

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setConfUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111I1l;

    move-result-object v1

    aget-object v0, v0, v3

    sget-object v2, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ishumei/l1111l111111Il/l11l1111I1l;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l1111l111111Il;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ishumei/l111l11111lIl/l1111l111111Il;->l1111l111111Il(Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V

    sget-object p0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lI1l()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il:Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-virtual {p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lI1l()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object p0

    sput-object p0, Lcom/ishumei/smantifraud/SmAntiFraud;->l111l11111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc48 -> :sswitch_2
        0x1cfbe -> :sswitch_1
        0x2ff98f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized registerServerIdCallback(Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;)V
    .locals 1

    const-class v0, Lcom/ishumei/smantifraud/SmAntiFraud;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/ishumei/smantifraud/SmAntiFraud;->l111l11111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l11l1111lIIl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ishumei/l1111l111111Il/l11l1111lIIl;->l1111l111111Il(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    return-void
.end method
