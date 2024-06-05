.class public Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;
.super Lcom/facebook/unity/BaseActivity;
.source "FBUnitySwitchGamingContextActivity.java"


# static fields
.field private static TAG:Ljava/lang/String; = "com.facebook.unity.FBUnitySwitchGamingContextActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/unity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/facebook/unity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "activity_params"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnSwitchGamingContextComplete"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "callback_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callbackID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    :cond_0
    const-string v1, "gamingContextID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;

    invoke-direct {v1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->setContextID(Ljava/lang/String;)Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;

    invoke-virtual {v1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->build()Lcom/facebook/gamingservices/model/ContextSwitchContent;

    move-result-object p1

    new-instance v1, Lcom/facebook/gamingservices/ContextSwitchDialog;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/ContextSwitchDialog;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/unity/FBUnitySwitchGamingContextActivity$1;-><init>(Lcom/facebook/unity/FBUnitySwitchGamingContextActivity;Lcom/facebook/unity/UnityMessage;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/gamingservices/ContextSwitchDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    invoke-virtual {v1, p1}, Lcom/facebook/gamingservices/ContextSwitchDialog;->show(Ljava/lang/Object;)V

    return-void
.end method
