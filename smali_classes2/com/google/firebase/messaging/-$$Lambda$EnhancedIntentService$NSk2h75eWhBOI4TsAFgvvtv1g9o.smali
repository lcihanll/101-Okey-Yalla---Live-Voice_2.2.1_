.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$EnhancedIntentService$NSk2h75eWhBOI4TsAFgvvtv1g9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/EnhancedIntentService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/-$$Lambda$EnhancedIntentService$NSk2h75eWhBOI4TsAFgvvtv1g9o;->f$0:Lcom/google/firebase/messaging/EnhancedIntentService;

    iput-object p2, p0, Lcom/google/firebase/messaging/-$$Lambda$EnhancedIntentService$NSk2h75eWhBOI4TsAFgvvtv1g9o;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/messaging/-$$Lambda$EnhancedIntentService$NSk2h75eWhBOI4TsAFgvvtv1g9o;->f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/-$$Lambda$EnhancedIntentService$NSk2h75eWhBOI4TsAFgvvtv1g9o;->f$0:Lcom/google/firebase/messaging/EnhancedIntentService;

    iget-object v1, p0, Lcom/google/firebase/messaging/-$$Lambda$EnhancedIntentService$NSk2h75eWhBOI4TsAFgvvtv1g9o;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/firebase/messaging/-$$Lambda$EnhancedIntentService$NSk2h75eWhBOI4TsAFgvvtv1g9o;->f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/EnhancedIntentService;->lambda$processIntent$0$EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
