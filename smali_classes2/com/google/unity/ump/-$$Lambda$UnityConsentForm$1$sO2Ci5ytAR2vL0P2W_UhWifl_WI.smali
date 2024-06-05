.class public final synthetic Lcom/google/unity/ump/-$$Lambda$UnityConsentForm$1$sO2Ci5ytAR2vL0P2W_UhWifl_WI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ump/UnityConsentForm$1;

.field public final synthetic f$1:Lcom/google/android/ump/FormError;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ump/UnityConsentForm$1;Lcom/google/android/ump/FormError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ump/-$$Lambda$UnityConsentForm$1$sO2Ci5ytAR2vL0P2W_UhWifl_WI;->f$0:Lcom/google/unity/ump/UnityConsentForm$1;

    iput-object p2, p0, Lcom/google/unity/ump/-$$Lambda$UnityConsentForm$1$sO2Ci5ytAR2vL0P2W_UhWifl_WI;->f$1:Lcom/google/android/ump/FormError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/unity/ump/-$$Lambda$UnityConsentForm$1$sO2Ci5ytAR2vL0P2W_UhWifl_WI;->f$0:Lcom/google/unity/ump/UnityConsentForm$1;

    iget-object v1, p0, Lcom/google/unity/ump/-$$Lambda$UnityConsentForm$1$sO2Ci5ytAR2vL0P2W_UhWifl_WI;->f$1:Lcom/google/android/ump/FormError;

    invoke-virtual {v0, v1}, Lcom/google/unity/ump/UnityConsentForm$1;->lambda$onConsentFormDismissed$0$UnityConsentForm$1(Lcom/google/android/ump/FormError;)V

    return-void
.end method
