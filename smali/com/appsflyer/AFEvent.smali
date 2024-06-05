.class public abstract Lcom/appsflyer/AFEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field $$a:Ljava/lang/String;

.field $$b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field AFDateFormat:Ljava/lang/String;

.field public AFDeepLinkManager:I

.field private AFEvent:[B

.field collectIntentsFromActivities:Ljava/lang/String;

.field dateFormatUTC:Z

.field private final getDataFormatter:Z

.field private getInstance:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestListener:Landroid/app/Application;

.field private urlString:Ljava/lang/String;

.field valueOf:Ljava/lang/String;

.field values:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/appsflyer/AFEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    iput-object p1, p0, Lcom/appsflyer/AFEvent;->values:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/AFEvent;->collectIntentsFromActivities:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/appsflyer/AFEvent;->getDataFormatter:Z

    invoke-virtual {p0, p4}, Lcom/appsflyer/AFEvent;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    return-void
.end method


# virtual methods
.method final AFDateFormat()[B
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AFEvent;->AFEvent:[B

    return-object v0
.end method

.method protected addChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsflyer/AFEvent;->context()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected addParams(Ljava/util/Map;)Lcom/appsflyer/AFEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/appsflyer/AFEvent;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public context()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AFEvent;->requestListener:Landroid/app/Application;

    return-object v0
.end method

.method protected context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appsflyer/AFEvent;->requestListener:Landroid/app/Application;

    :cond_0
    return-object p0
.end method

.method public getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AFEvent;->getInstance:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    return-object v0
.end method

.method public isEncrypt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appsflyer/AFEvent;->getDataFormatter:Z

    return v0
.end method

.method protected key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/AFEvent;->urlString:Ljava/lang/String;

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AFEvent;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public params()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/AFEvent;->params:Ljava/util/Map;

    return-object v0
.end method

.method public post([B)Lcom/appsflyer/AFEvent;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/AFEvent;->AFEvent:[B

    return-object p0
.end method

.method public requestListener(Lcom/appsflyer/attribution/AppsFlyerRequestListener;)Lcom/appsflyer/AFEvent;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/AFEvent;->getInstance:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    return-object p0
.end method

.method public urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/AFEvent;->collectIntentsFromActivities:Ljava/lang/String;

    return-object p0
.end method

.method protected urlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AFEvent;->collectIntentsFromActivities:Ljava/lang/String;

    return-object v0
.end method

.method final values()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appsflyer/AFEvent;->dateFormatUTC:Z

    return v0
.end method
