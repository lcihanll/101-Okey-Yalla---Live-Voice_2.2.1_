.class final Lcom/google/android/gms/games/internal/zzv;
.super Lcom/google/android/gms/games/internal/zzf$zzaq;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$zzaq<",
        "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$zzaq;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzf$zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$zzy;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$zzaq;->setResult(Ljava/lang/Object;)V

    return-void
.end method
