.class public Lcom/unity3d/services/store/gpbl/bridges/d;
.super Lcom/unity3d/services/store/gpbl/bridges/b;
.source "PurchaseHistoryRecordBridge.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/services/store/gpbl/bridges/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.billingclient.api.PurchaseHistoryRecord"

    return-object v0
.end method