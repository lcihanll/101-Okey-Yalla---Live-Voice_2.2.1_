.class public Lcom/unity3d/services/ads/token/d;
.super Ljava/lang/Object;
.source "NativeTokenGenerator.java"

# interfaces
.implements Lcom/unity3d/services/ads/token/b;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/unity3d/services/core/device/reader/a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/unity3d/services/core/device/reader/a;)V
    .locals 1

    const-string v0, "1:"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/ads/token/d;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/unity3d/services/core/device/reader/a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/unity3d/services/core/device/reader/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/token/d;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/unity3d/services/ads/token/d;->b:Lcom/unity3d/services/core/device/reader/a;

    iput-object p3, p0, Lcom/unity3d/services/ads/token/d;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/services/ads/token/d;)Lcom/unity3d/services/core/device/reader/a;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/services/ads/token/d;->b:Lcom/unity3d/services/core/device/reader/a;

    return-object p0
.end method

.method static synthetic b(Lcom/unity3d/services/ads/token/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/services/ads/token/d;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/unity3d/services/ads/token/c;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/ads/token/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unity3d/services/ads/token/d$a;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/services/ads/token/d$a;-><init>(Lcom/unity3d/services/ads/token/d;Lcom/unity3d/services/ads/token/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
