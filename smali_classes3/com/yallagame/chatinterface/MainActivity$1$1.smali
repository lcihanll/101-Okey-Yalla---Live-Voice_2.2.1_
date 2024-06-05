.class Lcom/yallagame/chatinterface/MainActivity$1$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yallagame/chatinterface/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yallagame/chatinterface/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/yallagame/chatinterface/MainActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/yallagame/chatinterface/MainActivity$1$1;->this$0:Lcom/yallagame/chatinterface/MainActivity$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p0, Lcom/yallagame/chatinterface/MainActivity$1$1;->this$0:Lcom/yallagame/chatinterface/MainActivity$1;

    iget-object p1, p1, Lcom/yallagame/chatinterface/MainActivity$1;->val$str:Ljava/lang/String;

    const-string v0, "data"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    sget-object v0, Lcom/yallagame/chatinterface/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yallagame/chatinterface/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    sput-object v0, Lcom/yallagame/chatinterface/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    :cond_0
    sget-object v0, Lcom/yallagame/chatinterface/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
