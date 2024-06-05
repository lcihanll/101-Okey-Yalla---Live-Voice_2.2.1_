.class public Lcom/unity3d/services/ads/adunit/c;
.super Ljava/lang/Object;
.source "AdUnitMotionEvent.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:J

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(IZIIIFFJFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unity3d/services/ads/adunit/c;->a:I

    iput-boolean p2, p0, Lcom/unity3d/services/ads/adunit/c;->b:Z

    iput p3, p0, Lcom/unity3d/services/ads/adunit/c;->c:I

    iput p4, p0, Lcom/unity3d/services/ads/adunit/c;->d:I

    iput p5, p0, Lcom/unity3d/services/ads/adunit/c;->e:I

    iput p6, p0, Lcom/unity3d/services/ads/adunit/c;->f:F

    iput p7, p0, Lcom/unity3d/services/ads/adunit/c;->g:F

    iput-wide p8, p0, Lcom/unity3d/services/ads/adunit/c;->h:J

    iput p10, p0, Lcom/unity3d/services/ads/adunit/c;->i:F

    iput p11, p0, Lcom/unity3d/services/ads/adunit/c;->j:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/ads/adunit/c;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/ads/adunit/c;->e:I

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/services/ads/adunit/c;->h:J

    return-wide v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/unity3d/services/ads/adunit/c;->i:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/unity3d/services/ads/adunit/c;->j:F

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/ads/adunit/c;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/ads/adunit/c;->c:I

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/unity3d/services/ads/adunit/c;->f:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/unity3d/services/ads/adunit/c;->g:F

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/services/ads/adunit/c;->b:Z

    return v0
.end method
