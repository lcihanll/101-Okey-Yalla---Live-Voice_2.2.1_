.class public final Lcom/tencent/live2/V2TXLiveDef$V2TXLiveSocks5ProxyConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V2TXLiveSocks5ProxyConfig"
.end annotation


# instance fields
.field public supportHttps:Z

.field public supportTcp:Z

.field public supportUdp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveSocks5ProxyConfig;->supportHttps:Z

    iput-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveSocks5ProxyConfig;->supportTcp:Z

    iput-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveSocks5ProxyConfig;->supportUdp:Z

    return-void
.end method
