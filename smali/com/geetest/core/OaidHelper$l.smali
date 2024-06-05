.class public Lcom/geetest/core/OaidHelper$l;
.super Lcom/geetest/core/OaidHelper$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/core/OaidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.samsung.android.deviceidservice"

    const-string v1, "com.samsung.android.deviceidservice.DeviceIdService"

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/geetest/core/OaidHelper$j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
