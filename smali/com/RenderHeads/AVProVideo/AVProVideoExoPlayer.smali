.class public Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;
.super Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;
.source "AVProVideoExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/video/VideoListener;


# static fields
.field private static m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;


# instance fields
.field private m_AdaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

.field private m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

.field private m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private m_EventLogger:Lcom/RenderHeads/AVProVideo/EventLogger;

.field private m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private m_ForcedFileFormat:I

.field private m_LastAbsoluteTime:J

.field private m_MainHandler:Landroid/os/Handler;

.field private m_MediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private m_PendingFileHeader:Ljava/lang/String;

.field private m_PendingFileOffset:J

.field private m_PendingFilePath:Ljava/lang/String;

.field private m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

.field private m_Surface:Landroid/view/Surface;

.field private m_Surface_ToBeReleased:Landroid/view/Surface;

.field private m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private m_UserAgent:Ljava/lang/String;

.field private m_bDebugLogStateChange:Z

.field private m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field m_textureTransform:[F


# direct methods
.method public constructor <init>(IZLjava/util/Random;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;-><init>(IZLjava/util/Random;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->initChannelMap()V

    :cond_0
    return-void
.end method

.method private BuildDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 7

    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_UserAgent:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->GetJsonAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->getDefaultRequestProperties()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/util/Map;)V

    :cond_1
    return-object v6
.end method

.method private BuildMediaSource(Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 9

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_d

    const-string v2, ".zip!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, ".obb!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ForcedFileFormat:I

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_c

    if-eq v1, v3, :cond_b

    if-eq v1, v4, :cond_a

    if-ne v1, v5, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const-string v7, "file:/"

    cmp-long v8, p2, v4

    if-lez v8, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "file"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    new-instance p4, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v1, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSourceFactory;

    invoke-direct {v1, p2, p3}, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSourceFactory;-><init>(J)V

    invoke-direct {p4, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_8
    invoke-direct {p0, v2, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    new-instance p3, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto/16 :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-direct {p0, v3, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    goto/16 :goto_3

    :cond_b
    invoke-direct {p0, v3, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    invoke-direct {p3, p2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    goto/16 :goto_3

    :cond_c
    invoke-direct {p0, v3, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-direct {p3, p2, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    goto/16 :goto_3

    :cond_d
    :goto_1
    const/4 p4, 0x0

    :try_start_0
    const-string v1, "/assets/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "assets:///"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uri = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " | fileOffset = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    new-instance v4, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v5, Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-direct {v5, p2, p3, v6}, Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;-><init>(JLandroid/content/Context;)V

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_e
    :goto_2
    if-nez p4, :cond_f

    new-instance p4, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-virtual {p4, v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v2, Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;

    invoke-direct {v2, p1, p2, p3}, Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;-><init>(Ljava/lang/String;J)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto :goto_3

    :cond_f
    move-object p1, p4

    :goto_3
    return-object p1
.end method

.method private CalculateSeekableTimeRangeForPeriod()[F
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iget-object v2, v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    iget-object v3, v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v3

    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v4, :cond_2

    return-object v1

    :cond_2
    iget-object v4, v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPeriodIndex()I

    move-result v4

    iget v5, v3, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ge v4, v5, :cond_3

    return-object v1

    :cond_3
    move v8, v5

    const-wide/16 v9, 0x0

    :goto_0
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v8, v4, :cond_5

    new-instance v13, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    invoke-virtual {v2, v8, v13}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v13

    iget-wide v14, v13, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v16, v14, v11

    if-nez v16, :cond_4

    const-wide/16 v11, 0x0

    goto :goto_1

    :cond_4
    iget-wide v11, v13, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    :goto_1
    add-long/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    new-instance v8, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    invoke-virtual {v2, v4, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v13, 0x1

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    const-wide/16 v14, 0x0

    goto :goto_3

    :cond_7
    iget-wide v14, v3, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    :goto_3
    sub-long/2addr v9, v14

    iget-wide v14, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v5, v14, v11

    if-nez v5, :cond_8

    const-wide/16 v14, 0x0

    goto :goto_4

    :cond_8
    iget-wide v14, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    sub-long/2addr v14, v9

    :goto_4
    iget-wide v9, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v5, v9, v11

    if-eqz v5, :cond_9

    iget-wide v9, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    if-eqz v4, :cond_a

    iget-wide v6, v3, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    sub-long/2addr v9, v6

    goto :goto_5

    :cond_9
    move-wide v9, v11

    :cond_a
    :goto_5
    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v2, v5, v11

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_6
    if-eqz v4, :cond_c

    iget-wide v4, v3, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_c

    iget-wide v6, v3, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    goto :goto_7

    :cond_c
    const-wide/16 v6, 0x0

    :goto_7
    iget-wide v4, v3, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_d

    iget-wide v2, v3, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    sub-long/2addr v6, v2

    :cond_d
    add-long/2addr v14, v6

    long-to-float v2, v6

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    aput v2, v1, v8

    long-to-float v2, v14

    div-float/2addr v2, v3

    aput v2, v1, v13

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static GetJsonAsMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t parse json:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getChannelMap(I)Lcom/twobigears/audio360/ChannelMap;
    .locals 2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->initChannelMap()V

    :cond_0
    if-ltz p1, :cond_2

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, v0, p1

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/twobigears/audio360/ChannelMap;->TBE_8_2:Lcom/twobigears/audio360/ChannelMap;

    return-object p1
.end method

.method private initChannelMap()V
    .locals 3

    const/16 v0, 0x1b

    :try_start_0
    new-array v0, v0, [Lcom/twobigears/audio360/ChannelMap;

    sput-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x0

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x1

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x2

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_6_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x3

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_6:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x4

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_4_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x5

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x6

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x7

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x8

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x9

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR3:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xa

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xb

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xc

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xd

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL3:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xe

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xf

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL5:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x10

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL6:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x11

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL7:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x12

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_STEREO:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x13

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_CHANNEL0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x14

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_CHANNEL1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x15

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x16

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_9:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x17

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_9_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x18

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_16:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x19

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_16_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x1a

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->STEREO:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "AVProVideo"

    const-string v1, "Failed to initialise channel map"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected BindSurfaceToPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_1

    const-string v0, "AVProVideo"

    const-string v1, "BindSurfaceToPlayer called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public CanPlay()Z
    .locals 2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected CloseVideoOnPlayer()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_LastAbsoluteTime:J

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->_stop()V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    :cond_1
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iput v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileHeader:Ljava/lang/String;

    return-void
.end method

.method protected DeinitializeVideoPlayer()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    :cond_1
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_2
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    if-eqz v2, :cond_3

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    :cond_3
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v1, v2}, Lcom/twobigears/audio360/AudioEngine;->destroySpatDecoderQueue(Lcom/twobigears/audio360/SpatDecoderQueue;)V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {v1}, Lcom/twobigears/audio360/AudioEngine;->delete()V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    :cond_4
    return-void
.end method

.method public GetBufferingProgressPercent()F
    .locals 1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fBufferingProgressPercent:F

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fBufferingProgressPercent:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GetCurrentAbsoluteTimestamp()D
    .locals 8

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    const-wide v4, 0x408f400000000000L    # 1000.0

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_LastAbsoluteTime:J

    :goto_0
    long-to-double v0, v0

    div-double/2addr v0, v4

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[AVProVideoTimestampTest] timeline is null"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-wide v1

    :cond_2
    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    if-gt v6, v3, :cond_3

    return-wide v1

    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-wide v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-nez v3, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_LastAbsoluteTime:J

    goto :goto_0

    :cond_5
    :goto_2
    return-wide v1
.end method

.method public GetCurrentTimeMs()J
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetEstimatedBandwidthUsed()J
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetSeekableTimeRange()[F
    .locals 1

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->CalculateSeekableTimeRangeForPeriod()[F

    move-result-object v0

    return-object v0
.end method

.method protected InitialisePlayer(ZIZ)Z
    .locals 5

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "?"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVProMobileVideo/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Linux;Android "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") ExoPlayerLib/2.8.4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_UserAgent:Ljava/lang/String;

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AdaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v2, Lcom/RenderHeads/AVProVideo/EventLogger;

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, v3}, Lcom/RenderHeads/AVProVideo/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_EventLogger:Lcom/RenderHeads/AVProVideo/EventLogger;

    new-instance v2, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0, p3}, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IZ)V

    if-eqz p1, :cond_1

    new-instance p1, Lcom/twobigears/audio360/EngineInitSettings;

    invoke-direct {p1}, Lcom/twobigears/audio360/EngineInitSettings;-><init>()V

    invoke-virtual {p1}, Lcom/twobigears/audio360/EngineInitSettings;->getAudioSettings()Lcom/twobigears/audio360/AudioSettings;

    move-result-object p3

    const/16 v1, 0x400

    invoke-virtual {p3, v1}, Lcom/twobigears/audio360/AudioSettings;->setBufferSize(I)V

    invoke-virtual {p1}, Lcom/twobigears/audio360/EngineInitSettings;->getAudioSettings()Lcom/twobigears/audio360/AudioSettings;

    move-result-object p3

    const v1, 0x473b8000    # 48000.0f

    invoke-virtual {p3, v1}, Lcom/twobigears/audio360/AudioSettings;->setSampleRate(F)V

    invoke-virtual {p1}, Lcom/twobigears/audio360/EngineInitSettings;->getMemorySettings()Lcom/twobigears/audio360/MemorySettings;

    move-result-object p3

    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Lcom/twobigears/audio360/MemorySettings;->setSpatQueueSizePerChannel(I)V

    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/twobigears/audio360/AudioEngine;->create(Lcom/twobigears/audio360/EngineInitSettings;Landroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {p1}, Lcom/twobigears/audio360/AudioEngine;->createSpatDecoderQueue()Lcom/twobigears/audio360/SpatDecoderQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {p1}, Lcom/twobigears/audio360/AudioEngine;->getOutputLatencyMs()D

    move-result-wide v3

    invoke-direct {p0, p2}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->getChannelMap(I)Lcom/twobigears/audio360/ChannelMap;

    move-result-object p1

    new-instance p2, Lcom/twobigears/audio360exo2/Audio360Sink;

    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-direct {p2, p3, p1, v3, v4}, Lcom/twobigears/audio360exo2/Audio360Sink;-><init>(Lcom/twobigears/audio360/SpatDecoderQueue;Lcom/twobigears/audio360/ChannelMap;D)V

    iput-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    new-instance p1, Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;

    invoke-direct {p1, p2, v2}, Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;-><init>(Lcom/google/android/exoplayer2/audio/AudioSink;Lcom/google/android/exoplayer2/RenderersFactory;)V

    move-object v2, p1

    :cond_1
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    return v0
.end method

.method public IsFinished()Z
    .locals 2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsPaused()Z
    .locals 2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->IsSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public IsSeeking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsSeeking:Z

    return v0
.end method

.method protected OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OpenVideoFromFileInternal | m_ExoPlayer.getPlaybackState() = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | m_VideoState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | m_SurfaceTexture = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AVProVideo"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ForcedFileFormat:I

    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BindSurfaceToPlayer()V

    :cond_2
    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    if-eqz p5, :cond_4

    iget p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v2, 0x2

    if-eq p5, v2, :cond_4

    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p5

    if-ne p5, v0, :cond_4

    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v3, 0x0

    invoke-virtual {p5, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildMediaSource(Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_3

    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_LastAbsoluteTime:J

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p1, p4, v0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "[AVProVideo] error failed to prepare"

    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileHeader:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    iput-object p4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileHeader:Ljava/lang/String;

    :goto_2
    return v0
.end method

.method protected PlayerRenderUpdate()V
    .locals 7

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->UpdateVideoMetadata()V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_2
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    :cond_3
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    :cond_4
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileHeader:Ljava/lang/String;

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ForcedFileFormat:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z

    :cond_6
    return-void
.end method

.method protected PlayerRendererSetup()V
    .locals 7

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileHeader:Ljava/lang/String;

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ForcedFileFormat:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public SetAudioTrack(I)V
    .locals 9

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    if-ge p1, v0, :cond_9

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iCurrentAudioTrackIndex:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    if-ge v2, v5, :cond_9

    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v5

    if-ne v5, v3, :cond_8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    if-eqz v5, :cond_8

    sub-int v6, p1, v4

    iget v7, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lt v6, v7, :cond_4

    iget v5, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v4, v5

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    iget v7, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v7, :cond_6

    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v1, v6, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {p1, v2, v5, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    iput v6, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iCurrentAudioTrackIndex:I

    return-void

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_5
    return-void
.end method

.method public SetFocusEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->enableFocus(ZZ)V

    :cond_0
    return-void
.end method

.method public SetFocusProps(FF)V
    .locals 1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/twobigears/audio360/SpatDecoderQueue;->setFocusProperties(FF)V

    :cond_0
    return-void
.end method

.method public SetFocusRotation(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/twobigears/audio360/TBQuat;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/twobigears/audio360/TBQuat;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setFocusOrientationQuat(Lcom/twobigears/audio360/TBQuat;)V

    :cond_0
    return-void
.end method

.method public SetHeadRotation(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/twobigears/audio360/TBQuat;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/twobigears/audio360/TBQuat;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/AudioEngine;->setListenerRotation(Lcom/twobigears/audio360/TBQuat;)V

    :cond_0
    return-void
.end method

.method public SetLooping(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bLooping:Z

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->UpdateLooping()V

    return-void

    :cond_0
    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->VideoCommand_SetLooping:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public SetPlaybackRate(F)V
    .locals 3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->IsPaused()Z

    move-result p1

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bPlaybackRateSetPaused:Z

    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bPlaybackRateSetPaused:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->Pause()V

    :cond_0
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fPlaybackRate:F

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bPlaybackRateSetPaused:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->Play()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bPlaybackRateSetPaused:Z

    :cond_2
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-direct {v2, p1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fPlaybackRate:F

    :cond_3
    return-void
.end method

.method public SetPositionTrackingEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/twobigears/audio360/TBVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/twobigears/audio360/TBVector;-><init>(FFF)V

    invoke-virtual {v0, p1, v1}, Lcom/twobigears/audio360/AudioEngine;->enablePositionalTracking(ZLcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/EngineError;

    :cond_0
    return-void
.end method

.method protected UpdateAudioVolumes()V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioMuted:Z

    if-nez v1, :cond_0

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioVolume:F

    :cond_0
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_1
    return-void
.end method

.method protected UpdateLooping()V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bLooping:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    :cond_1
    return-void
.end method

.method protected UpdateVideoMetadata()V
    .locals 2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iSourceVideoBitrate:I

    :cond_0
    return-void
.end method

.method protected _pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_pause called : m_VideoState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->suspend()Lcom/twobigears/audio360/EngineError;

    :cond_1
    return-void
.end method

.method protected _play()V
    .locals 3

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_0

    const-string v0, "AVProVideo"

    const-string v1, "_play called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    :goto_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->start()Lcom/twobigears/audio360/EngineError;

    :cond_2
    return-void
.end method

.method protected _seek(I)V
    .locals 3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsSeeking:Z

    :cond_2
    return-void
.end method

.method protected _seekFast(I)V
    .locals 3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsSeeking:Z

    :cond_2
    return-void
.end method

.method protected _stop()V
    .locals 2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setEndOfStream(Z)V

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->suspend()Lcom/twobigears/audio360/EngineError;

    :cond_2
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    :cond_3
    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    :cond_4
    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onLoadError (param version) : error = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMediaPeriodCreated(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    return-void
.end method

.method public onMediaPeriodReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVProVideo error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/16 p1, 0x64

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iLastError:I

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_14

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_11

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    if-eq p2, v1, :cond_0

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVProVideo video state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AVProVideo video state: ended"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/16 p2, 0x8

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    goto/16 :goto_6

    :cond_3
    iget-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p2, :cond_4

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AVProVideo video state: ready | m_VideoState: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | m_bIsBuffering: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_10

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "AVProVideo video state: has pending file path"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-lt p2, v2, :cond_10

    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-ne p2, v2, :cond_6

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    :goto_1
    iput v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eqz p2, :cond_e

    iget v4, p2, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    iget v4, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iput v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iSourceVideoBitrate:I

    iget v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    iget v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    iput v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_DisplayRate_FrameRate:F

    :cond_7
    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_DurationMs:J

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasVideo:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasAudio:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "videoFormat.rotationDegrees = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p2, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_9

    iget v1, p2, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_a

    :cond_9
    const/4 p1, 0x1

    :cond_a
    if-eqz p1, :cond_c

    iget p1, p2, Lcom/google/android/exoplayer2/Format;->height:I

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->width:I

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    if-lez v1, :cond_c

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    if-lez v1, :cond_c

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    if-ne p1, v1, :cond_b

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    if-eq p2, v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v2, 0x6

    :goto_4
    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_e
    if-eqz v1, :cond_10

    iget p2, v1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_DisplayRate_FrameRate:F

    iget p2, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iSourceVideoBitrate:I

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasVideo:Z

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasAudio:Z

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_DurationMs:J

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    const/4 v2, 0x6

    :goto_5
    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_10
    :goto_6
    return-void

    :cond_11
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_12

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "AVProVideo video state: buffering"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-eq p1, v2, :cond_13

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    :cond_13
    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    return-void

    :cond_14
    iget-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p2, :cond_15

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AVProVideo video state: idle"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onReadingStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsSeeking:Z

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 3

    const/4 p1, 0x0

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of tracks in source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v2, v1

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number of audio tracks in source: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iCurrentAudioTrackIndex:I

    if-gez p2, :cond_5

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iCurrentAudioTrackIndex:I

    :cond_5
    :goto_2
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2

    iget p4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    if-ne p4, p1, :cond_1

    iget p4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AVProVideo changing video size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 p4, 0x5a

    const/4 v0, 0x6

    if-eq p3, p4, :cond_4

    const/16 p4, 0xb4

    if-eq p3, p4, :cond_3

    const/16 p4, 0x10e

    if-eq p3, p4, :cond_2

    iget-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p3, :cond_5

    const-string p3, "AVProVideo"

    const-string p4, "NO texture transform set"

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-array p3, v0, [F

    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_textureTransform:[F

    iget-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p3, :cond_5

    const-string p3, "AVProVideo"

    const-string p4, "Texture transform set for 270 degrees"

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-array p3, v0, [F

    fill-array-data p3, :array_1

    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_textureTransform:[F

    iget-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p3, :cond_5

    const-string p3, "AVProVideo"

    const-string p4, "Texture transform set for 180 degrees"

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-array p3, v0, [F

    fill-array-data p3, :array_2

    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_textureTransform:[F

    iget-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p3, :cond_5

    const-string p3, "AVProVideo"

    const-string p4, "Texture transform set for 90 degrees"

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasVideo:Z

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method
