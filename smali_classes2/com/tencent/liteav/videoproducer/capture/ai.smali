.class public final Lcom/tencent/liteav/videoproducer/capture/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

.field b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

.field c:I

.field d:Z

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->d:Z

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/tencent/liteav/base/util/Rotation;II)Lcom/tencent/liteav/base/util/Size;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/base/util/Size;",
            ">;",
            "Lcom/tencent/liteav/base/util/Rotation;",
            "II)",
            "Lcom/tencent/liteav/base/util/Size;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lcom/tencent/liteav/base/util/Size;

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preview wanted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cameraRotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSupervisor"

    invoke-static {v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string v0, "findBestMatchedPreviewSize getPreviewSizes null"

    invoke-static {v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v2, Lcom/tencent/liteav/base/util/Rotation;->b:Lcom/tencent/liteav/base/util/Rotation;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/tencent/liteav/base/util/Rotation;->d:Lcom/tencent/liteav/base/util/Rotation;

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->swap()V

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v4

    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    const/16 v2, 0x280

    invoke-direct {v0, v2, v2}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    iget v2, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v6, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    if-gt v2, v6, :cond_3

    iget v2, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    iget v6, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    if-gt v2, v6, :cond_3

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/Size;->set(Lcom/tencent/liteav/base/util/Size;)V

    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v6, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    if-le v2, v6, :cond_4

    iget v2, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v6, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    mul-int v2, v2, v6

    iget v6, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    div-int/2addr v2, v6

    iput v2, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    goto :goto_0

    :cond_4
    iget v2, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    iget v6, v1, Lcom/tencent/liteav/base/util/Size;->width:I

    mul-int v2, v2, v6

    iget v6, v1, Lcom/tencent/liteav/base/util/Size;->height:I

    div-int/2addr v2, v6

    iput v2, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide v8, 0x7fffffffffffffffL

    move-wide v10, v8

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v14, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    if-lt v13, v14, :cond_7

    iget v13, v12, Lcom/tencent/liteav/base/util/Size;->height:I

    iget v14, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    if-ge v13, v14, :cond_6

    goto :goto_2

    :cond_6
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-virtual {v12}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v15

    sub-double/2addr v15, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double v15, v15, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    goto :goto_3

    :cond_7
    :goto_2
    move-wide v13, v8

    :goto_3
    cmp-long v15, v13, v10

    if-gez v15, :cond_8

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v10, v13

    goto :goto_1

    :cond_8
    if-nez v15, :cond_5

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "support preview size list: "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/aj;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/Size;->getArea()I

    move-result v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/liteav/base/util/Size;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "size in same buck "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v9

    cmpl-double v11, v4, v9

    if-lez v11, :cond_b

    iget v9, v8, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v10, v8, Lcom/tencent/liteav/base/util/Size;->width:I

    mul-int v9, v9, v10

    int-to-double v9, v9

    div-double/2addr v9, v4

    goto :goto_5

    :cond_b
    iget v9, v8, Lcom/tencent/liteav/base/util/Size;->height:I

    iget v10, v8, Lcom/tencent/liteav/base/util/Size;->height:I

    mul-int v9, v9, v10

    int-to-double v9, v9

    mul-double v9, v9, v4

    :goto_5
    int-to-double v11, v1

    div-double v13, v9, v11

    const-wide v15, 0x3feccccccccccccdL    # 0.9

    cmpl-double v17, v13, v15

    if-ltz v17, :cond_a

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v13, v11, v6

    if-gez v13, :cond_a

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object v0, v8

    goto :goto_4

    :cond_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "best match preview size "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/liteav/base/util/Size;

    iget v2, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    iget v0, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static a([Lcom/tencent/liteav/videoproducer/utils/b;IZ)Lcom/tencent/liteav/videoproducer/utils/b;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "supported fps range: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraSupervisor"

    invoke-static {v5, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ak;->a()Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length p2, p0

    :goto_1
    if-ge v2, p2, :cond_5

    aget-object v1, p0, v2

    iget v3, v1, Lcom/tencent/liteav/videoproducer/utils/b;->a:I

    if-lt v3, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/al;->a()Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length p2, p0

    :goto_2
    if-ge v2, p2, :cond_5

    aget-object v1, p0, v2

    iget v3, v1, Lcom/tencent/liteav/videoproducer/utils/b;->a:I

    if-gt v3, p1, :cond_4

    iget v3, v1, Lcom/tencent/liteav/videoproducer/utils/b;->b:I

    if-gt p1, v3, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object v0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ai;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->e:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 5

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const-string v1, "isApiLevelSupportCamera2 false, current:"

    const/16 v2, 0x15

    const/4 v3, 0x0

    const-string v4, "CameraSupervisor"

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is low to:21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->c:I

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isApiLevelSupportCamera2 false, apiLevel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is too low."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->c:I

    if-ge v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is low to config api level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraAbilityProvider;->getCamera2SupportLevel()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isApiLevelSupportCamera2 apiLevel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " supportLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public final a()Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->c:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ai;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->d:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->c:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;->b:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ai;->a:Lcom/tencent/liteav/videoproducer/capture/CameraControllerInterface$a;

    return-object v0
.end method
