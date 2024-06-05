.class final Lcom/tencent/liteav/audio/route/b$a$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/route/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/tencent/liteav/audio/route/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->a:Lcom/tencent/liteav/audio/route/b$a;

    const-string v1, "NONE"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/audio/route/b$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->c:Lcom/tencent/liteav/audio/route/b$a;

    const-string v1, "EARPHONE"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/audio/route/b$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->b:Lcom/tencent/liteav/audio/route/b$a;

    const-string v1, "SPEAKERPHONE"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/audio/route/b$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->d:Lcom/tencent/liteav/audio/route/b$a;

    const-string v1, "WIRED_HEADSET"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/audio/route/b$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->e:Lcom/tencent/liteav/audio/route/b$a;

    const-string v1, "BLUETOOTH_HEADSET"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/audio/route/b$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/liteav/audio/route/b$a;->f:Lcom/tencent/liteav/audio/route/b$a;

    const-string v1, "SOUNDCARD"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/audio/route/b$a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
