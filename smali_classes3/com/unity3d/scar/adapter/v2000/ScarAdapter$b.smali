.class Lcom/unity3d/scar/adapter/v2000/ScarAdapter$b;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2000/ScarAdapter;->loadRewardedAd(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAd;

.field final synthetic b:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

.field final synthetic c:Lcom/unity3d/scar/adapter/v2000/ScarAdapter;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/ScarAdapter;Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAd;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/ScarAdapter$b;->c:Lcom/unity3d/scar/adapter/v2000/ScarAdapter;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/ScarAdapter$b;->a:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAd;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2000/ScarAdapter$b;->b:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/ScarAdapter$b;->a:Lcom/unity3d/scar/adapter/v2000/scarads/ScarRewardedAd;

    new-instance v1, Lcom/unity3d/scar/adapter/v2000/ScarAdapter$b$a;

    invoke-direct {v1, p0}, Lcom/unity3d/scar/adapter/v2000/ScarAdapter$b$a;-><init>(Lcom/unity3d/scar/adapter/v2000/ScarAdapter$b;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2000/scarads/ScarAdBase;->loadAd(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V

    return-void
.end method