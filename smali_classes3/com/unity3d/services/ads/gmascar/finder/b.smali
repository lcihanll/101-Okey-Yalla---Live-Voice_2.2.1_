.class public Lcom/unity3d/services/ads/gmascar/finder/b;
.super Ljava/lang/Object;
.source "PresenceDetector.java"


# instance fields
.field private a:Lcom/unity3d/services/ads/gmascar/bridges/e;

.field private b:Lcom/unity3d/services/ads/gmascar/bridges/d;

.field private c:Lcom/unity3d/services/ads/gmascar/bridges/c;

.field private d:Lcom/unity3d/services/ads/gmascar/bridges/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/gmascar/bridges/e;Lcom/unity3d/services/ads/gmascar/bridges/d;Lcom/unity3d/services/ads/gmascar/bridges/c;Lcom/unity3d/services/ads/gmascar/bridges/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->a:Lcom/unity3d/services/ads/gmascar/bridges/e;

    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->b:Lcom/unity3d/services/ads/gmascar/bridges/d;

    iput-object p3, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->c:Lcom/unity3d/services/ads/gmascar/bridges/c;

    iput-object p4, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->d:Lcom/unity3d/services/ads/gmascar/bridges/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->a:Lcom/unity3d/services/ads/gmascar/bridges/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->b:Lcom/unity3d/services/ads/gmascar/bridges/d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->c:Lcom/unity3d/services/ads/gmascar/bridges/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->d:Lcom/unity3d/services/ads/gmascar/bridges/a;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/unity3d/services/core/reflection/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->b:Lcom/unity3d/services/ads/gmascar/bridges/d;

    invoke-virtual {v0}, Lcom/unity3d/services/core/reflection/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->c:Lcom/unity3d/services/ads/gmascar/bridges/c;

    invoke-virtual {v0}, Lcom/unity3d/services/core/reflection/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/finder/b;->d:Lcom/unity3d/services/ads/gmascar/bridges/a;

    invoke-virtual {v0}, Lcom/unity3d/services/core/reflection/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
