.class final Lcom/uqm/crashsight/proguard/i$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/proguard/i;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/proguard/i;ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput p2, p0, Lcom/uqm/crashsight/proguard/i$2;->a:I

    iput-object p3, p0, Lcom/uqm/crashsight/proguard/i$2;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/proguard/i$2;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/proguard/i$2;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
