.class public Lcom/yallagame/chatinterface/MainActivity;
.super Ljava/lang/Object;
.source "MainActivity.java"


# static fields
.field public static ServiceContent:Ljava/lang/String; = ""

.field public static ServiceTitle:Ljava/lang/String; = ""

.field private static _unityActivity:Landroid/app/Activity;

.field public static clipboard:Landroid/content/ClipboardManager;


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

.method public static CopyTextToClipboard(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yallagame/chatinterface/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/yallagame/chatinterface/MainActivity$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static GetAndroidVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static GetMusicList()Ljava/lang/String;
    .locals 2

    const-string v0, "Unity_Chat"

    const-string v1, "GetMusicList11"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/yallagame/chatinterface/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yallagame/chatinterface/Music/MusicUtils;->getMusicList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetNotchHeight()I
    .locals 1

    invoke-static {}, Lcom/yallagame/chatinterface/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yallagame/chatinterface/Util/NotchUtil;->getBarHeight(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static StartCheckerService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-object p1, Lcom/yallagame/chatinterface/MainActivity;->ServiceContent:Ljava/lang/String;

    sput-object p0, Lcom/yallagame/chatinterface/MainActivity;->ServiceTitle:Ljava/lang/String;

    const-string p0, "Unity_Chat"

    const-string p1, "StartCheckerService"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/yallagame/chatinterface/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/yallagame/chatinterface/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/yallagame/chatinterface/chat_keep_alive_service;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static StopCheckerService()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/yallagame/chatinterface/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yallagame/chatinterface/chat_keep_alive_service;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/yallagame/chatinterface/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method static callUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.unity3d.player.UnityPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "UnitySendMessage"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    return v0
.end method

.method static getActivity()Landroid/app/Activity;
    .locals 2

    sget-object v0, Lcom/yallagame/chatinterface/MainActivity;->_unityActivity:Landroid/app/Activity;

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

    sput-object v0, Lcom/yallagame/chatinterface/MainActivity;->_unityActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget-object v0, Lcom/yallagame/chatinterface/MainActivity;->_unityActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static hasNotchScreen()Z
    .locals 2

    const-string v0, "Unity hasNotchScreen"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/yallagame/chatinterface/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yallagame/chatinterface/Util/NotchUtil;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
