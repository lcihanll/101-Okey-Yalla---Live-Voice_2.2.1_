.class final Lcom/uqm/crashsight/agent/GameAgent$11;
.super Ljava/lang/Object;
.source "GameAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/agent/GameAgent;->setLog(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logData:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/agent/GameAgent$11;->val$method:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/agent/GameAgent$11;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/agent/GameAgent$11;->val$logData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "crashreport.CrashSightLog"

    invoke-static {v0}, Lcom/uqm/crashsight/agent/GameAgent;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/agent/GameAgent$11;->val$method:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/uqm/crashsight/agent/GameAgent$11;->val$tag:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/uqm/crashsight/agent/GameAgent$11;->val$logData:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/uqm/crashsight/agent/GameAgent$Reflection;->access$100(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
