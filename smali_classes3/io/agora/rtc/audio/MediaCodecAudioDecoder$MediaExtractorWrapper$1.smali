.class Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;
.super Ljava/lang/Object;
.source "MediaCodecAudioDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->setDataSource(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

.field final synthetic val$isAssetsUrl:Z

.field final synthetic val$isDocument:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;ZLjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$isDocument",
            "val$url",
            "val$isAssetsUrl"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    iput-boolean p2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->val$isAssetsUrl:Z

    iput-object p3, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->val$url:Ljava/lang/String;

    iput-boolean p4, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->val$isDocument:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource in thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-static {v1}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$100(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodec Audio Decoder"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->val$isAssetsUrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    iget-object v0, v0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->this$0:Lio/agora/rtc/audio/MediaCodecAudioDecoder;

    invoke-static {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->access$200(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    iget-object v0, v0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->this$0:Lio/agora/rtc/audio/MediaCodecAudioDecoder;

    invoke-static {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->access$200(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->val$url:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-static {v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$300(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->val$isDocument:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    iget-object v0, v0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->this$0:Lio/agora/rtc/audio/MediaCodecAudioDecoder;

    invoke-static {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->access$200(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    iget-object v2, v2, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->this$0:Lio/agora/rtc/audio/MediaCodecAudioDecoder;

    invoke-static {v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder;->access$200(Lio/agora/rtc/audio/MediaCodecAudioDecoder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-static {v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$300(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-static {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$300(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Landroid/media/MediaExtractor;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$402(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "setDataSource fail"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper$1;->this$1:Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;

    invoke-static {v0}, Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;->access$500(Lio/agora/rtc/audio/MediaCodecAudioDecoder$MediaExtractorWrapper;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
