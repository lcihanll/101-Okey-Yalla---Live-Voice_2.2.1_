.class public abstract Lcom/google/android/gms/internal/ads/zzbur;
.super Lcom/google/android/gms/internal/ads/zzaun;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbus;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaun;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzbJ(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p4, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 v1, 0x4

    const-string v2, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    if-eq p1, v1, :cond_9

    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbvc;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvc;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbva;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbva;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzauo;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbvg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzauo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbvc;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvc;

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbva;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbva;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzauo;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbur;->zze(Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzbvc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbvg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzauo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbvc;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvc;

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbva;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbva;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzauo;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzf(Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzbvc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbvg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzauo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbvc;

    if-eqz v2, :cond_b

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvc;

    goto :goto_3

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbva;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbva;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzauo;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzg(Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzbvc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbuh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzauo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuh;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbut;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbut;

    :cond_e
    :goto_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzauo;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    :cond_f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbuh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzauo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuh;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzauo;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzauo;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_5
    return p4
.end method
