.class public final Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;
.super Ljava/lang/Object;
.source "UniWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;",
        "",
        "()V",
        "allowAutoPlay",
        "",
        "getAllowAutoPlay",
        "()Z",
        "setAllowAutoPlay",
        "(Z)V",
        "allowJavaScriptOpenWindow",
        "getAllowJavaScriptOpenWindow",
        "setAllowJavaScriptOpenWindow",
        "allowUniversalAccessFromFileURLs",
        "getAllowUniversalAccessFromFileURLs",
        "setAllowUniversalAccessFromFileURLs",
        "enableKeyboardAvoidance",
        "getEnableKeyboardAvoidance",
        "setEnableKeyboardAvoidance",
        "javaScriptEnabled",
        "getJavaScriptEnabled",
        "setJavaScriptEnabled",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllowAutoPlay()Z
    .locals 1

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$getAllowAutoPlay$cp()Z

    move-result v0

    return v0
.end method

.method public final getAllowJavaScriptOpenWindow()Z
    .locals 1

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$getAllowJavaScriptOpenWindow$cp()Z

    move-result v0

    return v0
.end method

.method public final getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$getAllowUniversalAccessFromFileURLs$cp()Z

    move-result v0

    return v0
.end method

.method public final getEnableKeyboardAvoidance()Z
    .locals 1

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$getEnableKeyboardAvoidance$cp()Z

    move-result v0

    return v0
.end method

.method public final getJavaScriptEnabled()Z
    .locals 1

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$getJavaScriptEnabled$cp()Z

    move-result v0

    return v0
.end method

.method public final setAllowAutoPlay(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$setAllowAutoPlay$cp(Z)V

    return-void
.end method

.method public final setAllowJavaScriptOpenWindow(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$setAllowJavaScriptOpenWindow$cp(Z)V

    return-void
.end method

.method public final setAllowUniversalAccessFromFileURLs(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$setAllowUniversalAccessFromFileURLs$cp(Z)V

    return-void
.end method

.method public final setEnableKeyboardAvoidance(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$setEnableKeyboardAvoidance$cp(Z)V

    return-void
.end method

.method public final setJavaScriptEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->access$setJavaScriptEnabled$cp(Z)V

    return-void
.end method
