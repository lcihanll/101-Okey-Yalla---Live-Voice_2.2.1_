.class public Lcom/yallagame/smsdk_interface/smsdk_module;
.super Ljava/lang/Object;
.source "smsdk_module.java"


# static fields
.field private static _unityActivity:Landroid/app/Activity; = null

.field private static isInitSMSDK:Z = false


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

.method public static callBack()V
    .locals 1

    new-instance v0, Lcom/yallagame/smsdk_interface/smsdk_module$1;

    invoke-direct {v0}, Lcom/yallagame/smsdk_interface/smsdk_module$1;-><init>()V

    invoke-static {v0}, Lcom/ishumei/smantifraud/SmAntiFraud;->registerServerIdCallback(Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;)V

    return-void
.end method

.method static getActivity()Landroid/app/Activity;
    .locals 2

    sget-object v0, Lcom/yallagame/smsdk_interface/smsdk_module;->_unityActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/yallagame/smsdk_interface/smsdk_module;->_unityActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget-object v0, Lcom/yallagame/smsdk_interface/smsdk_module;->_unityActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init_smsdk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/yallagame/smsdk_interface/smsdk_module;->isInitSMSDK:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;

    invoke-direct {v0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setOrganization(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setPublicKey(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setCheckCrt(Z)V

    invoke-virtual {v0, p0}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setCloudConf(Z)V

    invoke-virtual {v0, p4}, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->setExtraInfo(Ljava/lang/String;)V

    invoke-static {}, Lcom/yallagame/smsdk_interface/smsdk_module;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ishumei/smantifraud/SmAntiFraud;->create(Landroid/content/Context;Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/yallagame/smsdk_interface/smsdk_module;->isInitSMSDK:Z

    :cond_0
    return-void
.end method
