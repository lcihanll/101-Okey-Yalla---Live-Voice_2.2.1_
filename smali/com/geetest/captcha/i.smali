.class final Lcom/geetest/captcha/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "/sdcard/.system_log.trace"

    const-string v1, "/sdcard/tencent/.DrvZPZQ"

    const-string v2, "/sdcard/alipay/.Wg83DS3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/captcha/i;->a:[Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-class v1, [B

    const-string v2, "gt_di"

    invoke-static {v0, v2}, Lcom/geetest/captcha/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/geetest/captcha/f;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "gee_id"

    const-string/jumbo v7, "utf-8"

    const-string v8, "VedaT=ZbPq0Zv7Do"

    const/4 v9, 0x2

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v10, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    sget-object v10, Lcom/geetest/captcha/i;->a:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {v4, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/geetest/captcha/l;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-static {v10, v8}, Lcom/geetest/captcha/e;->a([BLjava/lang/String;)[B

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v4}, Lcom/geetest/captcha/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    const/4 v4, 0x1

    :try_start_1
    new-instance v10, Ljava/io/FileReader;

    sget-object v11, Lcom/geetest/captcha/i;->a:[Ljava/lang/String;

    aget-object v12, v11, v4

    invoke-direct {v10, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/geetest/captcha/l;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    invoke-static {v12, v8}, Lcom/geetest/captcha/e;->a([BLjava/lang/String;)[B

    move-result-object v12

    new-instance v13, Lorg/json/JSONObject;

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v12}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v10}, Lcom/geetest/captcha/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v11, v11, v3

    invoke-static {v10, v11}, Lcom/geetest/captcha/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/util/Pair;

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v11

    :catch_1
    :try_start_2
    new-instance v10, Ljava/io/FileReader;

    sget-object v11, Lcom/geetest/captcha/i;->a:[Ljava/lang/String;

    aget-object v12, v11, v9

    invoke-direct {v10, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/geetest/captcha/l;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    invoke-static {v12, v8}, Lcom/geetest/captcha/e;->a([BLjava/lang/String;)[B

    move-result-object v12

    new-instance v13, Lorg/json/JSONObject;

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v12}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v10}, Lcom/geetest/captcha/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v12, v11, v3

    invoke-static {v10, v12}, Lcom/geetest/captcha/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v11, v11, v4

    invoke-static {v10, v11}, Lcom/geetest/captcha/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/util/Pair;

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v11

    :catch_2
    :try_start_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v11, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v6, "ver"

    const-string v12, "1.0.0"

    invoke-virtual {v11, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/String;

    invoke-static {}, Lcom/geetest/captcha/e;->a()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v11, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const-string v12, "amF2YXguY3J5cHRvLnNwZWMuSXZQYXJhbWV0ZXJTcGVj"

    invoke-static {v12}, Lcom/geetest/captcha/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Class;

    aput-object v1, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v11, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "amF2YXguY3J5cHRvLnNwZWMuU2VjcmV0S2V5U3BlYw=="

    invoke-static {v12}, Lcom/geetest/captcha/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Class;

    aput-object v1, v13, v3

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v8, v13, v3

    const-string v8, "AES"

    aput-object v8, v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v12, "amF2YXguY3J5cHRvLkNpcGhlcg=="

    invoke-static {v12}, Lcom/geetest/captcha/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "getInstance"

    new-array v14, v4, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v3

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    new-array v14, v4, [Ljava/lang/Object;

    const-string v15, "AES/CBC/PKCS5Padding"

    aput-object v15, v14, v3

    invoke-virtual {v13, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "init"

    const/4 v15, 0x3

    new-array v5, v15, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v5, v3

    const-class v16, Ljava/security/Key;

    aput-object v16, v5, v4

    const-class v16, Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v16, v5, v9

    invoke-virtual {v12, v14, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    aput-object v8, v14, v4

    aput-object v11, v14, v9

    invoke-virtual {v5, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "doFinal"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v1, v8, v3

    invoke-virtual {v12, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-virtual {v1, v13, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-static {v1, v7}, Lcom/geetest/captcha/l;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/geetest/captcha/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/geetest/captcha/i;->a:[Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Lcom/geetest/captcha/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, v0, v4

    invoke-static {v1, v2}, Lcom/geetest/captcha/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v0, v9

    invoke-static {v1, v0}, Lcom/geetest/captcha/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v10, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v5

    :goto_0
    return-object v0

    :cond_2
    :try_start_4
    invoke-static {v3, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0, v8}, Lcom/geetest/captcha/e;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v7}, Lcom/geetest/captcha/l;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    :catch_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/geetest/captcha/l;->a(Ljava/lang/String;Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
