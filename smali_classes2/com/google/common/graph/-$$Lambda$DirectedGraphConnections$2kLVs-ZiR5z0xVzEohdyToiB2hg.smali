.class public final synthetic Lcom/google/common/graph/-$$Lambda$DirectedGraphConnections$2kLVs-ZiR5z0xVzEohdyToiB2hg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/-$$Lambda$DirectedGraphConnections$2kLVs-ZiR5z0xVzEohdyToiB2hg;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/-$$Lambda$DirectedGraphConnections$2kLVs-ZiR5z0xVzEohdyToiB2hg;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;

    invoke-static {v0, p1}, Lcom/google/common/graph/DirectedGraphConnections;->lambda$incidentEdgeIterator$2(Ljava/lang/Object;Lcom/google/common/graph/DirectedGraphConnections$NodeConnection;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
