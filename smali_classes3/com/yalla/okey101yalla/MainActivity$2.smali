.class Lcom/yalla/okey101yalla/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalla/okey101yalla/MainActivity;->ShowGTCatcha4(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalla/okey101yalla/MainActivity;

.field final synthetic val$cOutClose:Ljava/lang/Boolean;

.field final synthetic val$debug:Ljava/lang/Boolean;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$lan:Ljava/lang/String;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/yalla/okey101yalla/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/MainActivity$2;->this$0:Lcom/yalla/okey101yalla/MainActivity;

    iput-object p2, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$lan:Ljava/lang/String;

    iput-object p4, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$debug:Ljava/lang/Boolean;

    iput p5, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$timeout:I

    iput-object p6, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$cOutClose:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/yalla/okey101yalla/MainActivity$2;->this$0:Lcom/yalla/okey101yalla/MainActivity;

    iget-object v1, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$lan:Ljava/lang/String;

    iget-object v3, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$debug:Ljava/lang/Boolean;

    iget v4, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$timeout:I

    iget-object v5, p0, Lcom/yalla/okey101yalla/MainActivity$2;->val$cOutClose:Ljava/lang/Boolean;

    new-instance v6, Lcom/yalla/okey101yalla/MainActivity$2$1;

    invoke-direct {v6, p0}, Lcom/yalla/okey101yalla/MainActivity$2$1;-><init>(Lcom/yalla/okey101yalla/MainActivity$2;)V

    new-instance v7, Lcom/yalla/okey101yalla/MainActivity$2$2;

    invoke-direct {v7, p0}, Lcom/yalla/okey101yalla/MainActivity$2$2;-><init>(Lcom/yalla/okey101yalla/MainActivity$2;)V

    invoke-static/range {v0 .. v7}, Lcom/yalla/okey101yalla/MainActivity;->access$000(Lcom/yalla/okey101yalla/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Boolean;Lcom/geetest/captcha/GTCaptcha4Client$OnSuccessListener;Lcom/geetest/captcha/GTCaptcha4Client$OnFailureListener;)V

    iget-object v0, p0, Lcom/yalla/okey101yalla/MainActivity$2;->this$0:Lcom/yalla/okey101yalla/MainActivity;

    invoke-static {v0}, Lcom/yalla/okey101yalla/MainActivity;->access$100(Lcom/yalla/okey101yalla/MainActivity;)Lcom/geetest/captcha/GTCaptcha4Client;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalla/okey101yalla/MainActivity$2;->this$0:Lcom/yalla/okey101yalla/MainActivity;

    invoke-static {v0}, Lcom/yalla/okey101yalla/MainActivity;->access$100(Lcom/yalla/okey101yalla/MainActivity;)Lcom/geetest/captcha/GTCaptcha4Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/captcha/GTCaptcha4Client;->verifyWithCaptcha()Lcom/geetest/captcha/GTCaptcha4Client;

    :cond_0
    return-void
.end method
