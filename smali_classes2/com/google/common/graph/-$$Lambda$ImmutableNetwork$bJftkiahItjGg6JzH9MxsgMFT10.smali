.class public final synthetic Lcom/google/common/graph/-$$Lambda$ImmutableNetwork$bJftkiahItjGg6JzH9MxsgMFT10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/graph/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/-$$Lambda$ImmutableNetwork$bJftkiahItjGg6JzH9MxsgMFT10;->f$0:Lcom/google/common/graph/Network;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/-$$Lambda$ImmutableNetwork$bJftkiahItjGg6JzH9MxsgMFT10;->f$0:Lcom/google/common/graph/Network;

    invoke-static {v0, p1}, Lcom/google/common/graph/ImmutableNetwork;->lambda$targetNodeFn$1(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
