.class public Lcom/geetest/core/OaidHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/core/OaidHelper$e;,
        Lcom/geetest/core/OaidHelper$j;,
        Lcom/geetest/core/OaidHelper$h;,
        Lcom/geetest/core/OaidHelper$d;,
        Lcom/geetest/core/OaidHelper$i;,
        Lcom/geetest/core/OaidHelper$a;,
        Lcom/geetest/core/OaidHelper$c;,
        Lcom/geetest/core/OaidHelper$g;,
        Lcom/geetest/core/OaidHelper$k;,
        Lcom/geetest/core/OaidHelper$l;,
        Lcom/geetest/core/OaidHelper$m;,
        Lcom/geetest/core/OaidHelper$n;,
        Lcom/geetest/core/OaidHelper$f;,
        Lcom/geetest/core/OaidHelper$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/geetest/core/OaidHelper$e;

.field public static b:Landroid/content/Context; = null

.field public static c:Z = false

.field public static d:Landroid/content/pm/PackageManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "HUA_WEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "COOLPAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "REDMI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "MEIZU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "HONOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "IQOO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_9
    const-string v1, "ASUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_a
    const-string v1, "ZUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_b
    const-string v1, "ONEPLUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_c
    const-string v1, "BLACKSHARK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_d
    const-string v1, "XIAOMI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_e
    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_f
    const-string v1, "LENOVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/geetest/core/OaidHelper$b;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$b;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/geetest/core/OaidHelper$g;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$g;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/geetest/core/OaidHelper$c;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$c;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/geetest/core/OaidHelper$m;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$m;-><init>()V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/geetest/core/OaidHelper$a;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$a;-><init>()V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lcom/geetest/core/OaidHelper$k;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$k;-><init>()V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/geetest/core/OaidHelper$n;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$n;-><init>()V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lcom/geetest/core/OaidHelper$l;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$l;-><init>()V

    goto :goto_1

    :pswitch_8
    new-instance v0, Lcom/geetest/core/OaidHelper$f;

    invoke-direct {v0}, Lcom/geetest/core/OaidHelper$f;-><init>()V

    :goto_1
    sput-object v0, Lcom/geetest/core/OaidHelper;->a:Lcom/geetest/core/OaidHelper$e;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_f
        -0x660bb426 -> :sswitch_e
        -0x65b21745 -> :sswitch_d
        -0x43a32cba -> :sswitch_c
        -0x23e7db20 -> :sswitch_b
        0x15c6e -> :sswitch_a
        0x1ece50 -> :sswitch_9
        0x226908 -> :sswitch_8
        0x251fa0 -> :sswitch_7
        0x2834ac -> :sswitch_6
        0x41bb44a -> :sswitch_5
        0x45d8cac -> :sswitch_4
        0x4a3edcd -> :sswitch_3
        0x638d5c8a -> :sswitch_2
        0x758d0d50 -> :sswitch_1
        0x7fa995e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 0

    invoke-static {p0}, Lcom/geetest/core/OaidHelper;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private static getOaid()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/geetest/core/OaidHelper;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Lcom/geetest/core/OaidHelper;->a:Lcom/geetest/core/OaidHelper$e;

    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/geetest/core/OaidHelper;->c:Z

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Lcom/geetest/core/OaidHelper$e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static getOaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/geetest/core/OaidHelper;->isSupport(Landroid/content/Context;)V

    sget-boolean p0, Lcom/geetest/core/OaidHelper;->c:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/geetest/core/OaidHelper;->getOaid()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    sget-object v0, Lcom/geetest/core/OaidHelper;->d:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lcom/geetest/core/OaidHelper;->d:Landroid/content/pm/PackageManager;

    :cond_0
    sget-object p0, Lcom/geetest/core/OaidHelper;->d:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private static isSupport(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/geetest/core/OaidHelper;->a:Lcom/geetest/core/OaidHelper$e;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/geetest/core/OaidHelper;->b:Landroid/content/Context;

    invoke-static {}, Lcom/geetest/core/OaidHelper;->isSupportService()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/geetest/core/OaidHelper;->b:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/geetest/core/OaidHelper$e;->c(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/geetest/core/OaidHelper;->c:Z

    :cond_0
    return-void
.end method

.method private static isSupportService()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/geetest/core/OaidHelper;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v2, Lcom/geetest/core/OaidHelper;->a:Lcom/geetest/core/OaidHelper$e;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/geetest/core/OaidHelper$e;->a(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
