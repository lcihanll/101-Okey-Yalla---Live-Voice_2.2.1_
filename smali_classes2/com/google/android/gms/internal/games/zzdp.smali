.class final synthetic Lcom/google/android/gms/internal/games/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzge:Lcom/google/android/gms/games/snapshot/Snapshot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzdp;->zzge:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdp;->zzge:Lcom/google/android/gms/games/snapshot/Snapshot;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->zza(Lcom/google/android/gms/games/snapshot/Snapshot;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
