.class final Lcom/unity3d/services/core/device/k$a;
.super Landroid/database/ContentObserver;
.source "VolumeChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/device/k;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/services/core/device/k;->a()V

    return-void
.end method
