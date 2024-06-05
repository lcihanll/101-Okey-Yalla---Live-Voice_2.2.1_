.class public Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/smantifraud/SmAntiFraud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmOption"
.end annotation


# static fields
.field private static final l1111l111111Il:I = 0x400


# instance fields
.field private l111l11111I1l:Ljava/lang/String;

.field private l111l11111Il:Ljava/lang/String;

.field private l111l11111lIl:Z

.field private l111l1111l1Il:Z

.field private l111l1111lI1l:Ljava/lang/String;

.field private l111l1111lIl:Ljava/lang/String;

.field private l111l1111llIl:Z

.field private l111l11IlIlIl:Ljava/lang/String;

.field private l11l1111I11l:Z

.field private l11l1111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

.field private l11l1111I1ll:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l11l1111Il:Z

.field private l11l1111Il1l:Ljava/lang/String;

.field private l11l1111Ill:Ljava/lang/String;

.field private l11l1111lIIl:Z

.field private l11l111l11Il:Z

.field private l11l111l1lll:Ljava/lang/String;

.field private l11l11IlIIll:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111lIl:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111I1l:Ljava/lang/String;

    iput-object v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111Il:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il:Z

    iput-boolean v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111llIl:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lI1l:Ljava/lang/String;

    iput-object v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lIl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111lIIl:Z

    iput-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I11l:Z

    iput-object v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    const-string v2, "default"

    iput-object v2, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l:Ljava/lang/String;

    iput-object v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Ill:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l111l11Il:Z

    const-string v0, "bj"

    iput-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l111l1lll:Ljava/lang/String;

    const-string v0, "/deviceprofile/v4"

    iput-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lI1l:Ljava/lang/String;

    const-string v0, "/v3/cloudconf"

    iput-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lIl:Ljava/lang/String;

    return-void
.end method

.method private l111l11IlIlIl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il:Z

    return v0
.end method

.method private l11l111l1lll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111lIl:Z

    return v0
.end method


# virtual methods
.method public final l1111l111111Il()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il:Z

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111llIl:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111lIIl:Z

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I11l:Z

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ishumei/smantifraud/SmAntiFraud;->l1111l111111Il()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll:Ljava/util/Set;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_5

    move-object v1, v2

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l111l11Il:Z

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l111l11111I1l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I11l:Z

    return v0
.end method

.method public final l111l11111Il()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l111l11Il:Z

    return v0
.end method

.method public final l111l11111lIl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l111l1lll:Ljava/lang/String;

    return-object v0
.end method

.method public final l111l1111l1Il()[B
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll:[B

    return-object v0
.end method

.method public final l111l1111lI1l()Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    return-object v0
.end method

.method public final l111l1111lIl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lIl:Ljava/lang/String;

    return-object v0
.end method

.method public final l111l1111llIl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Ill:Ljava/lang/String;

    return-object v0
.end method

.method public final l11l1111I11l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111llIl:Z

    return v0
.end method

.method public final l11l1111I1l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il:Z

    return v0
.end method

.method public final l11l1111I1ll()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111I1l:Ljava/lang/String;

    return-object v0
.end method

.method public final l11l1111Il()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111Il:Ljava/lang/String;

    return-object v0
.end method

.method public final l11l1111Il1l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lI1l:Ljava/lang/String;

    return-object v0
.end method

.method public final l11l1111Ill()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll:Ljava/util/Set;

    return-object v0
.end method

.method public final l11l1111lIIl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111lIIl:Z

    return v0
.end method

.method public final l11l111l11Il()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11IlIlIl:Ljava/lang/String;

    return-object v0
.end method

.method public final l11l11IlIIll()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il1l:Ljava/lang/String;

    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l111l1lll:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111Il:Ljava/lang/String;

    return-void
.end method

.method public setCheckCrt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l111l11Il:Z

    return-void
.end method

.method public setCloudConf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111llIl:Z

    return-void
.end method

.method public setConfUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lIl:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11IlIlIl:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11IlIlIl:Ljava/lang/String;

    return-void
.end method

.method public setFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Il:Z

    return-void
.end method

.method public setHttpsCrt([B)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l11IlIIll:[B

    return-void
.end method

.method public setNotCollect(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1ll:Ljava/util/Set;

    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111I1l:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111Ill:Ljava/lang/String;

    return-void
.end method

.method public setServerIdCallback(Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I1l:Lcom/ishumei/smantifraud/SmAntiFraud$IServerSmidCallback;

    return-void
.end method

.method public setSynMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l11111lIl:Z

    return-void
.end method

.method public setTransport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111l1Il:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l111l1111lI1l:Ljava/lang/String;

    return-void
.end method

.method public setUsingHttps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111I11l:Z

    return-void
.end method

.method public setUsingMD5(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ishumei/smantifraud/SmAntiFraud$SmOption;->l11l1111lIIl:Z

    return-void
.end method
