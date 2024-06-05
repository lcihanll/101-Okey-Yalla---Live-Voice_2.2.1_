.class public Lcom/tencent/liteav/base/util/Size;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    iput p1, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput p2, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/base/util/Size;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/base/util/Size;->set(Lcom/tencent/liteav/base/util/Size;)V

    return-void
.end method


# virtual methods
.method public aspectRatio()D
    .locals 4

    iget v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    iget v2, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/liteav/base/util/Size;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/liteav/base/util/Size;

    iget v1, p1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v3, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    if-ne v1, v3, :cond_2

    iget p1, p1, Lcom/tencent/liteav/base/util/Size;->height:I

    iget v1, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getArea()I
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v1, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    mul-int v0, v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public set(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput p2, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    return-void
.end method

.method public set(Lcom/tencent/liteav/base/util/Size;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget p1, p1, Lcom/tencent/liteav/base/util/Size;->height:I

    iput p1, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput p1, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    return-void
.end method

.method public swap()V
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v1, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    iput v1, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    iput v0, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/liteav/base/util/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
