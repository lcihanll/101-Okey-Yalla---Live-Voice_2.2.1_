.class public final Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$l1111l111111Il;
    }
.end annotation


# static fields
.field private static final l1111l111111Il:Ljava/lang/String; = "sm"

.field private static l111l11111I1l:J = 0x7d0L

.field private static l111l11111Il:J = 0x1388L

.field private static l111l11111lIl:J = 0x0L

.field private static l111l1111l1Il:J = 0x3a98L

.field private static final l111l1111lI1l:I = 0x9

.field private static final l111l1111lIl:I = 0x6

.field private static l111l1111llIl:J = 0x7530L

.field private static final l11l1111I11l:I = 0x0

.field private static final l11l1111I1l:I = 0x2

.field private static final l11l1111I1ll:I = 0x1

.field private static final l11l1111Il:I = 0x2

.field private static final l11l1111Il1l:I = 0x3

.field private static final l11l1111Ill:I = 0x4

.field private static final l11l1111lIIl:I = 0x3

.field private static final l11l11IlIIll:I = 0xf4240


# instance fields
.field private l111l11IlIlIl:Ljava/lang/String;

.field private l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l11l111l1I1l:Ljava/lang/Runnable;

.field private l11l111l1lll:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;

    invoke-direct {v0, p0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$1;-><init>(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)V

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l1I1l:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/ishumei/l1111l111111Il/l111l1111llIl$l1111l111111Il;->l111l11111Il:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;-><init>()V

    return-void
.end method

.method private static l1111l111111Il(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;
    .locals 1

    invoke-static {}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$l1111l111111Il;->l1111l111111Il()Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l1lll:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l1lll:Ljava/lang/String;

    return-object p1
.end method

.method private l1111l111111Il(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const v0, 0xf4240

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v0, :cond_2

    const-wide/16 v0, 0x7530

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_3

    const-wide/16 v0, 0x3a98

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_4

    const-wide/16 v0, 0x1388

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x7d0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(J)V

    return-void

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(J)V

    :cond_6
    return-void
.end method

.method private l1111l111111Il(J)V
    .locals 6

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v0

    iget-object v1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l1I1l:Ljava/lang/Runnable;

    const/4 v2, 0x4

    const/4 v5, 0x1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;IJZ)V

    return-void
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const v0, 0xf4240

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v0, :cond_2

    const-wide/16 v0, 0x7530

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_3

    const-wide/16 v0, 0x3a98

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_4

    const-wide/16 v0, 0x1388

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x7d0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(J)V

    return-void

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(J)V

    :cond_6
    return-void
.end method

.method static synthetic l1111l111111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11111lIl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private l111l11111I1l()J
    .locals 2

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const-wide/16 v0, 0x7530

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    const-wide/16 v0, 0x3a98

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    const-wide/16 v0, 0x1388

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method static synthetic l111l11111I1l(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic l111l11111Il(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l1I1l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l111l11111lIl(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11IlIlIl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l111l11111lIl(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l111l11IlIlIl:Ljava/lang/String;

    return-object p1
.end method

.method private static l111l11111lIl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/ishumei/l111l1111l1Il/l1111l111111Il;->l1111l111111Il(Ljava/lang/String;)Lcom/ishumei/l111l1111l1Il/l1111l111111Il;

    move-result-object v0

    new-instance v1, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    invoke-direct {v1}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il(Lcom/ishumei/l111l1111l1Il/l1111l111111Il;)Lcom/ishumei/l111l1111l1Il/l111l11111I1l;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/ishumei/l111l1111l1Il/l111l11111I1l;->l1111l111111Il([BLjava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x44c

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il()Lcom/ishumei/l1111l111111Il/l111l1111llIl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ishumei/l1111l111111Il/l111l1111llIl;->l1111l111111Il(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    const/16 p1, 0x76e

    if-ne p0, p1, :cond_1

    return v1

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final l1111l111111Il(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l111l11111lIl()Lcom/ishumei/l111l11111I1l/l1111l111111Il;

    move-result-object v0

    new-instance v1, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il$2;-><init>(Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/ishumei/l111l11111I1l/l1111l111111Il;->l1111l111111Il(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final l111l11111lIl()V
    .locals 2

    iget-object v0, p0, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l11l111l11Il:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ishumei/l111l11111lIl/l111l11111I1l/l1111l111111Il;->l1111l111111Il(J)V

    return-void
.end method
