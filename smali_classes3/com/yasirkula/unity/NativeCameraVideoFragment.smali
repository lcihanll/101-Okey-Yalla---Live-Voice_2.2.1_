.class public Lcom/yasirkula/unity/NativeCameraVideoFragment;
.super Landroid/app/Fragment;
.source "NativeCameraVideoFragment.java"


# static fields
.field public static final AUTHORITY_ID:Ljava/lang/String; = "UNCV_AUTHORITY"

.field private static final CAMERA_VIDEO_CODE:I = 0x87719

.field public static final DEFAULT_CAMERA_ID:Ljava/lang/String; = "UNCV_DEF_CAMERA"

.field public static final MAX_DURATION_ID:Ljava/lang/String; = "UNCV_DURATION"

.field public static final MAX_SIZE_ID:Ljava/lang/String; = "UNCV_SIZE"

.field public static final QUALITY_ID:Ljava/lang/String; = "UNCV_QUALITY"

.field private static final VIDEO_NAME:Ljava/lang/String; = "VID_camera"

.field public static provideExtraOutputOnAndroidQ:Z = true


# instance fields
.field private fileTargetPath:Ljava/lang/String;

.field private lastVideoId:I

.field private final mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/yasirkula/unity/NativeCameraVideoFragment;->lastVideoId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yasirkula/unity/NativeCameraVideoFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeCameraMediaReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mediaReceiver"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/yasirkula/unity/NativeCameraVideoFragment;->lastVideoId:I

    iput-object p1, p0, Lcom/yasirkula/unity/NativeCameraVideoFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_id"

    const-string v2, "_size"

    const-string v3, "_data"

    const-string v4, "Exception:"

    const-string v5, "Unity"

    const v6, 0x87719

    move/from16 v7, p1

    if-eq v7, v6, :cond_0

    return-void

    :cond_0
    const/4 v6, -0x1

    const-string v10, ""

    move/from16 v11, p2

    if-ne v11, v6, :cond_a

    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/yasirkula/unity/NativeCameraUtils;->getPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    if-nez v11, :cond_2

    iget-object v6, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->fileTargetPath:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v11, Ljava/io/File;

    iget-object v6, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->fileTargetPath:Ljava/lang/String;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    iget v6, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->lastVideoId:I

    int-to-long v12, v6

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-eqz v6, :cond_9

    :try_start_0
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v15, "_id>?"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->lastVideoId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v9, v8

    const-string v17, "_id DESC"

    move-object/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    if-eqz v7, :cond_7

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v16, v12, v14

    if-nez v16, :cond_3

    :cond_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x2e

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    if-ge v0, v3, :cond_5

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v9, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_5

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v10

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VID_camera"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13, v3, v0}, Lcom/yasirkula/unity/NativeCameraUtils;->CopyFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/net/Uri;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v14, 0x1

    cmp-long v0, v12, v14

    if-lez v0, :cond_7

    :try_start_5
    sget-boolean v0, Lcom/yasirkula/unity/NativeCamera;->KeepGalleryReferences:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Trying to delete duplicate gallery item: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v9, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v8

    invoke-virtual {v0, v9, v11, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    move-object v11, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v11, v3

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    :try_start_6
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v9, v7

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v9, v7

    goto :goto_5

    :cond_7
    :goto_4
    move-object v9, v11

    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    goto :goto_6

    :catch_4
    move-exception v0

    const/4 v9, 0x0

    :goto_5
    :try_start_7
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :goto_7
    move-object v9, v11

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    :cond_b
    :goto_8
    iget-object v0, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;

    if-eqz v0, :cond_d

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    :cond_c
    invoke-interface {v0, v10}, Lcom/yasirkula/unity/NativeCameraMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_id"

    const-string v2, "Exception:"

    const-string v3, "Unity"

    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v4, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;

    const/4 v5, 0x0

    const v6, 0x87719

    const/4 v7, 0x0

    if-nez v4, :cond_0

    invoke-virtual {v1, v6, v5, v7}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v8, "UNCV_DEF_CAMERA"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "UNCV_AUTHORITY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "UNCV_QUALITY"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "UNCV_DURATION"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "UNCV_SIZE"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "_id DESC"

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_2

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->lastVideoId:I

    goto :goto_0

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->lastVideoId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v13, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v13, v7

    :goto_1
    :try_start_2
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v13, :cond_3

    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v13, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v13, Lcom/yasirkula/unity/NativeCameraVideoFragment;->provideExtraOutputOnAndroidQ:Z

    if-eqz v13, :cond_5

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1d

    if-lt v13, v14, :cond_5

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "VID_camera.mp4"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v13}, Lcom/yasirkula/unity/NativeCameraUtils;->ClearFileContents(Ljava/io/File;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->fileTargetPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v8, v13}, Lcom/yasirkula/unity/NativeCameraUtils;->SetOutputUri(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v6, v5, v7}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_5
    iput-object v7, v1, Lcom/yasirkula/unity/NativeCameraVideoFragment;->fileTargetPath:Ljava/lang/String;

    :goto_4
    const/4 v2, 0x1

    if-ltz v9, :cond_7

    if-gt v9, v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v9, 0x1

    :goto_5
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    if-lez v10, :cond_8

    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    const-wide/16 v8, 0x0

    cmp-long v3, v11, v8

    if-lez v3, :cond_9

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_9
    if-nez v4, :cond_a

    invoke-static {v0, v2}, Lcom/yasirkula/unity/NativeCameraUtils;->SetDefaultCamera(Landroid/content/Intent;Z)V

    goto :goto_6

    :cond_a
    if-ne v4, v2, :cond_b

    invoke-static {v0, v5}, Lcom/yasirkula/unity/NativeCameraUtils;->SetDefaultCamera(Landroid/content/Intent;Z)V

    :cond_b
    :goto_6
    sget-boolean v3, Lcom/yasirkula/unity/NativeCamera;->QuickCapture:Z

    if-eqz v3, :cond_c

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    :try_start_4
    sget-boolean v3, Lcom/yasirkula/unity/NativeCamera;->UseDefaultCameraApp:Z

    if-nez v3, :cond_e

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_d

    invoke-static {}, Lcom/yasirkula/unity/NativeCameraUtils;->IsXiaomiOrMIUI()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    const-string v3, ""

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    :cond_e
    :goto_7
    invoke-virtual {v1, v0, v6}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "No apps can perform this action."

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1, v6, v5, v7}, Lcom/yasirkula/unity/NativeCameraVideoFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_8
    return-void

    :catchall_1
    move-exception v0

    move-object v7, v13

    :goto_9
    if-eqz v7, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0
.end method
