.class public final enum Lcom/unity3d/services/core/device/reader/pii/e;
.super Ljava/lang/Enum;
.source "PiiPrivacyMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/device/reader/pii/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/services/core/device/reader/pii/e;

.field public static final enum b:Lcom/unity3d/services/core/device/reader/pii/e;

.field public static final enum c:Lcom/unity3d/services/core/device/reader/pii/e;

.field public static final enum d:Lcom/unity3d/services/core/device/reader/pii/e;

.field public static final enum e:Lcom/unity3d/services/core/device/reader/pii/e;

.field private static final synthetic f:[Lcom/unity3d/services/core/device/reader/pii/e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/unity3d/services/core/device/reader/pii/e;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/device/reader/pii/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/device/reader/pii/e;->a:Lcom/unity3d/services/core/device/reader/pii/e;

    new-instance v1, Lcom/unity3d/services/core/device/reader/pii/e;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/device/reader/pii/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/device/reader/pii/e;->b:Lcom/unity3d/services/core/device/reader/pii/e;

    new-instance v3, Lcom/unity3d/services/core/device/reader/pii/e;

    const-string v5, "MIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/device/reader/pii/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/device/reader/pii/e;->c:Lcom/unity3d/services/core/device/reader/pii/e;

    new-instance v5, Lcom/unity3d/services/core/device/reader/pii/e;

    const-string v7, "UNDEFINED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/device/reader/pii/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/device/reader/pii/e;->d:Lcom/unity3d/services/core/device/reader/pii/e;

    new-instance v7, Lcom/unity3d/services/core/device/reader/pii/e;

    const-string v9, "NULL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/core/device/reader/pii/e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/device/reader/pii/e;->e:Lcom/unity3d/services/core/device/reader/pii/e;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/unity3d/services/core/device/reader/pii/e;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/unity3d/services/core/device/reader/pii/e;->f:[Lcom/unity3d/services/core/device/reader/pii/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/e;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/unity3d/services/core/device/reader/pii/e;->e:Lcom/unity3d/services/core/device/reader/pii/e;

    return-object p0

    :cond_0
    sget-object v0, Lcom/unity3d/services/core/device/reader/pii/e;->d:Lcom/unity3d/services/core/device/reader/pii/e;

    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/services/core/device/reader/pii/e;->valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/e;
    .locals 1

    const-class v0, Lcom/unity3d/services/core/device/reader/pii/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/device/reader/pii/e;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/device/reader/pii/e;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/device/reader/pii/e;->f:[Lcom/unity3d/services/core/device/reader/pii/e;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/device/reader/pii/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/device/reader/pii/e;

    return-object v0
.end method
