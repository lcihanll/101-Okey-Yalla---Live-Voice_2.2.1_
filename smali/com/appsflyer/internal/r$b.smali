.class public final Lcom/appsflyer/internal/r$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final AFDateFormat:Ljava/lang/String;

.field private final valueOf:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/r$b;->AFDateFormat:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/appsflyer/internal/r$b;->valueOf:Z

    return-void
.end method


# virtual methods
.method public final valueOf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appsflyer/internal/r$b;->valueOf:Z

    return v0
.end method
