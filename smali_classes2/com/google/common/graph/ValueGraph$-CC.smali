.class public final synthetic Lcom/google/common/graph/ValueGraph$-CC;
.super Ljava/lang/Object;
.source "ValueGraph.java"


# direct methods
.method public static synthetic $default$predecessors(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$successors(Lcom/google/common/graph/ValueGraph;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method