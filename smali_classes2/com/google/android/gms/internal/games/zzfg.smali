.class public final Lcom/google/android/gms/internal/games/zzfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# instance fields
.field public bottom:I

.field public gravity:I

.field public left:I

.field public right:I

.field public top:I

.field public zzjn:Landroid/os/IBinder;

.field public zzjo:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->zzjo:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->left:I

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->top:I

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->right:I

    iput p2, p0, Lcom/google/android/gms/internal/games/zzfg;->bottom:I

    iput p1, p0, Lcom/google/android/gms/internal/games/zzfg;->gravity:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfg;->zzjn:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final zzce()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->gravity:I

    const-string v2, "popupLocationInfo.gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->zzjo:I

    const-string v2, "popupLocationInfo.displayId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->left:I

    const-string v2, "popupLocationInfo.left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->top:I

    const-string v2, "popupLocationInfo.top"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->right:I

    const-string v2, "popupLocationInfo.right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfg;->bottom:I

    const-string v2, "popupLocationInfo.bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
