.class public final Lcom/onevcat/uniwebview/URLLoadingResponder;
.super Ljava/lang/Object;
.source "URLLoadingResponder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nURLLoadingResponder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLLoadingResponder.kt\ncom/onevcat/uniwebview/URLLoadingResponder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,196:1\n1741#2,3:197\n1741#2,3:200\n*S KotlinDebug\n*F\n+ 1 URLLoadingResponder.kt\ncom/onevcat/uniwebview/URLLoadingResponder\n*L\n146#1:197,3\n179#1:200,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0015H\u0002J\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0015J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0015H\u0002J\u0016\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u000eJ\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0015H\u0002J\u001a\u0010\"\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0015H\u0002J\u001a\u0010#\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0015H\u0002J\u000e\u0010$\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015J\u0012\u0010%\u001a\u00020\u000e2\u0008\u0010&\u001a\u0004\u0018\u00010\u001dH\u0002J\u001a\u0010\'\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0015H\u0002J\u001a\u0010(\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0015H\u0002J\u001a\u0010)\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0015H\u0002J\u0010\u0010*\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u0015H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/URLLoadingResponder;",
        "",
        "context",
        "Landroid/content/Context;",
        "delegate",
        "Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;",
        "(Landroid/content/Context;Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getDelegate",
        "()Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;",
        "logger",
        "Lcom/onevcat/uniwebview/Logger;",
        "preferOpenLinksInExternalBrowser",
        "",
        "getPreferOpenLinksInExternalBrowser",
        "()Z",
        "setPreferOpenLinksInExternalBrowser",
        "(Z)V",
        "schemes",
        "",
        "",
        "addUrlScheme",
        "",
        "scheme",
        "canResponseBuiltinScheme",
        "url",
        "canResponseDefinedScheme",
        "explicitIntent",
        "Landroid/content/Intent;",
        "lowered",
        "handleUrl",
        "skipExternalLinkOpen",
        "isLocalFileUrl",
        "mailToIntent",
        "marketIntent",
        "removeUrlScheme",
        "runIntent",
        "intent",
        "smsIntent",
        "telIntent",
        "thirdPartyAppIntent",
        "webBrowsingIntent",
        "destinationUrl",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final delegate:Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;

.field private final logger:Lcom/onevcat/uniwebview/Logger;

.field private preferOpenLinksInExternalBrowser:Z

.field private final schemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->delegate:Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;

    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string/jumbo p1, "uniwebview"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->schemes:Ljava/util/Set;

    return-void
.end method

.method private final canResponseBuiltinScheme(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "uniwebviewinternal://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "__uniwebview_internal_video_end"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->delegate:Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;

    invoke-interface {p1}, Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;->onVideoEndInvoked()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final explicitIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string v0, "intent:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object v3

    :cond_0
    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v0, "Received intent url..."

    invoke-virtual {p2, v0}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    const/4 p2, 0x1

    :try_start_0
    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v0, 0x10000

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v3

    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing intent url error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".message"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return-object v3
.end method

.method private final isLocalFileUrl(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "file:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final mailToIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string v0, "mailto:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object v3

    :cond_0
    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v0, "Received mailto url..."

    invoke-virtual {p2, v0}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p2
.end method

.method private final marketIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string v0, "market:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object v3

    :cond_0
    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v0, "Received market url..."

    invoke-virtual {p2, v0}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    const/4 p2, 0x1

    :try_start_0
    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing market url error. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return-object v3
.end method

.method private final runIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Activity found to handle Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private final smsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string v0, "sms:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object v3

    :cond_0
    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v0, "Received sms url..."

    invoke-virtual {p2, v0}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.DEFAULT"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p2
.end method

.method private final telIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const-string/jumbo v0, "tel:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object v3

    :cond_0
    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v0, "Received tel url..."

    invoke-virtual {p2, v0}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p2
.end method

.method private final thirdPartyAppIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    const-string v0, "http:"

    const-string v1, "https:"

    const-string v2, "file:"

    const-string v3, "about:blank"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {p2, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_3

    return-object v2

    :cond_3
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const-string v0, "context.packageManager.q\u2026tentActivities(intent, 0)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_4
    return-object p2
.end method

.method private final webBrowsingIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final addUrlScheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->schemes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final canResponseDefinedScheme(Ljava/lang/String;)Z
    .locals 6

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking url could match with a defined url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->schemes:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found url matching scheme: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did not find a matched scheme for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    return v3
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDelegate()Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->delegate:Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;

    return-object v0
.end method

.method public final getPreferOpenLinksInExternalBrowser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->preferOpenLinksInExternalBrowser:Z

    return v0
.end method

.method public final handleUrl(Ljava/lang/String;Z)Z
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "ROOT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->isLocalFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->delegate:Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;

    invoke-interface {p1}, Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;->onCheckLocalFileLoading()Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->canResponseBuiltinScheme(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string p2, "Url handled internally in UniWebView"

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->canResponseDefinedScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url handled by defined scheme. Redirected to Unity. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->delegate:Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;

    invoke-interface {p2, p1}, Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;->onSendMessage(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->smsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->runIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->telIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->runIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->mailToIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->runIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->explicitIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->runIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->marketIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->runIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->preferOpenLinksInExternalBrowser:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->delegate:Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;

    invoke-interface {p2}, Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;->isValidHitTestResult()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string v0, "UniWebView is opening links in external browser."

    invoke-virtual {p2, v0}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->webBrowsingIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->runIntent(Landroid/content/Intent;)Z

    return v2

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/URLLoadingResponder;->thirdPartyAppIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/onevcat/uniwebview/URLLoadingResponder;->runIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url handled by a third party app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    return v2

    :cond_5
    iget-object p2, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url is opening without overridden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->logger:Lcom/onevcat/uniwebview/Logger;

    const-string p2, "Url handled by intent."

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    return v2
.end method

.method public final removeUrlScheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->schemes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setPreferOpenLinksInExternalBrowser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/URLLoadingResponder;->preferOpenLinksInExternalBrowser:Z

    return-void
.end method
