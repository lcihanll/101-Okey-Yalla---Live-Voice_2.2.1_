.class public Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:J

.field public I:J

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:J

.field public O:Z

.field public P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public R:I

.field public S:I

.field public T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public U:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public V:[B

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:J

.field public t:Ljava/lang/String;

.field public u:I

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->k:Z

    iput v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->l:I

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:Ljava/lang/String;

    iput v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:I

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:[B

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/util/Map;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:Ljava/lang/String;

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:J

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:Z

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:I

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:I

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:[B

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->k:Z

    iput v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->l:I

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:Ljava/lang/String;

    iput v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:I

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:[B

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/util/Map;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:Ljava/lang/String;

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:J

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:Z

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:I

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:I

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:[B

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:Z

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:I

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    iget p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
