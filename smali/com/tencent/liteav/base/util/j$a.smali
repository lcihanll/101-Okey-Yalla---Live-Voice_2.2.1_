.class final Lcom/tencent/liteav/base/util/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/base/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/tencent/liteav/base/util/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/liteav/base/util/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/j;-><init>(B)V

    sput-object v0, Lcom/tencent/liteav/base/util/j$a;->a:Lcom/tencent/liteav/base/util/j;

    return-void
.end method

.method static synthetic a()Lcom/tencent/liteav/base/util/j;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/base/util/j$a;->a:Lcom/tencent/liteav/base/util/j;

    return-object v0
.end method
