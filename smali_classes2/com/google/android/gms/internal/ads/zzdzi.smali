.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfza;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzdzi;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdzi;->zza:Lcom/google/android/gms/internal/ads/zzdzi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyo;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
