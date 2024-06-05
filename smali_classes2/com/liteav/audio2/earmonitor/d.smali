.class final synthetic Lcom/liteav/audio2/earmonitor/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/liteav/audio2/earmonitor/a;


# direct methods
.method private constructor <init>(Lcom/liteav/audio2/earmonitor/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liteav/audio2/earmonitor/d;->a:Lcom/liteav/audio2/earmonitor/a;

    return-void
.end method

.method public static a(Lcom/liteav/audio2/earmonitor/a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liteav/audio2/earmonitor/d;

    invoke-direct {v0, p0}, Lcom/liteav/audio2/earmonitor/d;-><init>(Lcom/liteav/audio2/earmonitor/a;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/liteav/audio2/earmonitor/d;->a:Lcom/liteav/audio2/earmonitor/a;

    invoke-static {v0}, Lcom/liteav/audio2/earmonitor/a;->b(Lcom/liteav/audio2/earmonitor/a;)V

    return-void
.end method
