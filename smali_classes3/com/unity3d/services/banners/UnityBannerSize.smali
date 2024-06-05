.class public Lcom/unity3d/services/banners/UnityBannerSize;
.super Ljava/lang/Object;
.source "UnityBannerSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/banners/UnityBannerSize$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unity3d/services/banners/UnityBannerSize;->a:I

    iput p2, p0, Lcom/unity3d/services/banners/UnityBannerSize;->b:I

    return-void
.end method

.method public static getDynamicSize(Landroid/content/Context;)Lcom/unity3d/services/banners/UnityBannerSize;
    .locals 3

    new-instance v0, Lcom/unity3d/services/banners/UnityBannerSize;

    sget-object v1, Lcom/unity3d/services/banners/UnityBannerSize$b;->d:Lcom/unity3d/services/banners/UnityBannerSize$b;

    invoke-static {v1, p0}, Lcom/unity3d/services/banners/UnityBannerSize$b;->a(Lcom/unity3d/services/banners/UnityBannerSize$b;Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, p0}, Lcom/unity3d/services/banners/UnityBannerSize$b;->b(Lcom/unity3d/services/banners/UnityBannerSize$b;Landroid/content/Context;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/banners/UnityBannerSize;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/banners/UnityBannerSize;->a:I

    return v0
.end method
