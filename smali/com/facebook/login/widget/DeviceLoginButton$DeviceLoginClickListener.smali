.class Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;
.super Lcom/facebook/login/widget/LoginButton$LoginClickListener;
.source "DeviceLoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/DeviceLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceLoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/DeviceLoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;Lcom/facebook/login/widget/DeviceLoginButton$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;-><init>(Lcom/facebook/login/widget/DeviceLoginButton;)V

    return-void
.end method


# virtual methods
.method protected getLoginManager()Lcom/facebook/login/LoginManager;
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/DeviceLoginManager;->getInstance()Lcom/facebook/login/DeviceLoginManager;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/DeviceLoginButton;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/login/DeviceLoginManager;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    sget-object v2, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0, v2}, Lcom/facebook/login/DeviceLoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    iget-object v2, p0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;->this$0:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v2}, Lcom/facebook/login/widget/DeviceLoginButton;->getDeviceRedirectUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/login/DeviceLoginManager;->setDeviceRedirectUri(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method