.class final Lcom/google/android/gms/games/zze;
.super Lcom/google/android/gms/games/Games$zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/Games$zza;-><init>(Lcom/google/android/gms/games/zze;)V

    return-void
.end method


# virtual methods
.method public final synthetic getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/Games$GamesOptions;

    sget-object p1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
