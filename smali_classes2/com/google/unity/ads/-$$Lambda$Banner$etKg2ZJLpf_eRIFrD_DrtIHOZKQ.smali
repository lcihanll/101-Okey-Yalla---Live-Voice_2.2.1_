.class public final synthetic Lcom/google/unity/ads/-$$Lambda$Banner$etKg2ZJLpf_eRIFrD_DrtIHOZKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/Banner;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/Banner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/-$$Lambda$Banner$etKg2ZJLpf_eRIFrD_DrtIHOZKQ;->f$0:Lcom/google/unity/ads/Banner;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/unity/ads/-$$Lambda$Banner$etKg2ZJLpf_eRIFrD_DrtIHOZKQ;->f$0:Lcom/google/unity/ads/Banner;

    invoke-virtual {v0}, Lcom/google/unity/ads/Banner;->lambda$getResponseInfo$0$Banner()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method
