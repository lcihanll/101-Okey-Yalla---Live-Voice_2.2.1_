.class public Lcom/appsflyer/internal/referrer/SamsungReferrer;
.super Lcom/appsflyer/internal/referrer/ContentProviderReferrer;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "samsung"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/referrer/ContentProviderReferrer;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;

    const-string v1, "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.samsungapps.referrer"

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$5;-><init>(Lcom/appsflyer/internal/referrer/SamsungReferrer;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v1

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result p1

    if-gtz p1, :cond_1

    invoke-virtual {v0}, Lcom/appsflyer/internal/ContentFetcher;->valid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/ContentFetcher;->start()V

    invoke-virtual {p0}, Lcom/appsflyer/internal/referrer/Referrer;->start()V

    :cond_1
    :goto_0
    return-void
.end method
