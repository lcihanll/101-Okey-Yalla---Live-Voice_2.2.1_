.class public final Lcom/google/android/gms/internal/ads/zzdld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdpt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdoi;

.field private zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpt;Lcom/google/android/gms/internal/ads/zzdoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdld;->zza:Lcom/google/android/gms/internal/ads/zzdpt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static final zzf(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcam;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzcam;->zzx(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcgm;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdld;->zza:Lcom/google/android/gms/internal/ads/zzdpt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzq;->zzc()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdpt;->zza(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzfcr;Lcom/google/android/gms/internal/ads/zzfcv;)Lcom/google/android/gms/internal/ads/zzcgb;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "policy_validator"

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdld;)V

    const-string v3, "/sendMessageToSdk"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgb;->zzad(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdky;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdky;-><init>(Lcom/google/android/gms/internal/ads/zzdld;Landroid/view/WindowManager;Landroid/view/View;)V

    const-string v3, "/hideValidatorOverlay"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgb;->zzad(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbju;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzbju;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbrs;Lcom/google/android/gms/internal/ads/zzedo;Lcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/internal/ads/zzfib;Lcom/google/android/gms/internal/ads/zzcou;)V

    const-string v3, "/open"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgb;->zzad(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdkz;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdkz;-><init>(Lcom/google/android/gms/internal/ads/zzdld;Landroid/view/View;Landroid/view/WindowManager;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const-string p2, "/loadNativeAdPolicyViolations"

    invoke-virtual {p1, v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzdoi;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdla;->zza:Lcom/google/android/gms/internal/ads/zzdla;

    const-string v2, "/showValidatorOverlay"

    invoke-virtual {p2, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    return-object v1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcgb;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdoi;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zzc(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcgb;Ljava/util/Map;)V
    .locals 1

    const-string p4, "Hide native ad policy validator overlay."

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzcat;->zze(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgb;->zzF()Landroid/view/View;

    move-result-object p4

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgb;->zzF()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgb;->zzF()Landroid/view/View;

    move-result-object p4

    invoke-interface {p1, p4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgb;->destroy()V

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method

.method final synthetic zzd(Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "messageType"

    const-string p4, "validatorHtmlLoaded"

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "id"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzb:Lcom/google/android/gms/internal/ads/zzdoi;

    const-string p3, "sendMessageToNativeJs"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdoi;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zze(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzcgb;Ljava/util/Map;)V
    .locals 11

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgb;->zzN()Lcom/google/android/gms/internal/ads/zzcho;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlc;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/ads/zzdlc;-><init>(Lcom/google/android/gms/internal/ads/zzdld;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcho;->zzA(Lcom/google/android/gms/internal/ads/zzchm;)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "validator_width"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzhQ:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdld;->zzf(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "validator_height"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzhR:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdld;->zzf(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "validator_x"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdld;->zzf(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "validator_y"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzdld;->zzf(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzchq;->zzb(II)Lcom/google/android/gms/internal/ads/zzchq;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/zzcgb;->zzag(Lcom/google/android/gms/internal/ads/zzchq;)V

    :try_start_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgb;->zzG()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzhS:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgb;->zzG()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzhT:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbca;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzb()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcgb;->zzF()Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v1, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "orientation"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "2"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_3
    :goto_1
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int/2addr v1, v0

    move v9, v1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlb;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzdlb;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcgb;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_4
    :goto_3
    const-string p1, "overlay_url"

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzcgb;->loadUrl(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
