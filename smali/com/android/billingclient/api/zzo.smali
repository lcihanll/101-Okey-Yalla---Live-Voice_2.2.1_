.class final Lcom/android/billingclient/api/zzo;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@5.1.0"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/zzp;

.field private final zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private final zzc:Lcom/android/billingclient/api/zzbf;

.field private final zzd:Lcom/android/billingclient/api/zzc;

.field private zze:Z


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/zzp;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzc;Lcom/android/billingclient/api/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zza:Lcom/android/billingclient/api/zzp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzo;->zzd:Lcom/android/billingclient/api/zzc;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/zzbf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzp;Lcom/android/billingclient/api/zzbf;Lcom/android/billingclient/api/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zza:Lcom/android/billingclient/api/zzp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zzd:Lcom/android/billingclient/api/zzc;

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/zzbf;

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/zzo;)Lcom/android/billingclient/api/zzbf;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzo;->zzc:Lcom/android/billingclient/api/zzbf;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/zzo;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "BillingBroadcastManager"

    if-nez p1, :cond_1

    const-string p1, "Bundle is null."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/android/billingclient/api/zzbc;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const-string p2, "IS_FIRST_PARTY_PURCHASE"

    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-interface {p2, v2, p1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "Received purchase and no valid listener registered."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzl()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/android/billingclient/api/zzo;->zzd:Lcom/android/billingclient/api/zzc;

    if-nez p2, :cond_6

    const-string p1, "AlternativeBillingListener is null."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    sget-object p2, Lcom/android/billingclient/api/zzbc;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzl()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_6
    const-string p2, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "products"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_8

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v6, Lcom/android/billingclient/api/zze;

    invoke-direct {v6, v5, v0}, Lcom/android/billingclient/api/zze;-><init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzd;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/android/billingclient/api/zzo;->zzd:Lcom/android/billingclient/api/zzc;

    invoke-interface {p1}, Lcom/android/billingclient/api/zzc;->zza()V

    return-void

    :catch_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v4

    const-string p1, "Error when parsing invalid alternative choice data: [%s]"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    sget-object p2, Lcom/android/billingclient/api/zzbc;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzl()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_9
    const-string p1, "Couldn\'t find alternative billing user choice data in bundle."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    sget-object p2, Lcom/android/billingclient/api/zzbc;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzl()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method public final zzc(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzo;->zze:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzo;->zza:Lcom/android/billingclient/api/zzp;

    invoke-static {v0}, Lcom/android/billingclient/api/zzp;->zza(Lcom/android/billingclient/api/zzp;)Lcom/android/billingclient/api/zzo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzo;->zze:Z

    :cond_0
    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzo;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzo;->zza:Lcom/android/billingclient/api/zzp;

    invoke-static {v0}, Lcom/android/billingclient/api/zzp;->zza(Lcom/android/billingclient/api/zzp;)Lcom/android/billingclient/api/zzo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzo;->zze:Z

    return-void

    :cond_0
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
