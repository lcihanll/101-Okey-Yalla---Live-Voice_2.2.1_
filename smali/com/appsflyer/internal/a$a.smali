.class public final Lcom/appsflyer/internal/a$a;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static $$a:[C = null

.field private static $$b:I = 0x0

.field private static collectIntentsFromActivities:Z = false

.field private static dateFormatUTC:I = 0x0

.field private static getDataFormatter:Z = false

.field private static getInstance:I = 0x1

.field private static values:[C


# instance fields
.field private final AFDateFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final valueOf:Landroid/content/Context;


# direct methods
.method private $$a()Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "http://"

    const-string v3, "\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    const-string v4, ""

    const/4 v5, 0x5

    const/16 v6, 0x10

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    new-array v14, v9, [I

    aput v13, v14, v13

    const/16 v15, 0xc

    aput v15, v14, v11

    const/4 v15, 0x7

    aput v15, v14, v10

    aput v7, v14, v8

    const-string v15, "\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v4, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-static {v14, v15, v7}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x7f

    const-string/jumbo v15, "\u0087\u008c\u0083\u0091\u0090\u008f\u0084\u008e\u0083\u008d\u008c\u008b\u0082\u008a\u0088"

    invoke-static {v12, v12, v14, v15}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v13}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x7f

    const-string/jumbo v15, "\u0095\u0093\u0094\u0093\u0092"

    invoke-static {v12, v12, v14, v15}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    new-array v15, v9, [I

    const/16 v16, 0x3e

    aput v16, v15, v13

    aput v5, v15, v11

    aput v13, v15, v10

    aput v13, v15, v8

    const-string v5, "\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v12}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v15, v5, v8}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/HashUtils;->toSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    const-string v8, "about:"

    invoke-static {v8}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v7, v3, v8}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v5, v5, 0x7f

    const-string/jumbo v7, "\u0099\u0098\u0095\u0094\u0088\u0098\u0089\u0085\u0095\u0097\u0096\u0095\u0087\u0083\u0087\u0081\u0083\u0081"

    invoke-static {v12, v12, v5, v7}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    :try_start_1
    iget-object v0, v1, Lcom/appsflyer/internal/a$a;->valueOf:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    new-array v8, v9, [I

    const/16 v14, 0x6f

    aput v14, v8, v13

    const/16 v14, 0x25

    aput v14, v8, v11

    aput v13, v8, v10

    const/4 v15, 0x3

    aput v13, v8, v15

    const-string v15, "\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001"

    const/16 v17, 0x30

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v18

    xor-int/lit8 v14, v18, 0x1

    invoke-static {v8, v15, v14}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const/16 v8, -0xa8c

    if-eq v7, v11, :cond_1

    goto :goto_2

    :cond_1
    sget v7, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 v7, v7, 0x1b

    rem-int/lit16 v14, v7, 0x80

    sput v14, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/2addr v7, v10

    const-string/jumbo v14, "\u0087\u0082\u008e\u008c\u0083\u0082\u0087\u009b\u009a\u0087\u008c"

    if-eqz v7, :cond_2

    const/16 v7, 0x7d

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    mul-int/lit8 v8, v8, 0x63

    shr-int/2addr v7, v8

    invoke-static {v12, v12, v7, v14}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2c82

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    rsub-int/lit8 v7, v7, 0x7f

    invoke-static {v12, v12, v7, v14}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    :goto_2
    iget-object v0, v1, Lcom/appsflyer/internal/a$a;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    shr-int/lit8 v6, v7, 0x10

    add-int/lit8 v6, v6, 0x7f

    const-string/jumbo v7, "\u0092\u0099\u009c"

    invoke-static {v12, v12, v6, v7}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v6, 0x34

    if-eqz v0, :cond_3

    const/16 v14, 0x25

    goto :goto_3

    :cond_3
    const/16 v14, 0x34

    :goto_3
    if-eq v14, v6, :cond_6

    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/2addr v0, v10

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x0

    :goto_6
    :try_start_3
    iget-object v6, v1, Lcom/appsflyer/internal/a$a;->valueOf:Landroid/content/Context;

    new-array v7, v9, [I

    const/16 v14, 0x94

    aput v14, v7, v13

    const/4 v14, 0x6

    aput v14, v7, v11

    const/16 v14, 0x91

    aput v14, v7, v10

    const/4 v14, 0x5

    const/4 v15, 0x3

    aput v14, v7, v15

    invoke-static {v2}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v7, v12, v14}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v9, [I

    const/16 v15, 0x9a

    aput v15, v14, v13

    aput v11, v14, v11

    const/16 v15, 0xa8

    aput v15, v14, v10

    const/4 v15, 0x3

    aput v13, v14, v15

    const-string v15, "\u0000"

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v12

    invoke-static {v14, v15, v12}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v8, v9, [I

    const/16 v12, 0x9b

    aput v12, v8, v13

    aput v10, v8, v11

    const/16 v12, 0x59

    aput v12, v8, v10

    const/4 v12, 0x3

    aput v11, v8, v12

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v12

    const/4 v14, 0x0

    invoke-static {v8, v14, v12}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v13, v13}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const-string/jumbo v8, "\u008b\u009d"

    const/4 v12, 0x0

    invoke-static {v12, v12, v0, v8}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v9, [I

    const/16 v6, 0x9d

    aput v6, v0, v13

    aput v10, v0, v11

    const/16 v6, 0x8d

    aput v6, v0, v10

    const/4 v6, 0x3

    aput v13, v0, v6

    const-string v6, "\u0001\u0000"

    invoke-static {v2}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v11

    invoke-static {v0, v6, v2}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/appsflyer/internal/a$a$a;->$$b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/a$a$a;->$$b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/a$a$a;->valueOf([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v9, [I

    fill-array-data v6, :array_1

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/webkit/URLUtil;->isCookielessProxyUrl(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v11

    invoke-static {v6, v3, v7}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [I

    fill-array-data v2, :array_2

    invoke-static {v4, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000"

    invoke-static {v2, v4, v3}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    nop

    :array_0
    .array-data 4
        0x43
        0x2c
        0x0
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x43
        0x2c
        0x0
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x9f
        0x10
        0x0
        0x0
    .end array-data
.end method

.method private static $$a([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 11

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v6, p0, v6

    sget-object v7, Lcom/appsflyer/internal/a$a;->$$a:[C

    new-array v8, v3, [C

    invoke-static {v7, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_3

    new-array v1, v3, [C

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v3, :cond_2

    aget-byte v10, p1, v7

    if-ne v10, v2, :cond_1

    aget-char v10, v8, v7

    shl-int/2addr v10, v2

    add-int/2addr v10, v2

    sub-int/2addr v10, v9

    int-to-char v9, v10

    aput-char v9, v1, v7

    goto :goto_1

    :cond_1
    aget-char v10, v8, v7

    shl-int/2addr v10, v2

    sub-int/2addr v10, v9

    int-to-char v9, v10

    aput-char v9, v1, v7

    :goto_1
    aget-char v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    sget p1, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v7, p1, 0x80

    sput v7, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/2addr p1, v4

    move-object v8, v1

    :cond_3
    if-lez v6, :cond_4

    new-array p1, v3, [C

    invoke-static {v8, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v3, v6

    invoke-static {p1, v0, v8, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v6, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-eqz p2, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    new-array p1, v3, [C

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    sget v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/2addr v1, v4

    sub-int v1, v3, p2

    sub-int/2addr v1, v2

    aget-char v1, v8, v1

    aput-char v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    sget p2, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 p2, p2, 0x55

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/2addr p2, v4

    move-object v8, p1

    :cond_8
    if-lez v5, :cond_9

    :goto_5
    if-ge v0, v3, :cond_9

    sget p1, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/2addr p1, v4

    aget-char p1, v8, v0

    aget p2, p0, v4

    sub-int/2addr p1, p2

    int-to-char p1, p1

    aput-char p1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v8}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static $$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p3, :cond_0

    sget v0, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_0
    check-cast p3, [B

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget v1, Lcom/appsflyer/internal/a$a;->getInstance:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x14

    if-eqz v1, :cond_1

    const/16 v1, 0x2b

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    :goto_0
    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x4

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_3
    :goto_1
    check-cast p0, [C

    sget-object v1, Lcom/appsflyer/internal/a$a;->values:[C

    sget v2, Lcom/appsflyer/internal/a$a;->$$b:I

    sget-boolean v3, Lcom/appsflyer/internal/a$a;->collectIntentsFromActivities:Z

    if-eqz v3, :cond_6

    array-length p0, p3

    new-array p1, p0, [C

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x1

    if-ge v3, p0, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v5, 0x1

    :goto_3
    if-eq v5, v4, :cond_5

    add-int/lit8 v4, p0, -0x1

    sub-int/2addr v4, v3

    aget-byte v4, p3, v4

    add-int/2addr v4, p2

    aget-char v4, v1, v4

    sub-int/2addr v4, v2

    int-to-char v4, v4

    aput-char v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_6
    sget-boolean p3, Lcom/appsflyer/internal/a$a;->getDataFormatter:Z

    if-eqz p3, :cond_8

    array-length p1, p0

    new-array p3, p1, [C

    :goto_4
    if-ge v0, p1, :cond_7

    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v3, v0

    aget-char v3, p0, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_8
    array-length p0, p1

    new-array p3, p0, [C

    :goto_5
    const/16 v3, 0x2c

    if-ge v0, p0, :cond_9

    const/16 v4, 0x4b

    goto :goto_6

    :cond_9
    const/16 v4, 0x2c

    :goto_6
    if-eq v4, v3, :cond_b

    sget v3, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_a

    rem-int/lit8 v3, p0, 0x1

    shr-int/2addr v3, v0

    aget v3, p1, v3

    shr-int/2addr v3, p2

    aget-char v3, v1, v3

    shl-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p3, v0

    add-int/lit8 v0, v0, 0x12

    goto :goto_5

    :cond_a
    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v0

    aget v3, p1, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xaf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/a$a;->$$a:[C

    const/16 v0, 0x11b

    sput v0, Lcom/appsflyer/internal/a$a;->$$b:I

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/appsflyer/internal/a$a;->values:[C

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/a$a;->getDataFormatter:Z

    sput-boolean v0, Lcom/appsflyer/internal/a$a;->collectIntentsFromActivities:Z

    return-void

    :array_0
    .array-data 2
        0x36s
        0x73s
        0x7as
        0x71s
        0x6es
        0x75s
        0x6fs
        0x6as
        0x69s
        0x70s
        0x75s
        0x72s
        0x27s
        0x4es
        0x57s
        0x50s
        0x4as
        0x49s
        0x47s
        0x49s
        0x30s
        0x6as
        0x6es
        0x6bs
        0x6as
        0x43s
        0x45s
        0x68s
        0x65s
        0x43s
        0x45s
        0x68s
        0x6fs
        0x4cs
        0x4bs
        0x70s
        0x6es
        0x6es
        0x44s
        0x42s
        0x6es
        0x6ds
        0x64s
        0x6as
        0x72s
        0x6es
        0x6cs
        0x6es
        0x54s
        0x2ds
        0x43s
        0x63s
        0x65s
        0x6as
        0x68s
        0x64s
        0x42s
        0x43s
        0x66s
        0x69s
        0x69s
        0x6bs
        0x16s
        0x4fs
        0x6as
        0x48s
        0x2cs
        0x10s
        0x42s
        0x64s
        0x68s
        0x6as
        0x65s
        0x63s
        0x43s
        0x2ds
        0x54s
        0x6es
        0x6cs
        0x6es
        0x72s
        0x6as
        0x64s
        0x6ds
        0x6es
        0x42s
        0x44s
        0x6es
        0x6es
        0x70s
        0x4bs
        0x42s
        0x6ds
        0x70s
        0x66s
        0x6bs
        0x4bs
        0x43s
        0x65s
        0x68s
        0x45s
        0x43s
        0x6as
        0x6bs
        0x6es
        0x6as
        0x69s
        0x6bs
        0x69s
        0x69s
        0x66s
        0x30s
        0x67s
        0x69s
        0x6bs
        0x70s
        0x6cs
        0x66s
        0x49s
        0x4bs
        0x6bs
        0x71s
        0x6cs
        0x69s
        0x71s
        0x51s
        0x47s
        0x62s
        0x6bs
        0x6es
        0x6cs
        0x6es
        0x4es
        0x38s
        0x41s
        0x4as
        0x54s
        0x4cs
        0x4bs
        0x55s
        0x5cs
        0x51s
        0x45s
        0x44s
        0x47s
        0x4as
        0x46s
        0x44s
        0x100s
        0x104s
        0xffs
        0xf6s
        0x104s
        0x103s
        0x85s
        0x7fs
        0xd1s
        0x59s
        0xd8s
        0x33s
        0x4bs
        0x50s
        0x50s
        0x50s
        0x51s
        0x50s
        0x50s
        0x50s
        0x51s
        0x32s
        0x4as
        0x65s
        0x6es
        0x6as
        0x67s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x17ds
        0x18ds
        0x17cs
        0x189s
        0x17fs
        0x186s
        0x180s
        0x181s
        0x154s
        0x184s
        0x18es
        0x18fs
        0x167s
        0x190s
        0x17es
        0x183s
        0x15fs
        0x151s
        0x149s
        0x14ds
        0x14bs
        0x150s
        0x14fs
        0x14cs
        0x153s
        0x188s
        0x18bs
        0x193s
        0x141s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    iput-object p2, p0, Lcom/appsflyer/internal/a$a;->valueOf:Landroid/content/Context;

    invoke-direct {p0}, Lcom/appsflyer/internal/a$a;->valueOf()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/a$a;->$$a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private valueOf()Ljava/lang/String;
    .locals 15

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    new-array v8, v3, [I

    aput v5, v8, v5

    const/16 v9, 0xc

    aput v9, v8, v4

    const/4 v10, 0x7

    const/4 v11, 0x2

    aput v10, v8, v11

    const/4 v10, 0x6

    const/4 v12, 0x3

    aput v10, v8, v12

    const-string v10, "\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    const-string v13, "javascript:"

    invoke-static {v13}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v13

    xor-int/2addr v13, v4

    invoke-static {v8, v10, v13}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/appsflyer/internal/a$a;->AFDateFormat:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    cmp-long v10, v13, v0

    add-int/lit8 v10, v10, 0x7e

    const-string/jumbo v13, "\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v2, v2, v10, v13}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x61

    if-nez v8, :cond_0

    const/16 v13, 0x2a

    goto :goto_0

    :cond_0
    const/16 v13, 0x61

    :goto_0
    if-eq v13, v10, :cond_2

    sget v8, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v8, v8, 0x6f

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/2addr v8, v11

    const-string v10, "content:"

    const-string v13, "\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000"

    const/16 v14, 0x8

    if-nez v8, :cond_1

    :try_start_1
    new-array v8, v3, [I

    aput v9, v8, v5

    aput v14, v8, v4

    aput v5, v8, v11

    aput v5, v8, v12

    invoke-static {v10}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v9, v5

    invoke-static {v8, v13, v9}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    new-array v8, v3, [I

    aput v9, v8, v5

    aput v14, v8, v4

    aput v5, v8, v11

    aput v5, v8, v12

    invoke-static {v10}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v9, v4

    invoke-static {v8, v13, v9}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    new-array v7, v12, [Ljava/lang/String;

    aput-object v6, v7, v5

    aput-object v8, v7, v4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-static {v7}, Lcom/appsflyer/internal/a$a;->values([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x9

    if-le v7, v3, :cond_3

    const/16 v9, 0x9

    goto :goto_3

    :cond_3
    const/16 v9, 0x38

    :goto_3
    if-eq v9, v8, :cond_5

    :goto_4
    const/16 v8, 0x43

    if-ge v7, v3, :cond_4

    const/16 v9, 0x26

    goto :goto_5

    :cond_4
    const/16 v9, 0x43

    :goto_5
    if-eq v9, v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x31

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_5
    sget v8, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v8, v8, 0x4d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/2addr v8, v11

    :try_start_2
    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v9, v7, v0

    rsub-int v7, v9, 0x80

    const-string/jumbo v8, "\u0088\u0087\u0086"

    invoke-static {v2, v2, v7, v8}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const-string v8, ""

    invoke-static {v8, v5, v8, v5, v5}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v5

    xor-int/2addr v4, v5

    const-string v5, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v3, v5, v4}, Lcom/appsflyer/internal/a$a;->$$a([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string/jumbo v5, "\u0089\u0089\u0089\u0089\u0088\u0087\u0086"

    cmp-long v6, v3, v0

    add-int/lit8 v6, v6, 0x7e

    invoke-static {v2, v2, v6, v5}, Lcom/appsflyer/internal/a$a;->$$b(Ljava/lang/String;[IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x14
        0x2a
        0x0
        0x1e
    .end array-data
.end method

.method private static varargs values([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x35

    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    const/16 v5, 0x62

    goto :goto_1

    :cond_0
    const/16 v5, 0x35

    :goto_1
    if-eq v5, v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    sget v5, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v5, v5, 0x33

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v5, v5, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_4

    aget-object v7, p0, v6

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x47

    if-nez v5, :cond_2

    const/16 v9, 0x61

    goto :goto_4

    :cond_2
    const/16 v9, 0x47

    :goto_4
    if-eq v9, v8, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    xor-int/2addr v7, v5

    sget v5, Lcom/appsflyer/internal/a$a;->dateFormatUTC:I

    add-int/lit8 v5, v5, 0x11

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/appsflyer/internal/a$a;->getInstance:I

    rem-int/lit8 v5, v5, 0x2

    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v2
.end method
