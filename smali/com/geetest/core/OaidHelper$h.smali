.class public Lcom/geetest/core/OaidHelper$h;
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
    name = "h"
.end annotation


# static fields
.field public static e:Ljava/lang/String; = null

.field public static f:Z = false


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geetest/core/OaidHelper$h;->d:Z

    iput-object p1, p0, Lcom/geetest/core/OaidHelper$h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/geetest/core/OaidHelper$h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/geetest/core/OaidHelper$h;->d:Z

    if-eqz v0, :cond_0

    sget-boolean p1, Lcom/geetest/core/OaidHelper$h;->f:Z

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/geetest/core/OaidHelper;->access$000(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/geetest/core/OaidHelper$h;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lcom/geetest/core/OaidHelper$h;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sput-boolean v0, Lcom/geetest/core/OaidHelper$h;->f:Z

    :goto_1
    iput-boolean v1, p0, Lcom/geetest/core/OaidHelper$h;->d:Z

    sget-boolean p1, Lcom/geetest/core/OaidHelper$h;->f:Z

    return p1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/geetest/core/OaidHelper$h;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/core/OaidHelper$h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/geetest/core/OaidHelper$h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/geetest/core/OaidHelper$h;->c:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "value"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/geetest/core/OaidHelper$h;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object p1, v0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sput-object v0, Lcom/geetest/core/OaidHelper$h;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_2

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    :goto_3
    sget-object p1, Lcom/geetest/core/OaidHelper$h;->e:Ljava/lang/String;

    return-object p1
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
