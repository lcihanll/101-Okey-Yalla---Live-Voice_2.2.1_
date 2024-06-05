.class public Lcom/unity3d/services/core/properties/c;
.super Ljava/lang/Object;
.source "MadeWithUnityDetector.java"


# direct methods
.method public static a()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.unity3d.player.UnityPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    return v0
.end method
