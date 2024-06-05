.class public Lcom/geetest/core/GeeGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/core/GeeGuard$CallbackHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchReceipt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geetest/core/GeeGuardReceipt;
    .locals 1

    new-instance v0, Lcom/geetest/core/GeeGuardConfiguration$Builder;

    invoke-direct {v0}, Lcom/geetest/core/GeeGuardConfiguration$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->setAppId(Ljava/lang/String;)Lcom/geetest/core/GeeGuardConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->addSignature(Ljava/lang/String;)Lcom/geetest/core/GeeGuardConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/core/GeeGuardConfiguration$Builder;->build()Lcom/geetest/core/GeeGuardConfiguration;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/geetest/core/Core;->getData(Landroid/content/Context;Lcom/geetest/core/GeeGuardConfiguration;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gt_core"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p2, "gt_gid3"

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/geetest/core/GeeGuardReceipt;

    invoke-direct {p2}, Lcom/geetest/core/GeeGuardReceipt;-><init>()V

    iput-object p1, p2, Lcom/geetest/core/GeeGuardReceipt;->geeToken:Ljava/lang/String;

    iput-object p0, p2, Lcom/geetest/core/GeeGuardReceipt;->geeID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    iput-object p0, p2, Lcom/geetest/core/GeeGuardReceipt;->geeIDTimestamp:Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public static getData(Landroid/content/Context;Lcom/geetest/core/GeeGuardConfiguration;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/geetest/core/Core;->getData(Landroid/content/Context;Lcom/geetest/core/GeeGuardConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1.2.1"

    return-object v0
.end method

.method public static submitReceipt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/geetest/core/GeeGuard$CallbackHandler;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/geetest/core/GeeGuard;->fetchReceipt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geetest/core/GeeGuardReceipt;

    move-result-object p0

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/geetest/core/GeeGuard$a;

    invoke-direct {v0, p1, p0, p3}, Lcom/geetest/core/GeeGuard$a;-><init>(Ljava/lang/String;Lcom/geetest/core/GeeGuardReceipt;Lcom/geetest/core/GeeGuard$CallbackHandler;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
