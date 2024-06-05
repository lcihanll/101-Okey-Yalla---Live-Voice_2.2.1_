.class public abstract Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;
.super Ljava/lang/Object;
.source "AVProVideoPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;
    }
.end annotation


# static fields
.field protected static final ErrorCode_DecodeFailed:I = 0xc8

.field protected static final ErrorCode_LoadFailed:I = 0x64

.field protected static final ErrorCode_None:I = 0x0

.field protected static final Format_Dash:I = 0x2

.field protected static final Format_HLS:I = 0x1

.field protected static final Format_SS:I = 0x3

.field protected static final Format_Unknown:I = 0x0

.field protected static VideoCommand_AudioVolumes:I = 0x4

.field protected static VideoCommand_Pause:I = 0x1

.field protected static VideoCommand_Play:I = 0x0

.field protected static VideoCommand_Seek:I = 0x3

.field protected static VideoCommand_SeekFast:I = 0x6

.field protected static VideoCommand_SetLooping:I = 0x5

.field protected static VideoCommand_Stop:I = 0x2

.field protected static final VideoState_Buffering:I = 0x4

.field protected static final VideoState_Finished:I = 0x8

.field protected static final VideoState_Idle:I = 0x0

.field protected static final VideoState_Opening:I = 0x1

.field protected static final VideoState_Paused:I = 0x7

.field protected static final VideoState_Playing:I = 0x5

.field protected static final VideoState_Prepared:I = 0x3

.field protected static final VideoState_Preparing:I = 0x2

.field protected static final VideoState_Stopped:I = 0x6

.field protected static s_bCompressedWatermarkDataGood:Z = false


# instance fields
.field protected final _mutex:Ljava/util/concurrent/locks/ReentrantLock;

.field protected m_AudioMuted:Z

.field protected m_AudioPan:F

.field protected m_AudioVolume:F

.field protected m_CommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;",
            ">;"
        }
    .end annotation
.end field

.field protected m_Context:Landroid/content/Context;

.field protected m_DisplayRate_FrameRate:F

.field protected m_DisplayRate_LastSystemTimeMS:J

.field protected m_DisplayRate_NumberFrames:J

.field protected m_DurationMs:J

.field protected m_ExtractWaitTimeout:I

.field protected m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected m_FrameArrivalThreadID:J

.field protected m_FrameCount:I

.field protected m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

.field protected m_GlRender_Watermark:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

.field protected m_Height:I

.field protected m_Random:Ljava/util/Random;

.field protected m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected m_TextureTimeStamp:J

.field protected m_VideoState:I

.field protected m_WatermarkPosition:Landroid/graphics/Point;

.field protected m_WatermarkPositionRunnable:Ljava/lang/Runnable;

.field protected m_WatermarkScale:F

.field protected m_WatermarkSizeHandler:Landroid/os/Handler;

.field protected m_Width:I

.field protected m_bCanUseGLBindVertexArray:Z

.field protected m_bDeinitialiseFlagged:Z

.field protected m_bDeinitialised:Z

.field protected m_bIsBuffering:Z

.field protected m_bIsSeeking:Z

.field protected m_bIsStream:Z

.field protected m_bLooping:Z

.field protected m_bPlaybackRateSetPaused:Z

.field protected m_bShowPosterFrame:Z

.field protected m_bSourceHasAudio:Z

.field protected m_bSourceHasSubtitles:Z

.field protected m_bSourceHasTimedText:Z

.field protected m_bSourceHasVideo:Z

.field protected m_bUseFastOesPath:Z

.field protected m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected m_bWatermarkDataGood:Z

.field protected m_bWatermarked:Z

.field protected m_fBufferingProgressPercent:F

.field protected m_fPlaybackRate:F

.field protected m_fSourceVideoFrameRate:F

.field protected m_iCurrentAudioTrackIndex:I

.field protected m_iLastError:I

.field protected m_iNumberAudioTracks:I

.field protected m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected m_iOpenGLVersion:I

.field protected m_iPlayerIndex:I

