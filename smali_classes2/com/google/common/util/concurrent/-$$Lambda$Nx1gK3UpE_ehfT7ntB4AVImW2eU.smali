.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$Nx1gK3UpE_ehfT7ntB4AVImW2eU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$Nx1gK3UpE_ehfT7ntB4AVImW2eU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$Nx1gK3UpE_ehfT7ntB4AVImW2eU;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/-$$Lambda$Nx1gK3UpE_ehfT7ntB4AVImW2eU;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/-$$Lambda$Nx1gK3UpE_ehfT7ntB4AVImW2eU;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$Nx1gK3UpE_ehfT7ntB4AVImW2eU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Striped$WeakSafeReadWriteLock;-><init>()V

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method