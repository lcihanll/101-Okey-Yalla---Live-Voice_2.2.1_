.class public final enum Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "V2TXLiveAudioFrameOperationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

.field public static final enum V2TXLiveAudioFrameOperationModeReadOnly:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

.field public static final enum V2TXLiveAudioFrameOperationModeReadWrite:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    const-string v1, "V2TXLiveAudioFrameOperationModeReadWrite"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;->V2TXLiveAudioFrameOperationModeReadWrite:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    new-instance v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    const-string v3, "V2TXLiveAudioFrameOperationModeReadOnly"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;->V2TXLiveAudioFrameOperationModeReadOnly:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;
    .locals 1

    const-class v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;
    .locals 1

    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;->$VALUES:[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    invoke-virtual {v0}, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    return-object v0
.end method