.field protected m_iSourceVideoBitrate:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZLjava/util/Random;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarked:Z

    if-eqz p2, :cond_0

    sget-boolean p2, Lcom/RenderHeads/AVProVideo/AVProMobileWMImage;->s_bImagePrepared:Z

    if-nez p2, :cond_0

    invoke-static {}, Lcom/RenderHeads/AVProVideo/AVProMobileWMImage;->PrepareImage()Z

    move-result p2

    sput-boolean p2, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->s_bCompressedWatermarkDataGood:Z

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarkDataGood:Z

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iPlayerIndex:I

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bUseFastOesPath:Z

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bShowPosterFrame:Z

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Width:I

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Height:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DurationMs:J

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bLooping:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fPlaybackRate:F

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameCount:I

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bIsStream:Z

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bIsBuffering:Z

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bIsSeeking:Z

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioVolume:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioPan:F

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioMuted:Z

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fBufferingProgressPercent:F

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_TextureTimeStamp:J

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iCurrentAudioTrackIndex:I

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasVideo:Z

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasAudio:Z

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberAudioTracks:I

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasTimedText:Z

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasSubtitles:Z

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fSourceVideoFrameRate:F

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iSourceVideoBitrate:I

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_FrameRate:F

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_NumberFrames:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_LastSystemTimeMS:J

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bDeinitialiseFlagged:Z

    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bDeinitialised:Z

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iLastError:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x32

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_ExtractWaitTimeout:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameArrivalThreadID:J

    if-eqz p3, :cond_1

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    :cond_1
    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Random:Ljava/util/Random;

    return-void
.end method

.method private ChangeWatermarkPosition()V
    .locals 4

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    const/4 v3, 0x0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkScale:F

    return-void
.end method

.method private CreateAndBindSinkTexture(I)V
    .locals 1

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->BindSurfaceToPlayer()V

    return-void
.end method

