.class public final enum Lcom/tencent/liteav/videobase/videobase/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videobase/videobase/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/videobase/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum b:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum c:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum d:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum e:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum f:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum g:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum h:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum i:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum j:Lcom/tencent/liteav/videobase/videobase/h$a;

.field public static final enum k:Lcom/tencent/liteav/videobase/videobase/h$a;

.field private static final synthetic l:[Lcom/tencent/liteav/videobase/videobase/h$a;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v1, "ERR_CODE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videobase/videobase/h$a;->a:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v1, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v3, "ERR_VIDEO_CAPTURE_EGL_CORE_CREATE_FAILED"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v3, v4, v5}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videobase/videobase/h$a;->b:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v3, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v5, "ERR_VIDEO_CAPTURE_OPENGL_ERROR"

    const/4 v6, 0x2

    const/16 v7, 0x65

    invoke-direct {v3, v5, v6, v7}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videobase/videobase/h$a;->c:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v5, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v7, "ERR_VIDEO_CAPTURE_CAMERA_INVALID_DEVICE"

    const/4 v8, 0x3

    const/16 v9, 0x6e

    invoke-direct {v5, v7, v8, v9}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videobase/videobase/h$a;->d:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v7, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v9, "ERR_VIDEO_CAPTURE_CAMERA_NOT_AUTHORIZED"

    const/4 v10, 0x4

    const/16 v11, 0x6f

    invoke-direct {v7, v9, v10, v11}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/liteav/videobase/videobase/h$a;->e:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v9, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v11, "ERR_VIDEO_CAPTURE_SCREEN_CAPTURE_START_FAILED"

    const/4 v12, 0x5

    const/16 v13, 0x78

    invoke-direct {v9, v11, v12, v13}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/liteav/videobase/videobase/h$a;->f:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v11, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v13, "ERR_VIDEO_CAPTURE_SCREEN_UNAUTHORIZED"

    const/4 v14, 0x6

    const/16 v15, 0x79

    invoke-direct {v11, v13, v14, v15}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/liteav/videobase/videobase/h$a;->g:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v13, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v15, "ERR_VIDEO_CAPTURE_SCREEN_UNSUPPORTED"

    const/4 v14, 0x7

    const/16 v12, 0x7a

    invoke-direct {v13, v15, v14, v12}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tencent/liteav/videobase/videobase/h$a;->h:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v12, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v15, "ERR_VIDEO_ENCODE_FATALERROR"

    const/16 v14, 0x8

    const/16 v10, 0xc8

    invoke-direct {v12, v15, v14, v10}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tencent/liteav/videobase/videobase/h$a;->i:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v10, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v15, "ERR_VIDEO_ENCODE_FAIL"

    const/16 v14, 0x9

    const/16 v8, 0xc9

    invoke-direct {v10, v15, v14, v8}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tencent/liteav/videobase/videobase/h$a;->j:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v8, Lcom/tencent/liteav/videobase/videobase/h$a;

    const-string v15, "ERR_VIDEO_NO_AVAILABLE_HEVC_DECODERS"

    const/16 v14, 0xa

    const/16 v6, 0x12c

    invoke-direct {v8, v15, v14, v6}, Lcom/tencent/liteav/videobase/videobase/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/liteav/videobase/videobase/h$a;->k:Lcom/tencent/liteav/videobase/videobase/h$a;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/tencent/liteav/videobase/videobase/h$a;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    sput-object v6, Lcom/tencent/liteav/videobase/videobase/h$a;->l:[Lcom/tencent/liteav/videobase/videobase/h$a;

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

    iput p3, p0, Lcom/tencent/liteav/videobase/videobase/h$a;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/videobase/h$a;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/videobase/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/videobase/h$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/videobase/h$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$a;->l:[Lcom/tencent/liteav/videobase/videobase/h$a;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/videobase/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/videobase/h$a;

    return-object v0
.end method
