.class public final Lcom/geetest/core/Core;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "gtcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getData(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getData(Landroid/content/Context;Lcom/geetest/core/GeeGuardConfiguration;)Ljava/lang/String;
.end method
