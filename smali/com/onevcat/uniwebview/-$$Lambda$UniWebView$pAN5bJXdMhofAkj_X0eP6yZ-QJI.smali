.class public final synthetic Lcom/onevcat/uniwebview/-$$Lambda$UniWebView$pAN5bJXdMhofAkj_X0eP6yZ-QJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/onevcat/uniwebview/UniWebView;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/-$$Lambda$UniWebView$pAN5bJXdMhofAkj_X0eP6yZ-QJI;->f$0:Lcom/onevcat/uniwebview/UniWebView;

    iput-object p2, p0, Lcom/onevcat/uniwebview/-$$Lambda$UniWebView$pAN5bJXdMhofAkj_X0eP6yZ-QJI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/-$$Lambda$UniWebView$pAN5bJXdMhofAkj_X0eP6yZ-QJI;->f$0:Lcom/onevcat/uniwebview/UniWebView;

    iget-object v1, p0, Lcom/onevcat/uniwebview/-$$Lambda$UniWebView$pAN5bJXdMhofAkj_X0eP6yZ-QJI;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/onevcat/uniwebview/UniWebView;->lambda$pAN5bJXdMhofAkj_X0eP6yZ-QJI(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
