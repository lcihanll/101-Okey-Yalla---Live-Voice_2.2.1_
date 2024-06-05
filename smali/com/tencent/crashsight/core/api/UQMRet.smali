.class public Lcom/tencent/crashsight/core/api/UQMRet;
.super Lcom/tencent/crashsight/core/tools/json/JsonSerializable;
.source "UQMRet.java"


# instance fields
.field public extraJson:Ljava/lang/String;
    .annotation runtime Lcom/tencent/crashsight/core/tools/json/JsonProp;
        value = "extraJson"
    .end annotation
.end field

.field public methodNameID:I
    .annotation runtime Lcom/tencent/crashsight/core/tools/json/JsonProp;
        value = "methodNameID"
    .end annotation
.end field

.field public retCode:I
    .annotation runtime Lcom/tencent/crashsight/core/tools/json/JsonProp;
        value = "retCode"
    .end annotation
.end field

.field public retMsg:Ljava/lang/String;
    .annotation runtime Lcom/tencent/crashsight/core/tools/json/JsonProp;
        value = "retMsg"
    .end annotation
.end field

.field public thirdCode:I
    .annotation runtime Lcom/tencent/crashsight/core/tools/json/JsonProp;
        value = "ret"
    .end annotation
.end field

.field public thirdMsg:Ljava/lang/String;
    .annotation runtime Lcom/tencent/crashsight/core/tools/json/JsonProp;
        value = "msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/crashsight/core/tools/json/JsonSerializable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/crashsight/core/tools/json/JsonSerializable;-><init>()V

    iput p1, p0, Lcom/tencent/crashsight/core/api/UQMRet;->retCode:I

    invoke-static {p1}, Lcom/tencent/crashsight/core/UQMErrorCode;->get(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/crashsight/core/api/UQMRet;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/crashsight/core/api/UQMRet;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    invoke-static {p2}, Lcom/tencent/crashsight/core/UQMErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/crashsight/core/api/UQMRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 6

    invoke-static {p2}, Lcom/tencent/crashsight/core/UQMErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/crashsight/core/api/UQMRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/tencent/crashsight/core/UQMErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/crashsight/core/api/UQMRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/crashsight/core/tools/json/JsonSerializable;-><init>()V

    iput p2, p0, Lcom/tencent/crashsight/core/api/UQMRet;->retCode:I

    iput-object p3, p0, Lcom/tencent/crashsight/core/api/UQMRet;->retMsg:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/crashsight/core/api/UQMRet;->thirdCode:I

    iput-object p5, p0, Lcom/tencent/crashsight/core/api/UQMRet;->thirdMsg:Ljava/lang/String;

    iput p1, p0, Lcom/tencent/crashsight/core/api/UQMRet;->methodNameID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/crashsight/core/tools/json/JsonSerializable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/crashsight/core/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UQMRet{methodNameID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/crashsight/core/api/UQMRet;->methodNameID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/crashsight/core/api/UQMRet;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/crashsight/core/api/UQMRet;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thirdCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/crashsight/core/api/UQMRet;->thirdCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thirdMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/crashsight/core/api/UQMRet;->thirdMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extraJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/crashsight/core/api/UQMRet;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
