.class public final synthetic Lkotlin/comparisons/-$$Lambda$ComparisonsKt__ComparisonsKt$6WnilmL2ArBCKOeeYXXH8ELrg4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/comparisons/-$$Lambda$ComparisonsKt__ComparisonsKt$6WnilmL2ArBCKOeeYXXH8ELrg4w;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lkotlin/comparisons/-$$Lambda$ComparisonsKt__ComparisonsKt$6WnilmL2ArBCKOeeYXXH8ELrg4w;->f$0:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->lambda$6WnilmL2ArBCKOeeYXXH8ELrg4w(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
