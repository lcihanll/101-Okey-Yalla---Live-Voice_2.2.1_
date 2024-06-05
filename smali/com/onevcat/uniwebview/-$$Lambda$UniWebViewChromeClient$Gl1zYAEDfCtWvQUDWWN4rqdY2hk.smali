.class public final synthetic Lcom/onevcat/uniwebview/-$$Lambda$UniWebViewChromeClient$Gl1zYAEDfCtWvQUDWWN4rqdY2hk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/webkit/PermissionRequest;

.field public final synthetic f$1:Lcom/onevcat/uniwebview/UniWebViewChromeClient;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/PermissionRequest;Lcom/onevcat/uniwebview/UniWebViewChromeClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/-$$Lambda$UniWebViewChromeClient$Gl1zYAEDfCtWvQUDWWN4rqdY2hk;->f$0:Landroid/webkit/PermissionRequest;

    iput-object p2, p0, Lcom/onevcat/uniwebview/-$$Lambda$UniWebViewChromeClient$Gl1zYAEDfCtWvQUDWWN4rqdY2hk;->f$1:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/-$$Lambda$UniWebViewChromeClient$Gl1zYAEDfCtWvQUDWWN4rqdY2hk;->f$0:Landroid/webkit/PermissionRequest;

    iget-object v1, p0, Lcom/onevcat/uniwebview/-$$Lambda$UniWebViewChromeClient$Gl1zYAEDfCtWvQUDWWN4rqdY2hk;->f$1:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->lambda$Gl1zYAEDfCtWvQUDWWN4rqdY2hk(Landroid/webkit/PermissionRequest;Lcom/onevcat/uniwebview/UniWebViewChromeClient;)V

    return-void
.end method
