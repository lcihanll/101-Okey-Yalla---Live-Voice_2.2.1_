.class public Lcom/appsflyer/AdvertisingIdObject;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final $$a:Ljava/lang/Boolean;

.field private $$b:Ljava/lang/Boolean;

.field private final valueOf:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/AdvertisingIdObject;->valueOf:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsflyer/AdvertisingIdObject;->$$a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->valueOf:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTracking()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->$$a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isManual()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->$$b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setManual(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/AdvertisingIdObject;->$$b:Ljava/lang/Boolean;

    return-void
.end method
