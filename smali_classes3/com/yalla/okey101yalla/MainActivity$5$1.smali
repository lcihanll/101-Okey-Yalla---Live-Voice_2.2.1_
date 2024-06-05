.class Lcom/yalla/okey101yalla/MainActivity$5$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalla/okey101yalla/MainActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalla/okey101yalla/MainActivity$5;


# direct methods
.method constructor <init>(Lcom/yalla/okey101yalla/MainActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/MainActivity$5$1;->this$0:Lcom/yalla/okey101yalla/MainActivity$5;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/yalla/okey101yalla/MainActivity$5$1;->this$0:Lcom/yalla/okey101yalla/MainActivity$5;

    iget-object p1, p1, Lcom/yalla/okey101yalla/MainActivity$5;->val$str:Ljava/lang/String;

    const-string v0, "data"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    sget-object v0, Lcom/yalla/okey101yalla/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
