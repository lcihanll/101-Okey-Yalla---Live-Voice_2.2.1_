.class Lcom/unity3d/services/core/log/b;
.super Ljava/lang/Object;
.source "DeviceLogEntry.java"


# instance fields
.field private a:Lcom/unity3d/services/core/log/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/log/c;Ljava/lang/String;Ljava/lang/StackTraceElement;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/log/b;->a:Lcom/unity3d/services/core/log/c;

    iput-object v0, p0, Lcom/unity3d/services/core/log/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/services/core/log/b;->c:Ljava/lang/StackTraceElement;

    iput-object p1, p0, Lcom/unity3d/services/core/log/b;->a:Lcom/unity3d/services/core/log/c;

    iput-object p2, p0, Lcom/unity3d/services/core/log/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/core/log/b;->c:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public a()Lcom/unity3d/services/core/log/c;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/core/log/b;->a:Lcom/unity3d/services/core/log/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/unity3d/services/core/log/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/unity3d/services/core/log/b;->c:Ljava/lang/StackTraceElement;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/core/log/b;->c:Ljava/lang/StackTraceElement;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/services/core/log/b;->c:Ljava/lang/StackTraceElement;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    goto :goto_0

    :cond_0
    const-string v1, "UnknownClass"

    const-string v2, "unknownMethod"

    const/4 v3, -0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (line:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
