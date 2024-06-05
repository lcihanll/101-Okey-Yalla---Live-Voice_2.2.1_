.class public final Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLocalRecordingParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V2TXLiveLocalRecordingParams"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public interval:I

.field public recordMode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRecordMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRecordMode;->V2TXLiveRecordModeBoth:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRecordMode;

    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLocalRecordingParams;->recordMode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRecordMode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLocalRecordingParams;->interval:I

    return-void
.end method
