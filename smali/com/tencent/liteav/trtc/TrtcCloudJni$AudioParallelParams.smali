.class Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioParallelParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/trtc/TrtcCloudJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioParallelParams"
.end annotation


# instance fields
.field private a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioParallelParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;

    return-void
.end method


# virtual methods
.method public getIncludeUsers()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioParallelParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;

    iget-object v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;->includeUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioParallelParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;

    iget-object v1, v1, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;->includeUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMaxCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioParallelParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;

    iget v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioParallelParams;->maxCount:I

    return v0
.end method
