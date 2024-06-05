.class public Lcom/geetest/core/OaidHelper$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/core/OaidHelper$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/core/OaidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static f:Ljava/lang/String; = null

.field public static g:Z = false

.field public static h:Z = false

.field public static final i:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Lcom/geetest/core/OaidHelper$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/geetest/core/OaidHelper$j;->i:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geetest/core/OaidHelper$j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/geetest/core/OaidHelper$j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/geetest/core/OaidHelper$j;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/geetest/core/OaidHelper$j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 6

    sget-boolean v0, Lcom/geetest/core/OaidHelper$j;->h:Z

    if-eqz v0, :cond_0

    sget-boolean p1, Lcom/geetest/core/OaidHelper$j;->g:Z

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/geetest/core/OaidHelper$j;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    invoke-static {p1}, Lcom/geetest/core/OaidHelper;->access$000(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/geetest/core/OaidHelper$j;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    sput-boolean v1, Lcom/geetest/core/OaidHelper$j;->g:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :cond_4
    sput-boolean v1, Lcom/geetest/core/OaidHelper$j;->g:Z

    :goto_1
    sput-boolean v0, Lcom/geetest/core/OaidHelper$j;->h:Z

    sget-boolean p1, Lcom/geetest/core/OaidHelper$j;->g:Z

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/geetest/core/OaidHelper$j;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geetest/core/OaidHelper$j;->e:Lcom/geetest/core/OaidHelper$i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/geetest/core/OaidHelper$i;->a:Lcom/geetest/core/OaidHelper$d;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/geetest/core/OaidHelper$j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/geetest/core/OaidHelper$j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/geetest/core/OaidHelper$j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/geetest/core/OaidHelper$j;->a()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/geetest/core/OaidHelper$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/core/OaidHelper$j;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geetest/core/OaidHelper$j;->e:Lcom/geetest/core/OaidHelper$i;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object p1, Lcom/geetest/core/OaidHelper$j;->f:Ljava/lang/String;

    return-object p1

    :cond_1
    sget-object p1, Lcom/geetest/core/OaidHelper$j;->f:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/geetest/core/OaidHelper$j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/geetest/core/OaidHelper$j;->e:Lcom/geetest/core/OaidHelper$i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/geetest/core/OaidHelper$i;

    iget-object v1, p0, Lcom/geetest/core/OaidHelper$j;->d:Ljava/lang/String;

    sget-object v2, Lcom/geetest/core/OaidHelper$j;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1, v2}, Lcom/geetest/core/OaidHelper$i;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lcom/geetest/core/OaidHelper$j;->e:Lcom/geetest/core/OaidHelper$i;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/geetest/core/OaidHelper$j;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/geetest/core/OaidHelper$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/geetest/core/OaidHelper$j;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/geetest/core/OaidHelper$j;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/geetest/core/OaidHelper$j;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/geetest/core/OaidHelper$j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/geetest/core/OaidHelper$j;->e:Lcom/geetest/core/OaidHelper$i;

    invoke-virtual {v1, p1, v0}, Lcom/geetest/core/OaidHelper$i;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
