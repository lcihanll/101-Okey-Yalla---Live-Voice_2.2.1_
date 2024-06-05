.class public Lcom/appsflyer/BackgroundHttpTask;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final $$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/model/event/BackgroundEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/net/HttpURLConnection;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "AFDateFormat"

    const-string v2, ""

    iget-object v3, v1, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v3}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->urlString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v4}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->body()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v5}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->trackingStopped()Z

    move-result v5

    iget-object v6, v1, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v6}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->readResponse()Z

    move-result v6

    iget-object v7, v1, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v7}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->proxyMode()Z

    move-result v7

    iget-object v8, v1, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v8}, Lcom/appsflyer/AFEvent;->isEncrypt()Z

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v5, :cond_0

    return-object v10

    :cond_0
    const/4 v5, 0x1

    const/4 v11, 0x0

    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v7, :cond_2

    :try_start_1
    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "server_request"

    new-array v10, v5, [Ljava/lang/String;

    aput-object v4, v10, v11

    invoke-virtual {v13, v15, v14, v10}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v10, "UTF-8"

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v10, v10

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "call = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "; size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " byte"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v10, v5, :cond_1

    const-string v10, "s"

    goto :goto_0

    :cond_1
    move-object v10, v2

    :goto_0
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; body = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/w;->valueOf(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_2
    :goto_1
    :try_start_2
    const-string v4, "AppsFlyer"

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v10, 0x7530

    :try_start_3
    invoke-virtual {v4, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v4, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v10, "POST"

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v10, "Content-Type"

    if-eqz v8, :cond_3

    const-string v13, "application/octet-stream"

    goto :goto_2

    :cond_3
    const-string v13, "application/json"

    :goto_2
    invoke-virtual {v4, v10, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    if-eqz v8, :cond_6

    iget-object v8, v1, Lcom/appsflyer/BackgroundHttpTask;->$$a:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v8}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->key()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-array v13, v5, [Ljava/lang/Object;

    aput-object v8, v13, v11

    invoke-static {v11, v11}, Landroid/view/View;->resolveSize(II)I

    move-result v8

    int-to-char v8, v8

    invoke-static {v11}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    add-int/lit8 v14, v18, 0x18

    invoke-static/range {v16 .. v17}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v15

    rsub-int/lit8 v15, v15, 0x17

    invoke-static {v8, v14, v15}, Lcom/appsflyer/internal/b;->$$b(CII)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    new-array v14, v5, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v11

    invoke-virtual {v8, v0, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-array v13, v5, [Ljava/lang/Object;

    aput-object v9, v13, v11

    const/16 v9, 0x30

    invoke-static {v2, v9, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    rsub-int/lit8 v14, v14, -0x1

    int-to-char v14, v14

    invoke-static/range {v16 .. v17}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v15

    rsub-int/lit8 v15, v15, 0x17

    invoke-static {v2, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    add-int/lit8 v9, v9, 0x19

    invoke-static {v14, v15, v9}, Lcom/appsflyer/internal/b;->$$b(CII)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    new-array v14, v5, [Ljava/lang/Class;

    const-class v15, [B

    aput-object v15, v14, v11

    invoke-virtual {v9, v0, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4

    throw v6

    :cond_4
    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_5

    throw v6

    :cond_5
    throw v0

    :cond_6
    :goto_3
    invoke-virtual {v10, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/appsflyer/AppsFlyerLibCore;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-eqz v7, :cond_8

    invoke-static {}, Lcom/appsflyer/internal/ac;->AFDateFormat()Lcom/appsflyer/internal/ac;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "server_response"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    aput-object v2, v9, v5

    invoke-virtual {v6, v8, v7, v9}, Lcom/appsflyer/internal/ac;->AFDateFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_8
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_9

    const-string v0, "Status 200 ok"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v5, 0x0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v10, v4

    goto :goto_4

    :catchall_4
    move-exception v0

    const/4 v14, 0x0

    move-object v10, v14

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v14, v10

    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while calling "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v10

    :cond_9
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Connection "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_a

    const-string v3, "error"

    goto :goto_6

    :cond_a
    const-string v3, "call succeeded"

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v4
.end method

.method public execute()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appsflyer/BackgroundHttpTask$4;

    invoke-direct {v1, p0}, Lcom/appsflyer/BackgroundHttpTask$4;-><init>(Lcom/appsflyer/BackgroundHttpTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
