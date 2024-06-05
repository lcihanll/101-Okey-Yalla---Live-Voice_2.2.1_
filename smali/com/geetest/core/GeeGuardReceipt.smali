.class public Lcom/geetest/core/GeeGuardReceipt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public geeID:Ljava/lang/String;

.field public geeIDTimestamp:Ljava/lang/String;

.field public geeQueryToken:Ljava/lang/String;

.field public geeToken:Ljava/lang/String;

.field public originalResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geetest/core/GeeGuardReceipt;->geeToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/geetest/core/GeeGuardReceipt;->geeID:Ljava/lang/String;

    iput-object v0, p0, Lcom/geetest/core/GeeGuardReceipt;->geeIDTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/geetest/core/GeeGuardReceipt;->geeQueryToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/geetest/core/GeeGuardReceipt;->originalResponse:Ljava/lang/String;

    return-void
.end method
