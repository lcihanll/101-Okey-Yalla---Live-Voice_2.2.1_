.class Lcom/yalla/okey101yalla/MyService$1;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalla/okey101yalla/MyService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalla/okey101yalla/MyService;


# direct methods
.method constructor <init>(Lcom/yalla/okey101yalla/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/MyService$1;->this$0:Lcom/yalla/okey101yalla/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/yalla/okey101yalla/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yalla/okey101yalla/MyService$1;->this$0:Lcom/yalla/okey101yalla/MyService;

    iget-object v0, v0, Lcom/yalla/okey101yalla/MyService;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method
