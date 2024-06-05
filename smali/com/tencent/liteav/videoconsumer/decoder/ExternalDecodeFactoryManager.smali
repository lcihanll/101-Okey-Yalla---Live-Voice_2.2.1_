.class public Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/tencent/liteav/videoconsumer/decoder/r;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/tencent/liteav/videoconsumer/decoder/r;)V
    .locals 2

    const-class v0, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->b:Ljava/lang/Boolean;

    sput-object p0, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->a:Lcom/tencent/liteav/videoconsumer/decoder/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createH265Decoder()J
    .locals 3

    const-class v0, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->a:Lcom/tencent/liteav/videoconsumer/decoder/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/tencent/liteav/videoconsumer/decoder/r;->a()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized destroyH265Decoder(J)V
    .locals 3

    const-class v0, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->a:Lcom/tencent/liteav/videoconsumer/decoder/r;

    if-nez v1, :cond_0

    const-string v1, "ExternalDecodeFactoryManager"

    const-string v2, "DestroyHevcDecoder sDecoderFactory is null: "

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1, p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/r;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isExternalDecoderHevcSupport()Z
    .locals 6

    const-class v0, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->a:Lcom/tencent/liteav/videoconsumer/decoder/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    sget-object v2, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :cond_1
    :try_start_2
    invoke-interface {v1}, Lcom/tencent/liteav/videoconsumer/decoder/r;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->a:Lcom/tencent/liteav/videoconsumer/decoder/r;

    invoke-interface {v3, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/r;->a(J)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->b:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->b:Ljava/lang/Boolean;

    :goto_0
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
