.class public final Lcom/tencent/liteav/base/http/HttpClientAndroid$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/base/http/HttpClientAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field a:Lcom/tencent/liteav/base/http/HttpClientAndroid$h;

.field b:Ljava/lang/String;

.field c:Ljava/nio/ByteBuffer;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:I

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/liteav/base/http/HttpClientAndroid$h;->x:Lcom/tencent/liteav/base/http/HttpClientAndroid$h;

    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->a:Lcom/tencent/liteav/base/http/HttpClientAndroid$h;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->d:I

    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->e:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->f:Ljava/util/Map;

    iput v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->g:I

    iput v1, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->h:I

    iput-object v0, p0, Lcom/tencent/liteav/base/http/HttpClientAndroid$f;->i:Ljava/lang/String;

    return-void
.end method
