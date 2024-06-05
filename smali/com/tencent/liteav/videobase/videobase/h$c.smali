.class public final enum Lcom/tencent/liteav/videobase/videobase/h$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videobase/videobase/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/videobase/h$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum b:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum c:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum d:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum e:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum f:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum g:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum h:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum i:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum j:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum k:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum l:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum m:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum n:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum o:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum p:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum q:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum r:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum s:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum t:Lcom/tencent/liteav/videobase/videobase/h$c;

.field public static final enum u:Lcom/tencent/liteav/videobase/videobase/h$c;

.field private static final synthetic v:[Lcom/tencent/liteav/videobase/videobase/h$c;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v1, "WARNING_VIDEO_ENCODE_EGL_CORE_CREATE_FAILED"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->a:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v1, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v3, "WARNING_VIDEO_ENCODE_START_FAILED_INSUFFICIENT_RESOURCE"

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-direct {v1, v3, v4, v5}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v3, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v5, "WARNING_VIDEO_ENCODE_START_FAILED"

    const/4 v6, 0x2

    const/16 v7, 0x66

    invoke-direct {v3, v5, v6, v7}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/liteav/videobase/videobase/h$c;->c:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v5, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v7, "WARNING_VIDEO_ENCODE_SWAP_BUFFER"

    const/4 v8, 0x3

    const/16 v9, 0x67

    invoke-direct {v5, v7, v8, v9}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/liteav/videobase/videobase/h$c;->d:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v7, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v9, "WARNING_VIDEO_RENDER_EGL_CORE_CREATE_FAILED"

    const/4 v10, 0x4

    const/16 v11, 0xc8

    invoke-direct {v7, v9, v10, v11}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/liteav/videobase/videobase/h$c;->e:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v9, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v11, "WARNING_VIDEO_RENDER_EGL_CORE_DESTROY_FAILED"

    const/4 v12, 0x5

    const/16 v13, 0xc9

    invoke-direct {v9, v11, v12, v13}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/liteav/videobase/videobase/h$c;->f:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v11, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v13, "WARNING_VIDEO_RENDER_SWAP_BUFFER"

    const/4 v14, 0x6

    const/16 v15, 0xca

    invoke-direct {v11, v13, v14, v15}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/liteav/videobase/videobase/h$c;->g:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v13, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_EGL_CORE_CREATE_FAILED"

    const/4 v14, 0x7

    const/16 v12, 0x12c

    invoke-direct {v13, v15, v14, v12}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tencent/liteav/videobase/videobase/h$c;->h:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v12, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_ARGUMENT"

    const/16 v14, 0x8

    const/16 v10, 0x12d

    invoke-direct {v12, v15, v14, v10}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tencent/liteav/videobase/videobase/h$c;->i:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v10, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_START_FAILED_ILLEGAL_STATE"

    const/16 v14, 0x9

    const/16 v8, 0x12e

    invoke-direct {v10, v15, v14, v8}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tencent/liteav/videobase/videobase/h$c;->j:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v8, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_START_FAILED_INSUFFICIENT_RESOURCE"

    const/16 v14, 0xa

    const/16 v6, 0x12f

    invoke-direct {v8, v15, v14, v6}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/liteav/videobase/videobase/h$c;->k:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v6, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_START_FAILED_OUT_OF_MEMORY"

    const/16 v14, 0xb

    const/16 v4, 0x130

    invoke-direct {v6, v15, v14, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/liteav/videobase/videobase/h$c;->l:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v4, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_START_FAILED"

    const/16 v14, 0xc

    const/16 v2, 0x131

    invoke-direct {v4, v15, v14, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->m:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_RESTART_WHEN_DECODE_ERROR"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x132

    invoke-direct {v2, v15, v14, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->n:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v4, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_ERROR_NOT_SUPPORT_PIXEL_FORMAT_TYPE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x133

    invoke-direct {v4, v15, v14, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->o:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_FATAL_ERROR"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x134

    invoke-direct {v2, v15, v14, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->p:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v4, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_CACHE_EXCEEDED"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x3e8

    invoke-direct {v4, v15, v14, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->q:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_ABNORMAL"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x3e9

    invoke-direct {v2, v15, v14, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->r:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v4, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_EGL_CORE_DESTROY_FAILED"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x3ea

    invoke-direct {v4, v15, v14, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->s:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v2, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_VIDEO_DECODE_HARDWARE_ERROR"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x3eb

    invoke-direct {v2, v15, v14, v4}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->t:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v4, Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v15, "WARNING_OUT_OF_MEMORY"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x7d0

    invoke-direct {v4, v15, v14, v2}, Lcom/tencent/liteav/videobase/videobase/h$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/liteav/videobase/videobase/h$c;->u:Lcom/tencent/liteav/videobase/videobase/h$c;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/tencent/liteav/videobase/videobase/h$c;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->v:[Lcom/tencent/liteav/videobase/videobase/h$c;

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

    iput p3, p0, Lcom/tencent/liteav/videobase/videobase/h$c;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/videobase/h$c;
    .locals 1

    const-class v0, Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videobase/videobase/h$c;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/videobase/h$c;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->v:[Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/videobase/h$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/videobase/videobase/h$c;

    return-object v0
.end method