.method private RemoveDuplicateCommand(I)V
    .locals 3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;

    iget v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private UpdateCommandQueue()V
    .locals 3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;

    iget v1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    sget v2, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Play:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_play()V

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    sget v2, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Pause:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_pause()V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    sget v2, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Stop:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_stop()V

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    sget v2, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Seek:I

    if-ne v1, v2, :cond_4

    iget v0, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_intValue:I

    invoke-virtual {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_seek(I)V

    goto :goto_0

    :cond_4
    iget v1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    sget v2, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_SeekFast:I

    if-ne v1, v2, :cond_5

    iget v0, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_intValue:I

    invoke-virtual {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_seekFast(I)V

    goto :goto_0

    :cond_5
    iget v1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    sget v2, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_AudioVolumes:I

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->UpdateAudioVolumes()V

    goto :goto_0

    :cond_6
    iget v0, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    sget v1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_SetLooping:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->UpdateLooping()V

    goto :goto_0

    :cond_7
    return-void
.end method

.method private UpdateDisplayFrameRate(I)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_LastSystemTimeMS:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_NumberFrames:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_NumberFrames:J

    const-wide/16 v6, 0x1f4

    cmp-long p1, v2, v6

    if-ltz p1, :cond_0

    long-to-float p1, v4

    long-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    mul-float v2, v2, v3

    div-float/2addr p1, v2

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_FrameRate:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_NumberFrames:J

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_LastSystemTimeMS:J

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->ChangeWatermarkPosition()V

    return-void
.end method


# virtual methods
.method protected AddVideoCommandInt(II)V
    .locals 1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;

    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;-><init>(Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;)V

    iput p1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    iput p2, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_intValue:I

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->UpdateCommandQueue()V

    :cond_0
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->_mutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method protected abstract BindSurfaceToPlayer()V
.end method

.method public abstract CanPlay()Z
.end method

.method public CloseVideo()V
    .locals 4

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->CloseVideoOnPlayer()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Width:I

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Height:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DurationMs:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fPlaybackRate:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iCurrentAudioTrackIndex:I

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasVideo:Z

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasAudio:Z

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberAudioTracks:I

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasTimedText:Z

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasSubtitles:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fSourceVideoFrameRate:F

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_TextureTimeStamp:J

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameCount:I

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fBufferingProgressPercent:F

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iLastError:I

    return-void
.end method

.method protected abstract CloseVideoOnPlayer()V
.end method

.method public Deinitialise()V
    .locals 1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->CloseVideo()V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_CommandQueue:Ljava/util/Queue;

    :cond_0
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->DeinitializeVideoPlayer()V

    return-void
.end method

.method public DeinitialiseRender()V
    .locals 3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->Destroy()V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Watermark:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->Destroy()V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Watermark:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_2
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkSizeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPositionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkSizeHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPositionRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bDeinitialised:Z

    return-void
.end method

.method protected abstract DeinitializeVideoPlayer()V
.end method

.method public GetAudioPan()F
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioPan:F

    return v0
.end method

.method public abstract GetBufferingProgressPercent()F
.end method

.method public abstract GetCurrentAbsoluteTimestamp()D
.end method

.method public GetCurrentAudioTrackIndex()I
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iCurrentAudioTrackIndex:I

    return v0
.end method

.method public abstract GetCurrentTimeMs()J
.end method

.method public GetCurrentVideoTrackBitrate()I
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iSourceVideoBitrate:I

    return v0
.end method

.method public GetDeinitialised()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bDeinitialised:Z

    return v0
.end method

.method public GetDisplayRate()F
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DisplayRate_FrameRate:F

    return v0
.end method

.method public GetDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DurationMs:J

    return-wide v0
.end method

.method public GetEstimatedBandwidthUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public GetFrameCount()I
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameCount:I

    return v0
.end method

.method public GetHeight()I
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Height:I

    return v0
.end method

.method public GetLastErrorCode()I
    .locals 2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iLastError:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iLastError:I

    return v0
.end method

.method public GetNumberAudioTracks()I
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberAudioTracks:I

    return v0
.end method

.method public GetPlaybackRate()F
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fPlaybackRate:F

    return v0
.end method

.method public GetPlayerIndex()I
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iPlayerIndex:I

    return v0
.end method

.method public abstract GetSeekableTimeRange()[F
.end method

.method public GetSourceVideoFrameRate()F
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fSourceVideoFrameRate:F

    return v0
.end method

.method public GetTextureHandle()I
    .locals 3

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->GetGlTextureHandle(Z)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public GetTextureTimeStamp()J
    .locals 4

    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_TextureTimeStamp:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public GetTextureTransform()[F
    .locals 13

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bUseFastOesPath:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Matrix "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget v7, v0, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget v8, v0, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    aget v10, v0, v9

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x5

    aget v11, v0, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x6

    aget v12, v0, v11

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x7

    aget v12, v0, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x8

    aget v12, v0, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x9

    aget v12, v0, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    aget v12, v0, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xb

    aget v12, v0, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xc

    aget v8, v0, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xd

    aget v8, v0, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xe

    aget v8, v0, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    aget v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array v1, v11, [F

    aget v2, v0, v3

    aput v2, v1, v3

    aget v2, v0, v5

    aput v2, v1, v5

    aget v2, v0, v9

    neg-float v2, v2

    aput v2, v1, v6

    aget v0, v0, v10

    neg-float v0, v0

    aput v0, v1, v7

    const/4 v0, 0x0

    aput v0, v1, v9

    aput v0, v1, v10

    :cond_1
    :goto_0
    return-object v1
.end method

.method public GetVolume()F
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioVolume:F

    return v0
.end method

.method public GetWidth()I
    .locals 1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Width:I

    return v0
.end method

.method public HasAudio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasAudio:Z

    return v0
.end method

.method public HasSubtitles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasSubtitles:Z

    return v0
.end method

.method public HasTimedText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasTimedText:Z

    return v0
.end method

.method public HasVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasVideo:Z

    return v0
.end method

.method public Initialise(Landroid/content/Context;ZZIZ)Z
    .locals 2

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarked:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->s_bCompressedWatermarkDataGood:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/RenderHeads/AVProVideo/AVProMobileWMImage;->CheckWatermarkData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarkDataGood:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPosition:Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarked:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->ChangeWatermarkPosition()V

    new-instance v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;-><init>(Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bShowPosterFrame:Z

    invoke-virtual {p0, p2, p1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->SetPlayerOptions(ZZ)V

    invoke-virtual {p0, p3, p4, p5}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->InitialisePlayer(ZIZ)Z

    move-result p1

    return p1
.end method

.method protected abstract InitialisePlayer(ZIZ)Z
.end method

.method public IsBuffering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bIsBuffering:Z

    return v0
.end method

.method public abstract IsFinished()Z
.end method

.method public IsLooping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bLooping:Z

    return v0
.end method

.method public IsMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioMuted:Z

    return v0
.end method

.method public abstract IsPaused()Z
.end method

.method public abstract IsPlaying()Z
.end method

.method public abstract IsSeeking()Z
.end method

.method public MuteAudio(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioMuted:Z

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->UpdateAudioVolumes()V

    return-void

    :cond_0
    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_AudioVolumes:I

    invoke-direct {p0, p1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_AudioVolumes:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public OpenVideoFromFile(Ljava/lang/String;JLjava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->CloseVideo()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iCurrentAudioTrackIndex:I

    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasVideo:Z

    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasAudio:Z

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberAudioTracks:I

    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasTimedText:Z

    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasSubtitles:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fSourceVideoFrameRate:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_DurationMs:J

    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameCount:I

    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bIsStream:Z

    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bIsBuffering:Z

    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bIsSeeking:Z

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_fBufferingProgressPercent:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenVideoFromFile: m_iNumberFramesAvailable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p5}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected abstract OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z
.end method

.method public Pause()V
    .locals 2

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Stop:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Play:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Pause:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Pause:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public Play()V
    .locals 2

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Stop:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Play:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Pause:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Play:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method protected PlayerRenderUpdate()V
    .locals 0

    return-void
.end method

.method protected PlayerRendererSetup()V
    .locals 0

    return-void
.end method

.method public Render()Z
    .locals 12

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bDeinitialiseFlagged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarked:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->s_bCompressedWatermarkDataGood:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarkDataGood:Z

    if-eqz v0, :cond_b

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->DestroyRenderTarget()V

    :cond_2
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    const/4 v0, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->DestroyRenderTarget()V

    iget-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bUseFastOesPath:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    iget v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Width:I

    iget v8, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Height:I

    invoke-virtual {v2, v7, v8}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->CreateRenderTarget(II)V

    :cond_4
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bIsStream:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    if-lt v2, v5, :cond_5

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_5

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    :cond_5
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_a

    if-lez v2, :cond_a

    iget v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Width:I

    if-lez v7, :cond_6

    iget-boolean v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasVideo:Z

    if-nez v7, :cond_7

    :cond_6
    iget-boolean v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bSourceHasAudio:Z

    if-eqz v7, :cond_a

    :cond_7
    iget-boolean v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bUseFastOesPath:Z

    if-eqz v7, :cond_8

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_TextureTimeStamp:J

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    invoke-virtual {v7}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->StartRender()V

    iget-object v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    iget-object v8, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->Blit(Landroid/graphics/SurfaceTexture;[F)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_TextureTimeStamp:J

    iget-boolean v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarked:Z

    if-eqz v7, :cond_9

    const/16 v7, 0x10

    new-array v7, v7, [F

    iget v8, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkScale:F

    aput v8, v7, v1

    const/4 v10, 0x0

    aput v10, v7, v6

    const/4 v11, 0x2

    aput v10, v7, v11

    aput v10, v7, v5

    aput v10, v7, v3

    neg-float v3, v8

    aput v3, v7, v4

    aput v10, v7, v0

    const/4 v0, 0x7

    aput v10, v7, v0

    const/16 v0, 0x8

    aput v10, v7, v0

    const/16 v0, 0x9

    aput v10, v7, v0

    const/16 v0, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v0

    const/16 v0, 0xb

    aput v10, v7, v0

    const/16 v0, 0xc

    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v7, v0

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    aput v4, v7, v0

    const/16 v0, 0xe

    aput v10, v7, v0

    const/16 v0, 0xf

    aput v3, v7, v0

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Watermark:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    invoke-virtual {v0, v9, v7}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->Blit(Landroid/graphics/SurfaceTexture;[F)J

    :cond_9
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    invoke-virtual {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->EndRender()V

    :goto_0
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameCount:I

    invoke-direct {p0, v2}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->UpdateDisplayFrameRate(I)V

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x1

    :cond_a
    monitor-exit p0

    :cond_b
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RendererSetup(I)V
    .locals 9

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bDeinitialiseFlagged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iOpenGLVersion:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bCanUseGLBindVertexArray:Z

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    if-nez p1, :cond_2

    new-instance v2, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    invoke-direct {v2}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;-><init>()V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bCanUseGLBindVertexArray:Z

    iget-boolean v8, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bUseFastOesPath:Z

    invoke-virtual/range {v2 .. v8}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->Setup(II[BZZZ)V

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Video:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    invoke-virtual {p1, v1}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->GetGlTextureHandle(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->CreateAndBindSinkTexture(I)V

    :cond_2
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarked:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Watermark:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    if-nez p1, :cond_3

    new-instance v0, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    invoke-direct {v0}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;-><init>()V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_GlRender_Watermark:Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;

    const/16 v1, 0xfe

    const/16 v2, 0x8d

    sget-object v3, Lcom/RenderHeads/AVProVideo/AVProMobileWMImage;->s_aImageData:[B

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bCanUseGLBindVertexArray:Z

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo_GlRender;->Setup(II[BZZZ)V

    :cond_3
    return-void
.end method

.method public Seek(I)V
    .locals 1

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Seek:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_SeekFast:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Seek:I

    invoke-virtual {p0, v0, p1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public SeekFast(I)V
    .locals 1

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Seek:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_SeekFast:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_SeekFast:I

    invoke-virtual {p0, v0, p1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public SetAudioPan(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioPan:F

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->UpdateAudioVolumes()V

    return-void

    :cond_0
    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_AudioVolumes:I

    invoke-direct {p0, p1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_AudioVolumes:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public abstract SetAudioTrack(I)V
.end method

.method public SetDeinitialiseFlagged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bDeinitialiseFlagged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bDeinitialised:Z

    return-void
.end method

.method public abstract SetFocusEnabled(Z)V
.end method

.method public abstract SetFocusProps(FF)V
.end method

.method public abstract SetFocusRotation(FFFF)V
.end method

.method public abstract SetHeadRotation(FFFF)V
.end method

.method public abstract SetLooping(Z)V
.end method

.method public abstract SetPlaybackRate(F)V
.end method

.method public SetPlayerOptions(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bWatermarked:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bUseFastOesPath:Z

    :cond_0
    iput-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bShowPosterFrame:Z

    return-void
.end method

.method public abstract SetPositionTrackingEnabled(Z)V
.end method

.method protected SetShowPosterFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_bShowPosterFrame:Z

    return-void
.end method

.method public SetVolume(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_AudioVolume:F

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->UpdateAudioVolumes()V

    return-void

    :cond_0
    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_AudioVolumes:I

    invoke-direct {p0, p1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_AudioVolumes:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public StartExtractFrame()Z
    .locals 5

    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameArrivalThreadID:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1
.end method

.method public Stop()V
    .locals 2

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Stop:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Play:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Pause:I

    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->RemoveDuplicateCommand(I)V

    sget v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->VideoCommand_Stop:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public Update()V
    .locals 0

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->PlayerRenderUpdate()V

    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->UpdateCommandQueue()V

    return-void
.end method

.method protected abstract UpdateAudioVolumes()V
.end method

.method protected abstract UpdateLooping()V
.end method

.method protected abstract UpdateVideoMetadata()V
.end method

.method public WaitForExtract()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_ExtractWaitTimeout:I

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v3, 0xa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public WaitForNewFrame()V
    .locals 7

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameCount:I

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int v4, v0, v1

    iget v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameCount:I

    if-lt v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    iget v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_ExtractWaitTimeout:I

    if-ge v3, v5, :cond_0

    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iPlayerIndex:I

    invoke-static {v3}, Lcom/RenderHeads/AVProVideo/AVProMobileVideo;->RenderPlayer(I)V

    const-wide/16 v5, 0xa

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Extracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected abstract _pause()V
.end method

.method protected abstract _play()V
.end method

.method protected abstract _seek(I)V
.end method

.method protected abstract _seekFast(I)V
.end method

.method protected abstract _stop()V
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_FrameArrivalThreadID:J

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_iNumberFramesAvailable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
