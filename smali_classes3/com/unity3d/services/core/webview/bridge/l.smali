.class public Lcom/unity3d/services/core/webview/bridge/l;
.super Ljava/lang/Object;
.source "WebViewCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/unity3d/services/core/webview/bridge/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unity3d/services/core/webview/bridge/l$a;

    invoke-direct {v0}, Lcom/unity3d/services/core/webview/bridge/l$a;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/webview/bridge/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/webview/bridge/l;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/unity3d/services/core/webview/bridge/l;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/unity3d/services/core/webview/bridge/l;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/webview/bridge/l;->c:Ljava/lang/String;

    iput p2, p0, Lcom/unity3d/services/core/webview/bridge/l;->b:I

    return-void
.end method

.method private varargs a(Lcom/unity3d/services/core/webview/bridge/a;Ljava/lang/Enum;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/services/core/webview/bridge/l;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/services/core/webview/bridge/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/core/webview/bridge/l;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Lcom/unity3d/services/core/webview/bridge/l;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p3, p0, Lcom/unity3d/services/core/webview/bridge/l;->b:I

    invoke-static {p3}, Lcom/unity3d/services/core/webview/bridge/e;->a(I)Lcom/unity3d/services/core/webview/bridge/e;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get batch with id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unity3d/services/core/webview/bridge/l;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/log/a;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/unity3d/services/core/webview/bridge/e;->a(Lcom/unity3d/services/core/webview/bridge/a;Ljava/lang/Enum;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unity3d/services/core/webview/bridge/l;->b:I

    return v0
.end method

.method public varargs a(Ljava/lang/Enum;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/a;->b:Lcom/unity3d/services/core/webview/bridge/a;

    invoke-direct {p0, v0, p1, p2}, Lcom/unity3d/services/core/webview/bridge/l;->a(Lcom/unity3d/services/core/webview/bridge/a;Ljava/lang/Enum;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/unity3d/services/core/webview/bridge/a;->a:Lcom/unity3d/services/core/webview/bridge/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/unity3d/services/core/webview/bridge/l;->a(Lcom/unity3d/services/core/webview/bridge/a;Ljava/lang/Enum;[Ljava/lang/Object;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const v0, 0xb26e

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/unity3d/services/core/webview/bridge/l;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/unity3d/services/core/webview/bridge/l;->a:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/unity3d/services/core/webview/bridge/l;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method