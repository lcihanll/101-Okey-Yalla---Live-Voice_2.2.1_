.class Lcom/unity3d/services/ads/token/d$a;
.super Ljava/lang/Object;
.source "NativeTokenGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/token/d;->a(Lcom/unity3d/services/ads/token/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/services/ads/token/c;

.field final synthetic b:Lcom/unity3d/services/ads/token/d;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/token/d;Lcom/unity3d/services/ads/token/c;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/ads/token/d$a;->b:Lcom/unity3d/services/ads/token/d;

    iput-object p2, p0, Lcom/unity3d/services/ads/token/d$a;->a:Lcom/unity3d/services/ads/token/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/ads/token/d$a;->b:Lcom/unity3d/services/ads/token/d;

    invoke-static {v0}, Lcom/unity3d/services/ads/token/d;->a(Lcom/unity3d/services/ads/token/d;)Lcom/unity3d/services/core/device/reader/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/device/reader/a;->a()Lcom/unity3d/services/core/device/reader/p;

    move-result-object v0

    new-instance v1, Lcom/unity3d/services/core/device/reader/b;

    invoke-direct {v1, v0}, Lcom/unity3d/services/core/device/reader/b;-><init>(Lcom/unity3d/services/core/device/reader/p;)V

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/reader/b;->b()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/ads/token/d$a;->b:Lcom/unity3d/services/ads/token/d;

    invoke-static {v1}, Lcom/unity3d/services/ads/token/d;->b(Lcom/unity3d/services/ads/token/d;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/services/ads/token/d$a;->b:Lcom/unity3d/services/ads/token/d;

    invoke-static {v1}, Lcom/unity3d/services/ads/token/d;->b(Lcom/unity3d/services/ads/token/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unity3d/services/ads/token/d$a;->b:Lcom/unity3d/services/ads/token/d;

    invoke-static {v2}, Lcom/unity3d/services/ads/token/d;->b(Lcom/unity3d/services/ads/token/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/unity3d/services/ads/token/d$a;->b:Lcom/unity3d/services/ads/token/d;

    invoke-static {v2}, Lcom/unity3d/services/ads/token/d;->b(Lcom/unity3d/services/ads/token/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unity3d/services/ads/token/d$a;->a:Lcom/unity3d/services/ads/token/c;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/services/ads/token/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unity3d/services/ads/token/d$a;->a:Lcom/unity3d/services/ads/token/c;

    invoke-interface {v1, v0}, Lcom/unity3d/services/ads/token/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unity Ads failed to generate token."

    invoke-static {v1, v0}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/unity3d/services/ads/token/d$a;->a:Lcom/unity3d/services/ads/token/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unity3d/services/ads/token/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
