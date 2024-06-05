.class public Lcom/yallagame/chatinterface/Music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static AUDIO_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "title_key"

    const-string v3, "artist"

    const-string v4, "artist_id"

    const-string v5, "artist_key"

    const-string v6, "composer"

    const-string v7, "album"

    const-string v8, "album_id"

    const-string v9, "album_key"

    const-string v10, "_display_name"

    const-string v11, "duration"

    const-string v12, "_size"

    const-string v13, "year"

    const-string v14, "track"

    const-string v15, "is_ringtone"

    const-string v16, "is_podcast"

    const-string v17, "is_alarm"

    const-string v18, "is_music"

    const-string v19, "is_notification"

    const-string v20, "mime_type"

    const-string v21, "_data"

    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yallagame/chatinterface/Music/MusicUtils;->AUDIO_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMusicList(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-string v0, "-"

    const-string v1, "duration"

    const-string v2, ""

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/yallagame/chatinterface/Music/MusicUtils;->AUDIO_KEYS:[Ljava/lang/String;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object v9, v4

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :cond_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v4, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/16 v5, 0xbb8

    if-ge p0, v5, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    sget-object p0, Lcom/yallagame/chatinterface/Util/Common;->UNITY_FAG:Ljava/lang/String;

    const-string v5, "duration < 3000"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/yallagame/chatinterface/Music/Song;

    invoke-direct {p0}, Lcom/yallagame/chatinterface/Music/Song;-><init>()V

    const-string v5, "title"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yallagame/chatinterface/Music/Song;->song:Ljava/lang/String;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yallagame/chatinterface/Music/Song;->singer:Ljava/lang/String;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yallagame/chatinterface/Music/Song;->album:Ljava/lang/String;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yallagame/chatinterface/Music/Song;->path:Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/yallagame/chatinterface/Music/Song;->duration:I

    const-string v5, "_size"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/yallagame/chatinterface/Music/Song;->size:J

    iget-wide v5, p0, Lcom/yallagame/chatinterface/Music/Song;->size:J

    const-wide/32 v7, 0x20000

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    iget-object v5, p0, Lcom/yallagame/chatinterface/Music/Song;->song:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/yallagame/chatinterface/Music/Song;->song:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    const/4 v6, 0x0

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/yallagame/chatinterface/Music/Song;->singer:Ljava/lang/String;

    aget-object v5, v5, v7

    iput-object v5, p0, Lcom/yallagame/chatinterface/Music/Song;->song:Ljava/lang/String;

    :cond_3
    sget-object v5, Lcom/yallagame/chatinterface/Util/Common;->UNITY_FAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/yallagame/chatinterface/Music/Song;->song:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_5
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_6

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v0, Lcom/yallagame/chatinterface/Util/Common;->UNITY_FAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    sget-object p0, Lcom/yallagame/chatinterface/Util/Common;->UNITY_FAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :goto_3
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method
