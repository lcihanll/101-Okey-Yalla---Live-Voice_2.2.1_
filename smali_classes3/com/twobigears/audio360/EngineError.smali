.class public final enum Lcom/twobigears/audio360/EngineError;
.super Ljava/lang/Enum;
.source "EngineError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/EngineError$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twobigears/audio360/EngineError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twobigears/audio360/EngineError;

.field public static final enum BAD_THREAD:Lcom/twobigears/audio360/EngineError;

.field public static final enum CANNOT_ALLOCATE_MEMORY:Lcom/twobigears/audio360/EngineError;

.field public static final enum CANNOT_CREATE_AUDIO_DEVICE:Lcom/twobigears/audio360/EngineError;

.field public static final enum CANNOT_INITIALISE_CORE:Lcom/twobigears/audio360/EngineError;

.field public static final enum CANNOT_INIT_DECODER:Lcom/twobigears/audio360/EngineError;

.field public static final enum COULD_NOT_CONNECT:Lcom/twobigears/audio360/EngineError;

.field public static final enum CURL_FAIL:Lcom/twobigears/audio360/EngineError;

.field public static final enum ERROR_OPENING_FILE:Lcom/twobigears/audio360/EngineError;

.field public static final enum ERROR_OPENING_TEMP_FILE:Lcom/twobigears/audio360/EngineError;

.field public static final enum FAIL:Lcom/twobigears/audio360/EngineError;

.field public static final enum INVALID_BUFFER_SIZE:Lcom/twobigears/audio360/EngineError;

.field public static final enum INVALID_CHANNEL_COUNT:Lcom/twobigears/audio360/EngineError;

.field public static final enum INVALID_HEADER:Lcom/twobigears/audio360/EngineError;

.field public static final enum INVALID_PARAM:Lcom/twobigears/audio360/EngineError;

.field public static final enum INVALID_QUALITY:Lcom/twobigears/audio360/EngineError;

.field public static final enum INVALID_SAMPLE_RATE:Lcom/twobigears/audio360/EngineError;

.field public static final enum INVALID_URL_FORMAT:Lcom/twobigears/audio360/EngineError;

.field public static final enum MEMORY_MAP_FAIL:Lcom/twobigears/audio360/EngineError;

.field public static final enum NOT_SUPPORTED:Lcom/twobigears/audio360/EngineError;

.field public static final enum NO_ASSET:Lcom/twobigears/audio360/EngineError;

.field public static final enum NO_AUDIO_DEVICE:Lcom/twobigears/audio360/EngineError;

.field public static final enum NO_OBJECTS_IN_POOL:Lcom/twobigears/audio360/EngineError;

.field public static final enum OK:Lcom/twobigears/audio360/EngineError;

