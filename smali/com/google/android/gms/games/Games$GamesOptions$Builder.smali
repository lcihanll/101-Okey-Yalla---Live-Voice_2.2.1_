.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final zzax:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private zzaj:Z

.field private zzak:Z

.field private zzal:I

.field private zzam:Z

.field private zzan:I

.field private zzao:Ljava/lang/String;

.field private zzap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaq:Z

.field private zzar:Z

.field zzas:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private zzat:Ljava/lang/String;

.field private zzau:I

.field private zzav:I

.field private zzaw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzax:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaj:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzak:Z

    const/16 v1, 0x11

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzal:I

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzam:Z

    const/16 v1, 0x1110

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzan:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzao:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzap:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzar:Z

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzas:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzat:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzau:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzav:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaw:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaj:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzak:Z

    const/16 v1, 0x11

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzal:I

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzam:Z

    const/16 v1, 0x1110

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzan:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzao:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzap:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzar:Z

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzas:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzat:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzau:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzav:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaw:I

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzaj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaj:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzak:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzak:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzal:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzal:I

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzam:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzam:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzan:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzan:I

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzao:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzao:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzap:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzap:Ljava/util/ArrayList;

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzaq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaq:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzar:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzar:Z

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzas:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzas:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzat:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzat:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/games/Games$GamesOptions;->zzb(Lcom/google/android/gms/games/Games$GamesOptions;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzau:I

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzav:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzav:I

    iget p1, p1, Lcom/google/android/gms/games/Games$GamesOptions;->zzaw:I

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaw:I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/games/zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/games/Games$GamesOptions;
    .locals 18

    move-object/from16 v0, p0

    new-instance v17, Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v2, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaj:Z

    iget-boolean v3, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzak:Z

    iget v4, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzal:I

    iget-boolean v5, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzam:Z

    iget v6, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzan:I

    iget-object v7, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzao:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzap:Ljava/util/ArrayList;

    iget-boolean v9, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaq:Z

    iget-boolean v10, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzar:Z

    iget-object v11, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzas:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v12, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzat:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzau:I

    iget v14, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzav:I

    iget v15, v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzaw:I

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IIILcom/google/android/gms/games/zze;)V

    return-object v17
.end method

.method public final setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzan:I

    return-object p0
.end method

.method public final setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzak:Z

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzal:I

    return-object p0
.end method

.method public final setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzak:Z

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzal:I

    return-object p0
.end method
