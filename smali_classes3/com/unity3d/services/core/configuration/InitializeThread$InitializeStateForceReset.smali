.class public Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateForceReset;
.super Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateForceReset"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/unity3d/services/core/configuration/Configuration;

    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/Configuration;-><init>()V

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/services/core/configuration/InitializeThread$c;
    .locals 1

    sget-object v0, Lcom/unity3d/services/core/properties/d$a;->a:Lcom/unity3d/services/core/properties/d$a;

    invoke-static {v0}, Lcom/unity3d/services/core/properties/d;->a(Lcom/unity3d/services/core/properties/d$a;)V

    invoke-super {p0}, Lcom/unity3d/services/core/configuration/InitializeThread$InitializeStateReset;->execute()Lcom/unity3d/services/core/configuration/InitializeThread$c;

    const/4 v0, 0x0

    return-object v0
.end method