.field public static final enum QUEUE_FULL:Lcom/twobigears/audio360/EngineError;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/twobigears/audio360/EngineError;

    const-string v1, "INVALID_PARAM"

    const/4 v2, 0x0

    const/16 v3, -0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twobigears/audio360/EngineError;->INVALID_PARAM:Lcom/twobigears/audio360/EngineError;

    new-instance v1, Lcom/twobigears/audio360/EngineError;

    const-string v3, "INVALID_QUALITY"

    const/4 v4, 0x1

    const/16 v5, -0x16

    invoke-direct {v1, v3, v4, v5}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/twobigears/audio360/EngineError;->INVALID_QUALITY:Lcom/twobigears/audio360/EngineError;

    new-instance v3, Lcom/twobigears/audio360/EngineError;

    const-string v5, "QUEUE_FULL"

    const/4 v6, 0x2

    const/16 v7, -0x15

    invoke-direct {v3, v5, v6, v7}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/twobigears/audio360/EngineError;->QUEUE_FULL:Lcom/twobigears/audio360/EngineError;

    new-instance v5, Lcom/twobigears/audio360/EngineError;

    const-string v7, "BAD_THREAD"

    const/4 v8, 0x3

    const/16 v9, -0x14

    invoke-direct {v5, v7, v8, v9}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/twobigears/audio360/EngineError;->BAD_THREAD:Lcom/twobigears/audio360/EngineError;

    new-instance v7, Lcom/twobigears/audio360/EngineError;

    const-string v9, "NOT_SUPPORTED"

    const/4 v10, 0x4

    const/16 v11, -0x13

    invoke-direct {v7, v9, v10, v11}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/twobigears/audio360/EngineError;->NOT_SUPPORTED:Lcom/twobigears/audio360/EngineError;

    new-instance v9, Lcom/twobigears/audio360/EngineError;

    const-string v11, "NO_AUDIO_DEVICE"

    const/4 v12, 0x5

    const/16 v13, -0x12

    invoke-direct {v9, v11, v12, v13}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/twobigears/audio360/EngineError;->NO_AUDIO_DEVICE:Lcom/twobigears/audio360/EngineError;

    new-instance v11, Lcom/twobigears/audio360/EngineError;

    const-string v13, "COULD_NOT_CONNECT"

    const/4 v14, 0x6

    const/16 v15, -0x11

    invoke-direct {v11, v13, v14, v15}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/twobigears/audio360/EngineError;->COULD_NOT_CONNECT:Lcom/twobigears/audio360/EngineError;

    new-instance v13, Lcom/twobigears/audio360/EngineError;

    const-string v15, "MEMORY_MAP_FAIL"

    const/4 v14, 0x7

    const/16 v12, -0x10

    invoke-direct {v13, v15, v14, v12}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/twobigears/audio360/EngineError;->MEMORY_MAP_FAIL:Lcom/twobigears/audio360/EngineError;

    new-instance v12, Lcom/twobigears/audio360/EngineError;

    const-string v15, "INVALID_URL_FORMAT"

    const/16 v14, 0x8

    const/16 v10, -0xf

    invoke-direct {v12, v15, v14, v10}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/twobigears/audio360/EngineError;->INVALID_URL_FORMAT:Lcom/twobigears/audio360/EngineError;

    new-instance v10, Lcom/twobigears/audio360/EngineError;

    const-string v15, "ERROR_OPENING_TEMP_FILE"

    const/16 v14, 0x9

    const/16 v8, -0xe

    invoke-direct {v10, v15, v14, v8}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/twobigears/audio360/EngineError;->ERROR_OPENING_TEMP_FILE:Lcom/twobigears/audio360/EngineError;

    new-instance v8, Lcom/twobigears/audio360/EngineError;

    const-string v15, "INVALID_HEADER"

    const/16 v14, 0xa

    const/16 v6, -0xd

    invoke-direct {v8, v15, v14, v6}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/twobigears/audio360/EngineError;->INVALID_HEADER:Lcom/twobigears/audio360/EngineError;

    new-instance v6, Lcom/twobigears/audio360/EngineError;

    const-string v15, "CURL_FAIL"

    const/16 v14, 0xb

    const/16 v4, -0xc

    invoke-direct {v6, v15, v14, v4}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/twobigears/audio360/EngineError;->CURL_FAIL:Lcom/twobigears/audio360/EngineError;

    new-instance v4, Lcom/twobigears/audio360/EngineError;

    const-string v15, "INVALID_CHANNEL_COUNT"

    const/16 v14, 0xc

    const/16 v2, -0xb

    invoke-direct {v4, v15, v14, v2}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/twobigears/audio360/EngineError;->INVALID_CHANNEL_COUNT:Lcom/twobigears/audio360/EngineError;

    new-instance v2, Lcom/twobigears/audio360/EngineError;

    const-string v15, "CANNOT_INIT_DECODER"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, -0xa

    invoke-direct {v2, v15, v14, v4}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/twobigears/audio360/EngineError;->CANNOT_INIT_DECODER:Lcom/twobigears/audio360/EngineError;

    new-instance v4, Lcom/twobigears/audio360/EngineError;

    const-string v15, "ERROR_OPENING_FILE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, -0x9

    invoke-direct {v4, v15, v14, v2}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/twobigears/audio360/EngineError;->ERROR_OPENING_FILE:Lcom/twobigears/audio360/EngineError;

    new-instance v2, Lcom/twobigears/audio360/EngineError;

    const-string v15, "NO_ASSET"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/4 v4, -0x8

    invoke-direct {v2, v15, v14, v4}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/twobigears/audio360/EngineError;->NO_ASSET:Lcom/twobigears/audio360/EngineError;

    new-instance v4, Lcom/twobigears/audio360/EngineError;

    const-string v15, "CANNOT_ALLOCATE_MEMORY"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/4 v2, -0x7

    invoke-direct {v4, v15, v14, v2}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/twobigears/audio360/EngineError;->CANNOT_ALLOCATE_MEMORY:Lcom/twobigears/audio360/EngineError;

    new-instance v2, Lcom/twobigears/audio360/EngineError;

    const-string v15, "CANNOT_CREATE_AUDIO_DEVICE"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/4 v4, -0x6

    invoke-direct {v2, v15, v14, v4}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/twobigears/audio360/EngineError;->CANNOT_CREATE_AUDIO_DEVICE:Lcom/twobigears/audio360/EngineError;

    new-instance v4, Lcom/twobigears/audio360/EngineError;

    const-string v15, "CANNOT_INITIALISE_CORE"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/4 v2, -0x5

    invoke-direct {v4, v15, v14, v2}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/twobigears/audio360/EngineError;->CANNOT_INITIALISE_CORE:Lcom/twobigears/audio360/EngineError;

    new-instance v2, Lcom/twobigears/audio360/EngineError;

    const-string v15, "INVALID_BUFFER_SIZE"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/4 v4, -0x4

    invoke-direct {v2, v15, v14, v4}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/twobigears/audio360/EngineError;->INVALID_BUFFER_SIZE:Lcom/twobigears/audio360/EngineError;

    new-instance v4, Lcom/twobigears/audio360/EngineError;

    const-string v15, "INVALID_SAMPLE_RATE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/4 v2, -0x3

    invoke-direct {v4, v15, v14, v2}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/twobigears/audio360/EngineError;->INVALID_SAMPLE_RATE:Lcom/twobigears/audio360/EngineError;

    new-instance v2, Lcom/twobigears/audio360/EngineError;

    const-string v15, "NO_OBJECTS_IN_POOL"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/4 v4, -0x2

    invoke-direct {v2, v15, v14, v4}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/twobigears/audio360/EngineError;->NO_OBJECTS_IN_POOL:Lcom/twobigears/audio360/EngineError;

    new-instance v4, Lcom/twobigears/audio360/EngineError;

    const-string v15, "FAIL"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/4 v2, -0x1

    invoke-direct {v4, v15, v14, v2}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/twobigears/audio360/EngineError;->FAIL:Lcom/twobigears/audio360/EngineError;

    new-instance v2, Lcom/twobigears/audio360/EngineError;

    const-string v14, "OK"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/4 v4, 0x0

    invoke-direct {v2, v14, v15, v4}, Lcom/twobigears/audio360/EngineError;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/twobigears/audio360/EngineError;->OK:Lcom/twobigears/audio360/EngineError;

    const/16 v14, 0x18

    new-array v14, v14, [Lcom/twobigears/audio360/EngineError;

    aput-object v0, v14, v4

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v12, v14, v0

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v8, v14, v0

    const/16 v0, 0xb

    aput-object v6, v14, v0

    const/16 v0, 0xc

    aput-object v16, v14, v0

    const/16 v0, 0xd

    aput-object v17, v14, v0

    const/16 v0, 0xe

    aput-object v18, v14, v0

    const/16 v0, 0xf

    aput-object v19, v14, v0

    const/16 v0, 0x10

    aput-object v20, v14, v0

    const/16 v0, 0x11

    aput-object v21, v14, v0

    const/16 v0, 0x12

    aput-object v22, v14, v0

    const/16 v0, 0x13

    aput-object v23, v14, v0

    const/16 v0, 0x14

    aput-object v24, v14, v0

    const/16 v0, 0x15

    aput-object v25, v14, v0

    const/16 v0, 0x16

    aput-object v26, v14, v0

    const/16 v0, 0x17

    aput-object v2, v14, v0

    sput-object v14, Lcom/twobigears/audio360/EngineError;->$VALUES:[Lcom/twobigears/audio360/EngineError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/twobigears/audio360/EngineError$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360/EngineError;->swigValue:I

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

    iput p3, p0, Lcom/twobigears/audio360/EngineError;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Lcom/twobigears/audio360/EngineError$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/twobigears/audio360/EngineError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twobigears/audio360/EngineError;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iget p1, p3, Lcom/twobigears/audio360/EngineError;->swigValue:I

    iput p1, p0, Lcom/twobigears/audio360/EngineError;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/twobigears/audio360/EngineError;
    .locals 6

    const-class v0, Lcom/twobigears/audio360/EngineError;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/twobigears/audio360/EngineError;

    array-length v2, v1

    if-ge p0, v2, :cond_0

    if-ltz p0, :cond_0

    aget-object v2, v1, p0

    iget v2, v2, Lcom/twobigears/audio360/EngineError;->swigValue:I

    if-ne v2, p0, :cond_0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget v5, v4, Lcom/twobigears/audio360/EngineError;->swigValue:I

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with value "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twobigears/audio360/EngineError;
    .locals 1

    const-class v0, Lcom/twobigears/audio360/EngineError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twobigears/audio360/EngineError;

    return-object p0
.end method

.method public static values()[Lcom/twobigears/audio360/EngineError;
    .locals 1

    sget-object v0, Lcom/twobigears/audio360/EngineError;->$VALUES:[Lcom/twobigears/audio360/EngineError;

    invoke-virtual {v0}, [Lcom/twobigears/audio360/EngineError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twobigears/audio360/EngineError;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    iget v0, p0, Lcom/twobigears/audio360/EngineError;->swigValue:I

    return v0
.end method
