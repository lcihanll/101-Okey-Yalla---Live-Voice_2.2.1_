.class Lcom/tencent/liteav/trtc/TrtcCloudJni$PayloadPrivateEncryptionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/trtc/TrtcCloudJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PayloadPrivateEncryptionConfig"
.end annotation


# instance fields
.field private a:Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$PayloadPrivateEncryptionConfig;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;

    return-void
.end method


# virtual methods
.method public getEncryptionAlgorithm()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$PayloadPrivateEncryptionConfig;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;

    iget v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;->encryptionAlgorithm:I

    return v0
.end method

.method public getEncryptionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$PayloadPrivateEncryptionConfig;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;

    iget-object v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;->encryptionKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$PayloadPrivateEncryptionConfig;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;

    iget-object v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;->encryptionKey:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getEncryptionSalt()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$PayloadPrivateEncryptionConfig;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;

    iget-object v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCPayloadPrivateEncryptionConfig;->encryptionSalt:[B

    return-object v0
.end method
