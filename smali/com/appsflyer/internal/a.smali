.class public final Lcom/appsflyer/internal/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/a$a;
    }
.end annotation


# static fields
.field private static $$a:I = 0x1e

.field private static $$b:C = '\u6675'

.field private static AFDateFormat:C = '\ucb88'

.field private static AFDeepLinkManager:I = 0x1

.field private static dateFormatUTC:I = 0x0

.field private static valueOf:C = '\uffbb'

.field private static values:C = '\ubb6d'


# direct methods
.method private static $$a(ILjava/lang/String;IZI)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sget v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v2, v2, 0x2

    :goto_1
    check-cast p1, [C

    new-array v2, p4, [C

    sget v3, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/2addr v3, v1

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    sget v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v4, v4, 0x21

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    const/4 v4, 0x1

    :goto_4
    if-eq v4, v1, :cond_4

    aget-char v4, p1, v3

    ushr-int v4, p0, v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    aget-char v4, v2, v3

    sget v5, Lcom/appsflyer/internal/a;->$$a:I

    rem-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x54

    goto :goto_2

    :cond_4
    aget-char v4, p1, v3

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v2, v3

    aget-char v4, v2, v3

    sget v5, Lcom/appsflyer/internal/a;->$$a:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-lez p2, :cond_6

    sget p0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 p0, p0, 0x2

    new-array p0, p4, [C

    invoke-static {v2, v0, p0, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int p1, p4, p2

    invoke-static {p0, v0, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, p2, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    if-eqz p3, :cond_7

    const/4 p0, 0x0

    goto :goto_5

    :cond_7
    const/4 p0, 0x1

    :goto_5
    if-eq p0, v1, :cond_9

    new-array p0, p4, [C

    :goto_6
    if-ge v0, p4, :cond_8

    sub-int p1, p4, v0

    sub-int/2addr p1, v1

    aget-char p1, v2, p1

    aput-char p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move-object v2, p0

    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static $$a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 12

    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v3, :cond_2

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x59

    if-eqz p0, :cond_1

    const/16 v4, 0x59

    goto :goto_1

    :cond_1
    const/16 v4, 0x58

    :goto_1
    if-eq v4, v0, :cond_4

    goto/16 :goto_c

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_f

    :cond_4
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x20

    if-ne v0, v4, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge p1, v6, :cond_5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/4 v6, 0x1

    :goto_4
    if-eq v6, v3, :cond_6

    sget v6, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v6, v6, 0x51

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/2addr v6, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v5, 0x7

    add-int/2addr p1, v5

    invoke-virtual {v0, v5, p1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p0, 0x0

    move-wide v6, p0

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/16 v9, 0x57

    if-ge v5, v8, :cond_7

    const/16 v8, 0x4f

    goto :goto_6

    :cond_7
    const/16 v8, 0x57

    :goto_6
    if-eq v8, v9, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    :goto_7
    const/16 v5, 0x5e

    const-wide/16 v8, 0x64

    cmp-long v10, v6, v8

    if-lez v10, :cond_9

    const/16 v10, 0x5e

    goto :goto_8

    :cond_9
    const/16 v10, 0x20

    :goto_8
    if-eq v10, v5, :cond_d

    long-to-int v4, v6

    const/16 v5, 0x17

    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0xa

    const/16 v4, 0x28

    cmp-long v10, v6, v8

    if-gez v10, :cond_a

    const/4 v6, 0x2

    goto :goto_9

    :cond_a
    const/16 v6, 0x28

    :goto_9
    if-eq v6, v4, :cond_c

    sget v4, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v4, v4, 0x1f

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/2addr v4, v1

    const-string v1, "javascript:"

    const-string v6, "\u0000"

    if-nez v4, :cond_b

    const/16 v2, 0x4d

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    ushr-int/lit8 v4, v4, 0x2a

    rsub-int/lit8 v4, v4, 0x56

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result p0

    neg-int p0, p0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    shr-int v1, v3, v1

    invoke-static {v4, v6, p0, p1, v1}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_b
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x4e

    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result p0

    neg-int p0, p0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sub-int/2addr v3, v1

    invoke-static {v4, v6, p0, p1, v3}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    sget v5, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v10, v5, 0x55

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/2addr v10, v1

    if-nez v10, :cond_e

    add-long/2addr v6, v8

    goto :goto_b

    :cond_e
    rem-long/2addr v6, v8

    :goto_b
    add-int/lit8 v5, v5, 0x31

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/2addr v5, v1

    goto/16 :goto_7

    :cond_f
    :goto_c
    const-string/jumbo p0, "\ud968\u3225\u00d1\ub7aa\ue15d\u2c04\u5fbe\ucdb7\u28ad\u818c\uc4c2\u675d\u60f0\u0fb0\ucf6e\u6303\u067c\u15c6\ubcf1\uc469\u11ce\u908a\u11ce\u908a\u7e33\uac73\u389b\u41e8\u94d7\u2069\u6796\u836b\u3910\ud44d"

    invoke-static {p0}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static $$b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    const-string/jumbo v1, "\u0322\uf33b\u208a\u9df2\uabad\u5c51\uc41e\u60a7\u688e\ue7aa\u6521\u83b0\uad84\ub253\uf86f\u06ed\u1cd1\u2895\uabad\u5c51\u5579\u1f72\uf56a\u4c7e\u63f6\ua129\ude26\u219f\ub2fc\u7ea2\uc41e\u60a7\u8738\u2a7c\u8150\uc449\u119c\ud0c4\u17a9\u7ab1\u5f51\u6522\u0959\ue8fd\u9834\u73eb\u7f7e\u7fdb"

    const-string v2, "\u0008\uffdd\u0002\uffff\ufffd\u0005\r\u000f\u0007\uffec\uffff\u0000\u0006\uffff\ufffd\u000e\uffdf\u0012\ufffd\uffff\n\u000e\u0003\t"

    const-string v3, ""

    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_0
    const-class v11, Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v12

    cmp-long v14, v12, v4

    add-int/lit16 v14, v14, 0x85

    const-string v12, "\u0004\u0001\ufffb\ufff9\u000c\u0001\u0007\u0006\u000b\uffff\ufffd\u000c\uffe1\u0006\u000b\u000c\ufff9\u0004\u0004\ufffd\ufffc\uffd9\u0008\u0008"

    invoke-static {v8, v8}, Landroid/graphics/PointF;->length(FF)F

    move-result v13

    cmpl-float v13, v13, v8

    add-int/lit8 v13, v13, 0x9

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v15

    xor-int/2addr v15, v10

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v4, v16, -0x69

    invoke-static {v14, v12, v13, v15, v4}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v5, v9

    invoke-virtual {v11, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v9

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0xc

    if-eqz v4, :cond_1

    const/16 v4, 0x13

    goto :goto_0

    :cond_1
    const/16 v4, 0xc

    :goto_0
    if-eq v4, v5, :cond_3

    sget v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v4, v4, 0x6f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v4, v4, 0x2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v3

    invoke-static {v7}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    add-int/lit8 v4, v4, 0x54

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    cmpl-float v5, v5, v8

    invoke-static {v9}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v7

    xor-int/2addr v7, v10

    invoke-static {v9, v8, v8}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v11

    cmpl-float v8, v11, v8

    rsub-int/lit8 v8, v8, 0x18

    invoke-static {v4, v2, v5, v7, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/String;

    aput-object v0, v1, v9

    invoke-virtual {v3, v6, v2, v1}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    rsub-int v4, v13, 0x85

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v5

    cmpl-float v5, v5, v8

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v7

    xor-int/2addr v7, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v13

    cmp-long v8, v13, v11

    rsub-int/lit8 v8, v8, 0x19

    invoke-static {v4, v2, v5, v7, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/String;

    aput-object v0, v1, v9

    invoke-virtual {v3, v6, v2, v1}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v4

    invoke-static {v3, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    rsub-int v3, v3, 0x83

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v10

    const-string v7, "http://"

    invoke-static {v7}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v10

    invoke-static {v9, v9}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x18

    invoke-static {v3, v2, v5, v7, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/String;

    aput-object v0, v1, v9

    invoke-virtual {v4, v6, v2, v1}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static $$b(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    sget v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_1
    sget v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/2addr v2, v3

    :goto_2
    check-cast p0, [C

    array-length v2, p0

    new-array v2, v2, [C

    new-array v4, v3, [C

    const/4 v5, 0x0

    :goto_3
    array-length v6, p0

    const/16 v7, 0x1b

    if-ge v5, v6, :cond_3

    const/16 v6, 0x12

    goto :goto_4

    :cond_3
    const/16 v6, 0x1b

    :goto_4
    if-eq v6, v7, :cond_4

    sget v6, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v6, v6, 0x59

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/2addr v6, v3

    aget-char v6, p0, v5

    aput-char v6, v4, v0

    add-int/lit8 v6, v5, 0x1

    aget-char v7, p0, v6

    aput-char v7, v4, v1

    sget-char v7, Lcom/appsflyer/internal/a;->$$b:C

    sget-char v8, Lcom/appsflyer/internal/a;->valueOf:C

    sget-char v9, Lcom/appsflyer/internal/a;->values:C

    sget-char v10, Lcom/appsflyer/internal/a;->AFDateFormat:C

    invoke-static {v4, v7, v8, v9, v10}, Lcom/appsflyer/internal/ae;->values([CCCCC)V

    aget-char v7, v4, v0

    aput-char v7, v2, v5

    aget-char v7, v4, v1

    aput-char v7, v2, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_4
    aget-char p0, v2, v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    const/4 v2, 0x0

    const-string/jumbo v3, "\u805d\ue62f\u4a22\u1f06\u73b9\u4c68\ua863\ua85a\uc9e0\ue6be\u11ec\u86ad\uca37\u1487\u6ff2\uccb5"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v3}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :try_start_0
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v3}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "\u8afc\u428f\uc76c\uf570\u59c3\u801a\u5d94\u5ed6"

    invoke-static {v0}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "\u8c98\u4bee\u332a\ud762\u8392\uf4c9\u9b13\u630b\u18a8\ufdba\u561f\u94e2"

    invoke-static {v0}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, p0

    :cond_3
    sget p0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v0

    const-string/jumbo v1, "\u0cfa\u5926\uc177\u1793\u7687\u05c2\u27ed\u6391\u9c3d\u56c3\u17a9\u7ab1\u5f51\u6522\u0959\ue8fd\u9834\u73eb"

    invoke-static {v1}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\ufd5d\u9fb8\u208a\u9df2\uabad\u5c51\uc41e\u60a7\u5eae\u1fc7\u05fd\u6ec5\ude26\u219f\u7730\ud212\u0ffd\ub8f8\uc177\u1793\ufbbb\u20d1\u0bee\u0a8f\u5204\u20af\u8738\u2a7c\u8150\uc449\u119c\ud0c4\u17a9\u7ab1\u5f51\u6522\u0959\ue8fd\u9834\u73eb\u7f7e\u7fdb"

    invoke-static {v6}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v4, [Ljava/lang/String;

    aput-object p0, v3, v2

    invoke-virtual {v0, v5, v1, v3}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-object v5
.end method

.method public static AFDateFormat(Landroid/content/Context;J)Ljava/lang/String;
    .locals 21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/16 v7, 0x30

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "\u0000\u000f\uffc9\uffff\u0004\n\r\uffff\t\ufffc\r\u0000\u0002\ufffc\t\ufffc\uffe8\u0014\t\n\u0003\u000b\u0000\u0007\u0000\uffef\uffc9\u0014\t\n\u0003\u000b\u0000\u0007"

    cmp-long v13, v3, v5

    rsub-int v3, v13, 0x84

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    cmpl-float v4, v4, v8

    rsub-int/lit8 v4, v4, 0xb

    invoke-static {v11}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v5

    invoke-static {v9, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-static {v3, v12, v4, v5, v6}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const-string v4, "\u0000"

    const-string/jumbo v5, "\ua26b\u78be"

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    cmpl-float v3, v3, v8

    add-int/lit8 v3, v3, 0x4e

    invoke-static {v11, v11}, Landroid/view/View;->getDefaultSize(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v12

    invoke-static {v7}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x5

    invoke-static {v3, v4, v6, v12, v13}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/a;->AFDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/a;->AFDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    invoke-static {v11}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v12

    cmpl-float v12, v12, v8

    rsub-int/lit8 v12, v12, 0x4e

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v13

    cmpl-float v13, v13, v8

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v14

    invoke-static {v11, v11}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v15

    add-int/2addr v15, v10

    invoke-static {v12, v4, v13, v14, v15}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/a;->valueOf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    const/4 v13, 0x1

    :goto_3
    const/4 v14, 0x2

    const-wide/16 v15, 0x0

    if-eqz v13, :cond_4

    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move-object/from16 v7, p0

    goto :goto_5

    :cond_4
    sget v12, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v12, v12, 0x63

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/2addr v12, v14

    invoke-static {v9, v9, v11, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x4e

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v13

    cmpl-float v13, v13, v8

    invoke-static {v11}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v17

    xor-int/lit8 v8, v17, 0x1

    invoke-static {v11, v11}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v18

    cmp-long v7, v18, v15

    neg-int v7, v7

    invoke-static {v12, v4, v13, v8, v7}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :goto_5
    invoke-static {v7, v6}, Lcom/appsflyer/internal/a;->$$b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v6, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    const/16 v8, 0x10

    shr-int/2addr v3, v8

    rsub-int/lit8 v3, v3, 0x7c

    const-string/jumbo v12, "\ufffc\u0015\u0015\u000f\u000f\uffea\uffea\u0001\u0006\u0006\uffcf\uffef\uffef\uffcf\u001b\u001b\u001b\u001b"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v13

    add-int/lit8 v13, v13, 0x12

    const-string v18, "file://"

    invoke-static/range {v18 .. v18}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v18

    shr-int/lit8 v18, v18, 0x10

    rsub-int/lit8 v8, v18, 0x12

    invoke-static {v3, v12, v13, v10, v8}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFDateFormat;->getDataFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v6, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u85aa\u696e\u38ae\ud023\ub4cd\u50c9\u7afa\uddc9\u3871\u1b49\u33c3\u0c55\u31f1\u4970\uc090\u9b36\ud8a3\u0c7a\u87b8\u779f\u08c9\u580f\u9f84\u6103\ud8a3\u0c7a"

    invoke-static {v3}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/2addr v3, v14

    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_5
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v12

    cmp-long v3, v12, v15

    rsub-int/lit8 v3, v3, 0x4f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v8, v12, v15

    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    invoke-static {v11}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    cmp-long v18, v12, v15

    const/4 v12, 0x1

    add-int/lit8 v13, v18, 0x1

    invoke-static {v3, v4, v8, v10, v13}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v8, v8, 0x55

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/2addr v8, v14

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\ub33b\u8bdc\u38ae\ud023\ub4cd\u50c9\u7afa\uddc9\ud5da\u5690\ud83e\ueb42\u4a08\u7b07\ud83e\ueb42\ud65c\u7668\u3428\u7061\u3b14\u6b4d\u0abc\uaab1"

    invoke-static {v3}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_6
    invoke-static {v9, v11}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4e

    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    invoke-static {v8}, Landroid/webkit/URLUtil;->isCookielessProxyUrl(Ljava/lang/String;)Z

    move-result v13

    xor-int/2addr v13, v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    shr-int/lit8 v18, v18, 0x16

    rsub-int/lit8 v11, v18, 0x1

    invoke-static {v3, v4, v10, v13, v11}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uefff\u2b44\u38ae\ud023\ub4cd\u50c9\u7afa\uddc9\u3871\u1b49\u33c3\u0c55\uc884\u9fff\ucb8e\u7f88\u1fb0\u775b\u175c\u21e5\ua438\u3f6d"

    invoke-static {v3}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v3

    const-string v10, "http://"

    if-eqz v3, :cond_9

    sget v3, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v11, v3, 0x80

    sput v11, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/2addr v3, v14

    const/16 v11, 0xa

    if-eqz v3, :cond_7

    const/16 v3, 0xa

    goto :goto_8

    :cond_7
    const/16 v3, 0x48

    :goto_8
    if-eq v3, v11, :cond_8

    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_8
    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    :try_start_1
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_9
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v11

    cmp-long v3, v11, v15

    add-int/lit8 v3, v3, 0x4d

    invoke-static/range {v15 .. v16}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v8

    const/4 v11, 0x1

    rsub-int/lit8 v8, v8, 0x1

    invoke-static {v10}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x14

    shr-int/lit8 v13, v18, 0x6

    add-int/2addr v13, v11

    invoke-static {v3, v4, v8, v12, v13}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    add-int/lit16 v3, v3, 0x80

    const/4 v8, 0x0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    rsub-int/lit8 v8, v11, 0x4

    invoke-static {v9, v9}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v12

    const-string v14, "\u0011\u0003\r\u0000\u0008\u0011\ufff4\uffcd\u0013\u0004\r\uffcd\u0003\u0008\u000e"

    cmp-long v20, v12, v15

    const/16 v12, 0x10

    rsub-int/lit8 v13, v20, 0x10

    invoke-static {v3, v14, v8, v11, v13}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/a;->valueOf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    const/4 v12, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x1

    const/4 v12, 0x0

    :goto_b
    if-eq v12, v3, :cond_b

    invoke-static/range {v15 .. v16}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x4f

    const/16 v8, 0x30

    const/4 v11, 0x0

    invoke-static {v9, v8, v11, v11}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    neg-int v8, v8

    invoke-static {v10}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v10}, Landroid/graphics/PointF;->length(FF)F

    move-result v11

    cmpl-float v10, v11, v10

    add-int/2addr v10, v3

    invoke-static {v5, v4, v8, v9, v10}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    :goto_c
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_b
    invoke-static {v5}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/HashUtils;->toSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/HashUtils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x11

    const/4 v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1b

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/a;->$$a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    const-string/jumbo v0, "\ud968\u3225\u00d1\ub7aa\ue15d\u2c04\u5fbe\ucdb7\u28ad\u818c\uc4c2\u675d\u60f0\u0fb0\ucf6e\u6303\u067c\u15c6\ubcf1\uc469\u11ce\u908a\u11ce\u908a\u7e33\uac73\u389b\u41e8\u94d7\u2069\u6796\u836b\u3910\ud44d"

    invoke-static {v0}, Lcom/appsflyer/internal/a;->$$b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static AFDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    const/16 v1, 0x10

    shr-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4c

    const-string v2, ""

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x80

    const-string v4, "file://"

    invoke-static {v4}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v6

    const/16 v7, 0x16

    const-string v8, "\u0000"

    const/4 v9, 0x1

    cmpl-float v5, v6, v5

    rsub-int/lit8 v5, v5, 0x1

    invoke-static {v0, v8, v3, v4, v5}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    if-eq v0, v7, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    rsub-int/lit8 v3, v3, 0x63

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    shr-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x2

    invoke-static {v0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v5

    xor-int/2addr v5, v9

    const/16 v6, 0x30

    invoke-static {v2, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1

    const-string/jumbo v10, "\uffe9\u0017"

    invoke-static {v3, v10, v4, v5, v7}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length p0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p0, -0x1

    aget-object p0, v3, v5

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-string p0, "http://"

    cmp-long v7, v10, v12

    add-int/lit8 v7, v7, 0x4c

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v10

    shr-int/2addr v10, v1

    rsub-int/lit8 v10, v10, 0x1

    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v11

    shr-int/lit8 v1, v11, 0x10

    add-int/2addr v1, v9

    invoke-static {v7, v8, v10, p0, v1}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    :goto_1
    if-ge p0, v5, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_2

    aget-object p0, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget v1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v7, v1, 0x80

    sput v7, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v1, v1, 0x2

    aget-object v1, v3, p0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4c

    invoke-static {v12, v13}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    add-int/2addr v7, v9

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v10

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, -0x80

    invoke-static {v1, v8, v7, v10, v11}, Lcom/appsflyer/internal/a;->$$a(ILjava/lang/String;IZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private static valueOf(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3f

    if-nez v0, :cond_0

    const/16 v0, 0x63

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static valueOf(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    sget v0, Lcom/appsflyer/internal/a;->AFDeepLinkManager:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/a;->dateFormatUTC:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
