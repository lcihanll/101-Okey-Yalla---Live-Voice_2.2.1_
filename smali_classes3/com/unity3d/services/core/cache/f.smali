.class Lcom/unity3d/services/core/cache/f;
.super Landroid/os/Handler;
.source "CacheThreadHandler.java"


# instance fields
.field private a:Lcom/unity3d/services/core/request/h;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/f;->b:Z

    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/f;->c:Z

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/unity3d/services/core/request/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_0

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    new-instance p4, Lcom/unity3d/services/core/request/h;

    const-string v2, "GET"

    move-object v0, p4

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/services/core/request/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object p4
.end method

.method private a(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "JJZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v5, p4

    invoke-virtual {v5, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Unity Ads cache: could not set file readable!"

    invoke-static {v6}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x6

    if-nez p9, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unity Ads cache: File "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes downloaded in "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v5

    sget-object v11, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v14, Lcom/unity3d/services/core/cache/d;->c:Lcom/unity3d/services/core/cache/d;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v3

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v7

    invoke-static/range {p11 .. p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v10, v6

    invoke-virtual {v5, v11, v14, v10}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-wide/from16 v12, p5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unity Ads cache: downloading of "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " stopped"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v5

    sget-object v11, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v14, Lcom/unity3d/services/core/cache/d;->d:Lcom/unity3d/services/core/cache/d;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v3

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v7

    invoke-static/range {p11 .. p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v10, v6

    invoke-virtual {v5, v11, v14, v10}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move/from16 v1, p7

    const-string v15, "Error closing stream"

    iget-boolean v2, v13, Lcom/unity3d/services/core/cache/f;->b:Z

    if-nez v2, :cond_5

    if-eqz v14, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_11

    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, " to "

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads cache: resuming download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads cache: start downloading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/device/b;->U()Z

    move-result v0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_2

    const-string v0, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static {v0}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v2, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lcom/unity3d/services/core/cache/c;->f:Lcom/unity3d/services/core/cache/c;

    aput-object v4, v3, v10

    aput-object v14, v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    iput-boolean v11, v13, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lcom/unity3d/services/core/request/e; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v4, p6

    :try_start_1
    invoke-direct {v13, v14, v0, v1, v4}, Lcom/unity3d/services/core/cache/f;->a(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/h;

    move-result-object v0

    iput-object v0, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    new-instance v1, Lcom/unity3d/services/core/cache/f$a;

    move/from16 v4, p5

    invoke-direct {v1, v13, v5, v4}, Lcom/unity3d/services/core/cache/f$a;-><init>(Lcom/unity3d/services/core/cache/f;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/request/h;->a(Lcom/unity3d/services/core/request/d;)V

    iget-object v0, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    invoke-virtual {v0, v6}, Lcom/unity3d/services/core/request/h;->a(Ljava/io/OutputStream;)J

    move-result-wide v16

    iput-boolean v10, v13, Lcom/unity3d/services/core/cache/f;->c:Z

    iget-object v0, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/h;->d()J

    move-result-wide v18

    iget-object v0, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/h;->m()Z

    move-result v0

    iget-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/h;->j()I

    move-result v20

    iget-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/h;->k()Ljava/util/Map;

    move-result-object v21
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/unity3d/services/core/request/e; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v22, v6

    move-wide/from16 v6, v16

    move-object v14, v8

    move-wide/from16 v8, v18

    move v10, v0

    const/16 v16, 0x1

    move/from16 v11, v20

    const/16 v17, 0x2

    move-object/from16 v12, v21

    :try_start_2
    invoke-direct/range {v1 .. v12}, Lcom/unity3d/services/core/cache/f;->a(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/unity3d/services/core/request/e; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v14, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object v1, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v1, v14

    const/4 v4, 0x3

    const/4 v6, 0x0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_1
    move-object v2, v0

    move-object/from16 v8, v22

    goto/16 :goto_f

    :catch_7
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_2
    move-object/from16 v8, v22

    goto/16 :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_3
    move-object/from16 v8, v22

    goto/16 :goto_9

    :catch_9
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_4
    move-object/from16 v8, v22

    goto/16 :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_5
    move-object/from16 v8, v22

    goto/16 :goto_b

    :catch_b
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_6
    move-object/from16 v8, v22

    goto/16 :goto_c

    :catch_c
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_7
    move-object/from16 v8, v22

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v2, v0

    move-object v8, v1

    goto/16 :goto_f

    :catch_d
    move-exception v0

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v8, v1

    :goto_8
    :try_start_4
    const-string v2, "Unknown error"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v9, Lcom/unity3d/services/core/cache/c;->q:Lcom/unity3d/services/core/cache/c;

    aput-object v9, v7, v6

    aput-object p1, v7, v16

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v17

    invoke-virtual {v2, v3, v5, v7}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iput-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    if-eqz v8, :cond_3

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    goto/16 :goto_e

    :catch_e
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_e

    :catch_f
    move-exception v0

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v8, v1

    :goto_9
    :try_start_6
    const-string v2, "Network error"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v9, Lcom/unity3d/services/core/cache/c;->h:Lcom/unity3d/services/core/cache/c;

    aput-object v9, v7, v6

    aput-object p1, v7, v16

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v17

    invoke-virtual {v2, v3, v5, v7}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iput-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    if-eqz v8, :cond_3

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    goto/16 :goto_e

    :catch_10
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_e

    :catch_11
    move-exception v0

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v8, v1

    :goto_a
    :try_start_8
    const-string v2, "Illegal state"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v9, Lcom/unity3d/services/core/cache/c;->i:Lcom/unity3d/services/core/cache/c;

    aput-object v9, v7, v6

    aput-object p1, v7, v16

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v17

    invoke-virtual {v2, v3, v5, v7}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iput-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    if-eqz v8, :cond_3

    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12

    goto/16 :goto_e

    :catch_12
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_e

    :catch_13
    move-exception v0

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v8, v1

    :goto_b
    :try_start_a
    const-string v2, "Couldn\'t request stream"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v9, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v9, v7, v6

    aput-object p1, v7, v16

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v17

    invoke-virtual {v2, v3, v5, v7}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    iput-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    if-eqz v8, :cond_3

    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_14

    goto/16 :goto_e

    :catch_14
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_e

    :catch_15
    move-exception v0

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v8, v1

    :goto_c
    :try_start_c
    const-string v2, "Malformed URL"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v9, Lcom/unity3d/services/core/cache/c;->g:Lcom/unity3d/services/core/cache/c;

    aput-object v9, v7, v6

    aput-object p1, v7, v16

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v17

    invoke-virtual {v2, v3, v5, v7}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    iput-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    if-eqz v8, :cond_3

    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_16

    goto :goto_e

    :catch_16
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_e

    :catch_17
    move-exception v0

    move-object v1, v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v8, v1

    :goto_d
    :try_start_e
    const-string v2, "Couldn\'t create target file"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-boolean v6, v13, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v9, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v9, v7, v6

    aput-object p1, v7, v16

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v17

    invoke-virtual {v2, v3, v5, v7}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    iput-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    if-eqz v8, :cond_3

    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_18

    goto :goto_e

    :catch_18
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v2, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v3, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v5, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_3
    :goto_e
    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    :goto_f
    iput-object v1, v13, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    if-eqz v8, :cond_4

    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_19

    goto :goto_10

    :catch_19
    move-exception v0

    move-object v1, v0

    invoke-static {v15, v1}, Lcom/unity3d/services/core/log/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object v0

    sget-object v3, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v5, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/unity3d/services/core/cache/c;->a:Lcom/unity3d/services/core/cache/c;

    aput-object v7, v4, v6

    aput-object p1, v4, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    invoke-virtual {v0, v3, v5, v4}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_4
    :goto_10
    throw v2

    :cond_5
    :goto_11
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unity3d/services/core/cache/f;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unity3d/services/core/cache/f;->a:Lcom/unity3d/services/core/request/h;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-virtual {p1}, Lcom/unity3d/services/core/request/h;->a()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/services/core/cache/f;->c:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "connectTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "readTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "progressInterval"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "append"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "There are headers left in data, reading them"

    invoke-static {v1}, Lcom/unity3d/services/core/log/a;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v8, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v8, v0

    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    if-nez v9, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    iput-boolean v2, p0, Lcom/unity3d/services/core/cache/f;->c:Z

    invoke-static {}, Lcom/unity3d/services/core/webview/a;->c()Lcom/unity3d/services/core/webview/a;

    move-result-object p1

    sget-object v5, Lcom/unity3d/services/core/webview/b;->f:Lcom/unity3d/services/core/webview/b;

    sget-object v6, Lcom/unity3d/services/core/cache/d;->e:Lcom/unity3d/services/core/cache/d;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/unity3d/services/core/cache/c;->l:Lcom/unity3d/services/core/cache/c;

    aput-object v8, v7, v2

    aput-object v3, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v7, v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v7, v1

    invoke-virtual {p1, v5, v6, v7}, Lcom/unity3d/services/core/webview/a;->a(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/unity3d/services/core/cache/f;->a(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;Z)V

    :goto_2
    return-void
.end method
