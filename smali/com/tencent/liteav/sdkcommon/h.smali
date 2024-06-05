.class final synthetic Lcom/tencent/liteav/sdkcommon/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/sdkcommon/g;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/sdkcommon/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/sdkcommon/h;->a:Lcom/tencent/liteav/sdkcommon/g;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/sdkcommon/g;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/sdkcommon/h;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/sdkcommon/h;-><init>(Lcom/tencent/liteav/sdkcommon/g;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/sdkcommon/h;->a:Lcom/tencent/liteav/sdkcommon/g;

    iget-object v1, v0, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/liteav/sdkcommon/g;->k:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method
