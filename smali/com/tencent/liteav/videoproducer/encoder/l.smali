.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/encoder/c$a;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/l;->a:Lcom/tencent/liteav/videoproducer/encoder/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/liteav/videoproducer/encoder/c$b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/l;->a:Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/c;->d(Lcom/tencent/liteav/videoproducer/encoder/c;)Lcom/tencent/liteav/videoproducer/encoder/c$b;

    move-result-object v0

    return-object v0
.end method
