.class final Lcom/google/android/gms/games/internal/zzf$zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzh"
.end annotation


# instance fields
.field private final zzdw:Lcom/google/android/gms/common/api/Status;

.field private final zzdz:Lcom/google/android/gms/games/video/CaptureState;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/CaptureState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$zzh;->zzdw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$zzh;->zzdz:Lcom/google/android/gms/games/video/CaptureState;

    return-void
.end method


# virtual methods
.method public final getCaptureState()Lcom/google/android/gms/games/video/CaptureState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzh;->zzdz:Lcom/google/android/gms/games/video/CaptureState;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$zzh;->zzdw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
