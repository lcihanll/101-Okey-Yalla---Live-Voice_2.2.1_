.class public Lcom/geetest/core/OaidHelper$m;
.super Lcom/geetest/core/OaidHelper$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/core/OaidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.vivo.vms.IdProvider"

    const-string v1, "IdentifierId/OAID"

    invoke-direct {p0, v0, v1}, Lcom/geetest/core/OaidHelper$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
