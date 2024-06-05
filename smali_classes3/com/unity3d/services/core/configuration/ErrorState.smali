.class public final enum Lcom/unity3d/services/core/configuration/ErrorState;
.super Ljava/lang/Enum;
.source "ErrorState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/configuration/ErrorState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CreateWebApp:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum CreateWebview:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum CreateWebviewConfigError:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum CreateWebviewGameIdDisabled:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum CreateWebviewInvalidArgument:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum CreateWebviewTimeout:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum InitModules:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum InvalidHash:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum LoadCache:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum MalformedWebviewRequest:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum NetworkConfigRequest:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum NetworkWebviewRequest:Lcom/unity3d/services/core/configuration/ErrorState;

.field public static final enum ResetWebApp:Lcom/unity3d/services/core/configuration/ErrorState;

.field private static final synthetic a:[Lcom/unity3d/services/core/configuration/ErrorState;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v1, "CreateWebApp"

    const/4 v2, 0x0

    const-string v3, "create_webapp"

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/unity3d/services/core/configuration/ErrorState;->CreateWebApp:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v1, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v3, "NetworkConfigRequest"

    const/4 v4, 0x1

    const-string v5, "network_config"

    invoke-direct {v1, v3, v4, v5}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/unity3d/services/core/configuration/ErrorState;->NetworkConfigRequest:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v3, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v5, "NetworkWebviewRequest"

    const/4 v6, 0x2

    const-string v7, "network_webview"

    invoke-direct {v3, v5, v6, v7}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/unity3d/services/core/configuration/ErrorState;->NetworkWebviewRequest:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v5, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v7, "InvalidHash"

    const/4 v8, 0x3

    const-string v9, "invalid_hash"

    invoke-direct {v5, v7, v8, v9}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/unity3d/services/core/configuration/ErrorState;->InvalidHash:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v7, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v9, "CreateWebview"

    const/4 v10, 0x4

    const-string v11, "create_webview"

    invoke-direct {v7, v9, v10, v11}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/unity3d/services/core/configuration/ErrorState;->CreateWebview:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v9, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v11, "MalformedWebviewRequest"

    const/4 v12, 0x5

    const-string v13, "malformed_webview"

    invoke-direct {v9, v11, v12, v13}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/unity3d/services/core/configuration/ErrorState;->MalformedWebviewRequest:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v11, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v13, "ResetWebApp"

    const/4 v14, 0x6

    const-string v15, "reset_webapp"

    invoke-direct {v11, v13, v14, v15}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/unity3d/services/core/configuration/ErrorState;->ResetWebApp:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v13, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v15, "LoadCache"

    const/4 v14, 0x7

    const-string v12, "load_cache"

    invoke-direct {v13, v15, v14, v12}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/unity3d/services/core/configuration/ErrorState;->LoadCache:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v12, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v15, "InitModules"

    const/16 v14, 0x8

    const-string v10, "init_modules"

    invoke-direct {v12, v15, v14, v10}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/unity3d/services/core/configuration/ErrorState;->InitModules:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v10, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v15, "CreateWebviewTimeout"

    const/16 v14, 0x9

    const-string v8, "create_webview_timeout"

    invoke-direct {v10, v15, v14, v8}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/unity3d/services/core/configuration/ErrorState;->CreateWebviewTimeout:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v8, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v15, "CreateWebviewGameIdDisabled"

    const/16 v14, 0xa

    const-string v6, "create_webview_game_id_disabled"

    invoke-direct {v8, v15, v14, v6}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/unity3d/services/core/configuration/ErrorState;->CreateWebviewGameIdDisabled:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v6, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v15, "CreateWebviewConfigError"

    const/16 v14, 0xb

    const-string v4, "create_webview_config_error"

    invoke-direct {v6, v15, v14, v4}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/unity3d/services/core/configuration/ErrorState;->CreateWebviewConfigError:Lcom/unity3d/services/core/configuration/ErrorState;

    new-instance v4, Lcom/unity3d/services/core/configuration/ErrorState;

    const-string v15, "CreateWebviewInvalidArgument"

    const/16 v14, 0xc

    const-string v2, "create_webview_invalid_arg"

    invoke-direct {v4, v15, v14, v2}, Lcom/unity3d/services/core/configuration/ErrorState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/unity3d/services/core/configuration/ErrorState;->CreateWebviewInvalidArgument:Lcom/unity3d/services/core/configuration/ErrorState;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/unity3d/services/core/configuration/ErrorState;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lcom/unity3d/services/core/configuration/ErrorState;->a:[Lcom/unity3d/services/core/configuration/ErrorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/unity3d/services/core/configuration/ErrorState;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/ErrorState;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/configuration/ErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/configuration/ErrorState;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/configuration/ErrorState;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/configuration/ErrorState;->a:[Lcom/unity3d/services/core/configuration/ErrorState;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/configuration/ErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/configuration/ErrorState;

    return-object v0
.end method


# virtual methods
.method public getMetricName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/configuration/ErrorState;->b:Ljava/lang/String;

    return-object v0
.end method
