.class final synthetic Lcom/tencent/liteav/base/system/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static final a:Lcom/tencent/liteav/base/system/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/base/system/j;

    invoke-direct {v0}, Lcom/tencent/liteav/base/system/j;-><init>()V

    sput-object v0, Lcom/tencent/liteav/base/system/j;->a:Lcom/tencent/liteav/base/system/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/Callable;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/base/system/j;->a:Lcom/tencent/liteav/base/system/j;

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->lambda$static$3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method