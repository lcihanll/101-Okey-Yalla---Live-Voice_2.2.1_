.class public Lio/agora/rtc/RtcEngineConfig;
.super Ljava/lang/Object;
.source "RtcEngineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/RtcEngineConfig$AreaCode;,
        Lio/agora/rtc/RtcEngineConfig$LogConfig;
    }
.end annotation


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mAreaCode:I

.field public mContext:Landroid/content/Context;

.field public mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

.field public mLogConfig:Lio/agora/rtc/RtcEngineConfig$LogConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    const-string v0, ""

    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mAppId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/RtcEngineConfig;->mAreaCode:I

    new-instance v0, Lio/agora/rtc/RtcEngineConfig$LogConfig;

    invoke-direct {v0}, Lio/agora/rtc/RtcEngineConfig$LogConfig;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mLogConfig:Lio/agora/rtc/RtcEngineConfig$LogConfig;

    return-void
.end method
