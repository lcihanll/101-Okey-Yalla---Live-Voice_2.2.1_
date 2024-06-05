.class public final Lcom/google/android/gms/internal/ads/zzfeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfeh;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/ads/internal/client/zzcl;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzcl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzc:Lcom/google/android/gms/ads/internal/client/zzcl;

    return-void
.end method

.method static zza(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzcl;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.client.LiteSdkInfo"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzck;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzcl;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    :goto_0
    const-string v0, "Failed to retrieve lite SDK info."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzcat;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfeh;
    .locals 7

    const-class v0, Lcom/google/android/gms/internal/ads/zzfeh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfeh;->zza:Lcom/google/android/gms/internal/ads/zzfeh;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbed;->zzb:Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdn;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const-wide/32 v3, 0xdee0338

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfeh;->zza(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzcl;

    move-result-object v5

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfeh;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/zzfeh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzcl;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfeh;->zza:Lcom/google/android/gms/internal/ads/zzfeh;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final zzg()Lcom/google/android/gms/ads/internal/client/zzen;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzc:Lcom/google/android/gms/ads/internal/client/zzcl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzcl;->getLiteSdkVersion()Lcom/google/android/gms/ads/internal/client/zzen;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzbox;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbox;

    return-object v0
.end method

.method public final zzc(IZI)Lcom/google/android/gms/internal/ads/zzcaz;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzb:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzD(Landroid/content/Context;)Z

    move-result p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcaz;

    const v0, 0xdee0270

    const/4 v1, 0x1

    invoke-direct {p2, v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzcaz;-><init>(IIZZ)V

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbed;->zzc:Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbdn;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfeh;->zzg()Lcom/google/android/gms/ads/internal/client/zzen;

    move-result-object p3

    if-nez p3, :cond_1

    return-object p2

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcaz;

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/client/zzen;->zza()I

    move-result p3

    invoke-direct {p2, v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzcaz;-><init>(IIZZ)V

    return-object p2
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfeh;->zzg()Lcom/google/android/gms/ads/internal/client/zzen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzen;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbox;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbed;->zza:Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdn;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzc:Lcom/google/android/gms/ads/internal/client/zzcl;

    if-nez v0, :cond_0

    :catch_0
    move-object v0, v1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzcl;->getAdapterCreator()Lcom/google/android/gms/internal/ads/zzbox;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzfeg;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeh;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfeg;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
