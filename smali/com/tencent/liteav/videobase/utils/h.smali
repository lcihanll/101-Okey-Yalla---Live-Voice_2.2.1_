.class public final Lcom/tencent/liteav/videobase/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videobase/utils/h$a;
    }
.end annotation


# instance fields
.field public a:Landroid/media/MediaFormat;

.field public b:Lorg/json/JSONArray;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field private g:Lcom/tencent/liteav/videobase/utils/h$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->a:Lcom/tencent/liteav/videobase/utils/h$a;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/h;->g:Lcom/tencent/liteav/videobase/utils/h$a;

    invoke-static {}, Lcom/tencent/liteav/videobase/utils/h;->b()Lcom/tencent/liteav/videobase/utils/h$a;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/utils/h$a;->a:Lcom/tencent/liteav/videobase/utils/h$a;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getHardware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->b:Lcom/tencent/liteav/videobase/utils/h$a;

    goto :goto_0

    :cond_0
    const-string v1, "kirin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->c:Lcom/tencent/liteav/videobase/utils/h$a;

    goto :goto_0

    :cond_1
    const-string v1, "exynos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->d:Lcom/tencent/liteav/videobase/utils/h$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->a:Lcom/tencent/liteav/videobase/utils/h$a;

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/h;->g:Lcom/tencent/liteav/videobase/utils/h$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hardware name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getHardware()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chip brand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/h;->g:Lcom/tencent/liteav/videobase/utils/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HardwareDecoderMediaFormatBuilder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b()Lcom/tencent/liteav/videobase/utils/h$a;
    .locals 5

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->a:Lcom/tencent/liteav/videobase/utils/h$a;

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hisi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->c:Lcom/tencent/liteav/videobase/utils/h$a;

    return-object v0

    :cond_1
    const-string v4, "amlogic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->e:Lcom/tencent/liteav/videobase/utils/h$a;

    return-object v0

    :cond_2
    const-string v4, "qcom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "qti"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->b:Lcom/tencent/liteav/videobase/utils/h$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get mediacode info error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HardwareDecoderMediaFormatBuilder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/tencent/liteav/videobase/utils/h$a;->a:Lcom/tencent/liteav/videobase/utils/h$a;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/media/MediaFormat;
    .locals 6

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/h;->a:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/h;->e:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/liteav/videobase/utils/h;->c:I

    iget v2, p0, Lcom/tencent/liteav/videobase/utils/h;->d:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/liteav/videobase/utils/h;->f:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/h;->g:Lcom/tencent/liteav/videobase/utils/h$a;

    sget-object v4, Lcom/tencent/liteav/videobase/utils/h$a;->c:Lcom/tencent/liteav/videobase/utils/h$a;

    if-eq v2, v4, :cond_1

    const-string v2, "low-latency"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const/16 v2, 0x17

    if-gt v1, v2, :cond_2

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "xiaomi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string/jumbo v2, "vdec-lowlatency"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_8

    sget-object v1, Lcom/tencent/liteav/videobase/utils/h$1;->a:[I

    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/h;->g:Lcom/tencent/liteav/videobase/utils/h$a;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/utils/h$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "vendor.low-latency.enable"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "vendor.rtc-ext-dec-low-latency.enable"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, -0x1

    const-string/jumbo v2, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "vendor.qti-ext-dec-low-latency.enable"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "vendor.qti-ext-dec-picture-order.enable"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/h;->b:Lorg/json/JSONArray;

    if-eqz v1, :cond_9

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "HardwareDecoderMediaFormatBuilder"

    const-string v3, "set MediaCodec device related params failed."

    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-object v0
.end method
