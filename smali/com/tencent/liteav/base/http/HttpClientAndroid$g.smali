.class public final enum Lcom/tencent/liteav/base/http/HttpClientAndroid$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/base/http/HttpClientAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/base/http/HttpClientAndroid$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

.field public static final enum b:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

.field public static final enum c:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

.field private static final synthetic d:[Lcom/tencent/liteav/base/http/HttpClientAndroid$g;


# instance fields
.field nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    new-instance v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    const-string v3, "DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->b:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    new-instance v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->c:Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->d:[Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->nativeValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/base/http/HttpClientAndroid$g;
    .locals 1

    const-class v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/base/http/HttpClientAndroid$g;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->d:[Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    invoke-virtual {v0}, [Lcom/tencent/liteav/base/http/HttpClientAndroid$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/base/http/HttpClientAndroid$g;

    return-object v0
.end method
