.class public Lcom/unity3d/services/ads/gmascar/adapters/a;
.super Ljava/lang/Object;
.source "ScarAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLcom/unity3d/scar/adapter/common/IAdsErrorHandler;)Lcom/unity3d/scar/adapter/common/IScarAdapter;
    .locals 3

    const-wide/32 v0, 0xc8a7ad0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    new-instance p1, Lcom/unity3d/scar/adapter/v2000/ScarAdapter;

    invoke-direct {p1, p3}, Lcom/unity3d/scar/adapter/v2000/ScarAdapter;-><init>(Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xc1fb2e0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0xc365f90

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    new-instance p1, Lcom/unity3d/scar/adapter/v1950/ScarAdapter;

    invoke-direct {p1, p3}, Lcom/unity3d/scar/adapter/v1950/ScarAdapter;-><init>(Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xc043ba0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    new-instance p1, Lcom/unity3d/scar/adapter/v1920/ScarAdapter;

    invoke-direct {p1, p3}, Lcom/unity3d/scar/adapter/v1920/ScarAdapter;-><init>(Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "SCAR version %s is not supported."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->AdapterCreationError(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/IUnityAdsError;)V

    invoke-static {p1}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
