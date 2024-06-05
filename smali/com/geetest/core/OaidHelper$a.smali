.class public Lcom/geetest/core/OaidHelper$a;
.super Lcom/geetest/core/OaidHelper$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/core/OaidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.asus.msa.SupplementaryDID"

    const-string v1, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    const-string v2, "com.asus.msa.action.ACCESS_DID"

    const-string v3, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/geetest/core/OaidHelper$j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
