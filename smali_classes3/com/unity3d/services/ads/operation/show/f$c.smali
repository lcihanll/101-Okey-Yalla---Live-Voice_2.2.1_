.class Lcom/unity3d/services/ads/operation/show/f$c;
.super Ljava/lang/Object;
.source "ShowOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/operation/show/f;->onUnityAdsShowClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/services/ads/operation/show/f;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/operation/show/f;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/show/f$c;->a:Lcom/unity3d/services/ads/operation/show/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/f$c;->a:Lcom/unity3d/services/ads/operation/show/f;

    invoke-static {v0}, Lcom/unity3d/services/ads/operation/show/f;->a(Lcom/unity3d/services/ads/operation/show/f;)Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/show/f$c;->a:Lcom/unity3d/services/ads/operation/show/f;

    invoke-static {v0}, Lcom/unity3d/services/ads/operation/show/f;->a(Lcom/unity3d/services/ads/operation/show/f;)Lcom/unity3d/services/ads/operation/show/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/ads/operation/show/g;->f()V

    :cond_0
    return-void
.end method
