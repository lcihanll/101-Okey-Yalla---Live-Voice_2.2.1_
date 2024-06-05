.class public Lcom/uqm/crashsight/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/CrashReport$WebViewInterface;,
        Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCrashReport()V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "Can not close crash report because crashSight is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/c;->d()V

    return-void
.end method

.method public static closeCrashSight()V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "Can not close crashSight because crashSight is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;->getInstance()Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/crash/CrashSightBroadcastReceiver;->unregister(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/crashreport/CrashReport;->closeCrashReport()V

    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/uqm/crashsight/proguard/k;->a()Lcom/uqm/crashsight/proguard/k;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/k;->b()V

    :cond_4
    return-void
.end method

.method public static closeNativeReport()V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "Can not close native report because crashSight is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/c;->g()V

    return-void
.end method

.method public static enableCrashSight(Z)V
    .locals 0

    sput-boolean p0, Lcom/uqm/crashsight/b;->a:Z

    return-void
.end method

.method public static enableObtainId(Landroid/content/Context;Z)V
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set DB name because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "enableObtainId args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enable identification obtaining? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->b(Z)V

    return-void
.end method

.method public static entrySubMap(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/crashreport/CrashReport;->postException(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static getAllUserDataKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not get all keys of user data because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "getAllUserDataKeys args context should not be null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->A()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getAppChannel()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const-string v1, "unknown"

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "Can not get App channel because crashSight is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const-string v1, "unknown"

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "Can not get App ID because crashSight is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVer()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const-string v1, "unknown"

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "Can not get app version because crashSight is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getCrashSightVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Please call with context."

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p0, "unknown"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpProxy()Ljava/net/Proxy;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkExtraData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "Can not get SDK extra data because crashSight is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->C:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getSdkExtraData(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not get SDK extra data because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Context should not be null."

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->C:Ljava/util/HashMap;

    return-object p0
.end method

.method public static getUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const-string v1, "unknown"

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not get user data because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "getUserDataValue args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserDatasSize(Landroid/content/Context;)I
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not get size of user data because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "getUserDatasSize args context should not be null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->z()I

    move-result p0

    return p0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const-string v1, "unknown"

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "Can not get user ID because crashSight is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSceneTagId(Landroid/content/Context;)I
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not get user scene tag because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "getUserSceneTagId args context should not be null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->E()I

    move-result p0

    return p0
.end method

.method public static initCrashReport(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/b;->a(Lcom/uqm/crashsight/a;)V

    invoke-static {p0}, Lcom/uqm/crashsight/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/b;->a(Lcom/uqm/crashsight/a;)V

    invoke-static {p0, p1}, Lcom/uqm/crashsight/b;->a(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V

    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/b;->a(Lcom/uqm/crashsight/a;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/uqm/crashsight/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/uqm/crashsight/CrashSightStrategy;)V

    :cond_0
    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/b;->a(Lcom/uqm/crashsight/a;)V

    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/uqm/crashsight/CrashSightStrategy;)V

    return-void
.end method

.method public static isLastSessionCrash()Z
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "The info \'isLastSessionCrash\' is not accurate because crashSight is disable."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v2, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/c;->b()Z

    move-result v0

    return v0
.end method

.method public static postCatchedException(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-void
.end method

.method public static postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uqm/crashsight/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-void
.end method

.method public static postCatchedException(Ljava/lang/Throwable;Ljava/lang/Thread;Z)V
    .locals 7

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not post crash caught because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "throwable is null, just return"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    :cond_3
    move-object v1, p1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/uqm/crashsight/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V

    return-void
.end method

.method public static postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/crashreport/CrashReport;->postException(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static postException(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not post crash caught because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static/range {p0 .. p5}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static putSdkData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[a-zA-Z[0-9]]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "putSdkData key length over limit %d, will be cutted."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_2

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "putSdkData value length over limit %d, will be cutted!"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v3

    aput-object p2, p0, v1

    const-string p1, "[param] putSdkData data: %s - %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/m;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not put user data because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "putUserData args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "putUserData args key should not be null or empty"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    if-nez p2, :cond_3

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "putUserData args value should not be null"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-le v1, v2, :cond_4

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v4, "user data value length over limit %d, it will be cutted!"

    invoke-static {v4, v1}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->A()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v4, [Ljava/lang/Object;

    aput-object p1, p0, v0

    aput-object p2, p0, v3

    const-string p1, "replace KV %s %s"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_6
    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->z()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_7

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "user data size is over limit %d, it will be cutted!"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_8

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    aput-object p1, v1, v3

    const-string v4, "user data key length over limit %d , will drop this new key %s"

    invoke-static {v4, v1}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_8
    sget v1, Lcom/uqm/crashsight/crashreport/CrashReport;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    sput v1, Lcom/uqm/crashsight/crashreport/CrashReport;->b:I

    const/high16 v2, 0x20000

    if-le v1, v2, :cond_9

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "user data size is over limit %d, dropped"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_9
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reRegistNativeReport()V
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->reStartNativeMonitor()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CrashSight not init"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    const-string v1, "unknown"

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not remove user data because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "removeUserData args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "[param] remove user data: %s"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set App channel because CrashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "setAppChannel args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "App channel is null, will not set"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public static setAppID(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set App ID because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/uqm/crashsight/crashreport/biz/b;->a:Lcom/uqm/crashsight/crashreport/biz/a;

    const/4 v0, 0x5

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/uqm/crashsight/crashreport/biz/a;->a(IZJ)V

    return-void
.end method

.method public static setAppPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set App package because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "setAppPackage args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "App package is null, will not set"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppPackage(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public static setAppVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set App version because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "setAppVersion args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "App version is null, will not set"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->k:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set \'isAppForeground\' because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "set app version as null"

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/m;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/crashreport/CrashReport;->setAppVersion(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    return-void
.end method

.method public static setCrashFilter(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set App package because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set crash stack filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Ljava/lang/String;

    return-void
.end method

.method public static setCrashRegularFilter(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set App package because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set crash stack filter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/uqm/crashsight/crashreport/crash/c;->o:Ljava/lang/String;

    return-void
.end method

.method public static setCrashSightDbName(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set DB name because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set CrashSight DB name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/uqm/crashsight/proguard/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static setHandleNativeCrashInJava(Z)V
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set App package because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should handle native crash in Java profile after handled in native profile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setShouldHandleInJava(Z)V

    return-void
.end method

.method public static setHttpProxy(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static setHttpProxy(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public static setIsAppForeground(Landroid/content/Context;Z)V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set \'isAppForeground\' because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Context should not be null."

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "App is in foreground."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "App is in background."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Z)V

    return-void
.end method

.method public static setIsAppForeground(Z)V
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set \'isAppForeground\' because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "App is in foreground."

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/m;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "App is in background."

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/m;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->b()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Z)V

    return-void

    :cond_2
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "setIsAppForeground failed: comInfoManager is null"

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/l;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static setIsDevelopmentDevice(Landroid/content/Context;Z)V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set \'isDevelopmentDevice\' because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Context should not be null."

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "This is a development device."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "This is not a development device."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->A:Z

    return-void
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uqm/crashsight/crashreport/CrashReport;->setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z

    move-result p0

    return p0
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static setJavascriptMonitor(Lcom/uqm/crashsight/crashreport/CrashReport$WebViewInterface;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uqm/crashsight/crashreport/CrashReport;->setJavascriptMonitor(Lcom/uqm/crashsight/crashreport/CrashReport$WebViewInterface;ZZ)Z

    move-result p0

    return p0
.end method

.method public static setJavascriptMonitor(Lcom/uqm/crashsight/crashreport/CrashReport$WebViewInterface;ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static setMatchUUID(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/b;->a()Lcom/uqm/crashsight/crashreport/common/info/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not put SDK extra data because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setServerUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Ljava/lang/String;)V

    sput-object p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    sput-object p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "URL is invalid."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSessionIntervalMills(J)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set \'SessionIntervalMills\' because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/uqm/crashsight/crashreport/biz/b;->a(J)V

    return-void
.end method

.method public static setSessionUUID(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/b;->a()Lcom/uqm/crashsight/crashreport/common/info/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setTraceUUID(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/b;->a()Lcom/uqm/crashsight/crashreport/common/info/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set user ID because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Context should not be null when crashSight has not been initialed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "userId should not be null"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-le v0, v3, :cond_3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x2

    aput-object v0, v4, p1

    const-string p1, "userId %s length is over limit %d substring to %s"

    invoke-static {p1, v4}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v0

    :cond_3
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->b(Ljava/lang/String;)V

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string v0, "[user] set userId : %s"

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/m;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/b;->a()V

    :cond_6
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set user ID because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CrashReport has not been initialed! but continue to set user id"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v0, p0}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserSceneTag(I)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set user scene tag because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserSceneTag(Landroid/content/Context;I)V

    return-void
.end method

.method public static setUserSceneTag(Landroid/content/Context;I)V
    .locals 3

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set tag caught because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "setTag args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    if-gtz p1, :cond_2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "setTag args tagId should > 0"

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(I)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "[param] set user scene tag: %d"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static setUserSceneTagStr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not set user scene tag caught because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "setUserSceneTagStr args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->h(Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v0

    const-string p1, "[param] set user scene tag: %s"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "setUserSceneTagStr args userSceneTagStr is empty"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/m;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static setUserSceneTagStr(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "Can not set user scene tag str because crashSight is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v0, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/crashreport/CrashReport;->setUserSceneTagStr(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static startCrashReport()V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "Can not start crash report because crashSight is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/c;->c()V

    return-void
.end method

.method public static testANRCrash()V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "Can not test ANR crash because crashSight is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start to create a anr crash for test!"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/c;->j()V

    return-void
.end method

.method public static testJavaCrash()V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "Can not test Java crash because crashSight is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string v1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->b()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x5e20

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->b(I)V

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Crash create for Test! You can go to CrashSight see more detail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static testNativeCrash()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lcom/uqm/crashsight/crashreport/CrashReport;->testNativeCrash(ZZZ)V

    return-void
.end method

.method public static testNativeCrash(ZZZ)V
    .locals 2

    sget-boolean v0, Lcom/uqm/crashsight/b;->a:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "Can not test native crash because crashSight is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/CrashModule;->getInstance()Lcom/uqm/crashsight/CrashModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/lang/String;

    const-string p1, "CrashReport has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start to create a native crash for test!"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/c;->a(ZZZ)V

    return-void
.end method

.method public static testOomCrash()V
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testNativeOomCrash()V

    return-void
.end method
