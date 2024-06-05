.class public final enum Lcom/unity3d/services/core/webview/bridge/a;
.super Ljava/lang/Enum;
.source "CallbackStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/webview/bridge/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/webview/bridge/a;

.field public static final enum b:Lcom/unity3d/services/core/webview/bridge/a;

.field private static final synthetic c:[Lcom/unity3d/services/core/webview/bridge/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/unity3d/services/core/webview/bridge/a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/webview/bridge/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/webview/bridge/a;->a:Lcom/unity3d/services/core/webview/bridge/a;

    new-instance v1, Lcom/unity3d/services/core/webview/bridge/a;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/webview/bridge/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/webview/bridge/a;->b:Lcom/unity3d/services/core/webview/bridge/a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/unity3d/services/core/webview/bridge/a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/unity3d/services/core/webview/bridge/a;->c:[Lcom/unity3d/services/core/webview/bridge/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/a;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/webview/bridge/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/webview/bridge/a;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/webview/bridge/a;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/a;->c:[Lcom/unity3d/services/core/webview/bridge/a;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/webview/bridge/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/webview/bridge/a;

    return-object v0
.end method
