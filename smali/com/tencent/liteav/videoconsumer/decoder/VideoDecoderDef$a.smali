.class public final enum Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

.field public static final enum b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

.field public static final enum c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

.field public static final enum d:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

.field public static final enum e:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

.field private static final synthetic f:[Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    new-instance v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    const-string v3, "NORMAL_WRITABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    const-string v5, "NORMAL_UNWRITABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    new-instance v5, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    const-string v7, "FAST_WRITABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->d:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    new-instance v7, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    const-string v9, "FAST_UNWRITABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->e:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->f:[Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->f:[Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$a;

    return-object v0
.end method
