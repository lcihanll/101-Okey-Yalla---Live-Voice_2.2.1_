.class public Lcom/yasirkula/unity/NativeCamera;
.super Ljava/lang/Object;
.source "NativeCamera.java"


# static fields
.field public static KeepGalleryReferences:Z = false

.field public static PermissionFreeMode:Z = false

.field public static QuickCapture:Z = true

.field public static UseDefaultCameraApp:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CanAccessCamera(Landroid/content/Context;Lcom/yasirkula/unity/NativeCameraMediaReceiver;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "mediaReceiver",
            "isPictureMode"
        }
    .end annotation

    invoke-static {p0}, Lcom/yasirkula/unity/NativeCamera;->HasCamera(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "Unity"

    if-nez v0, :cond_0

    const-string p0, "Device has no registered cameras!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Lcom/yasirkula/unity/NativeCameraMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/yasirkula/unity/NativeCamera;->CheckPermission(Landroid/content/Context;Z)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const-string p0, "Can\'t access camera, permission denied!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Lcom/yasirkula/unity/NativeCameraMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p0}, Lcom/yasirkula/unity/NativeCameraUtils;->GetAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "Can\'t find ContentProvider, camera is inaccessible!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Lcom/yasirkula/unity/NativeCameraMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    return v1

    :cond_2
    return v0
.end method

.method public static CheckPermission(Landroid/content/Context;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "isPicturePermission"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/yasirkula/unity/NativeCamera;->PermissionFreeMode:Z

    const/4 v2, 0x0

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_3
    const-string p1, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_4
    :goto_0
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Lcom/yasirkula/unity/NativeCameraUtils;->IsPermissionDefinedInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public static GetImageProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "path"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/yasirkula/unity/NativeCameraUtils;->GetImageProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetVideoProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "path"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/yasirkula/unity/NativeCameraUtils;->GetVideoProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetVideoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZID)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "path",
            "savePath",
            "saveAsJpeg",
            "maxSize",
            "captureTime"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/yasirkula/unity/NativeCameraUtils;->GetVideoThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZID)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static HasCamera(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.hardware.camera.front"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static LoadImageAtPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "context",
            "path",
            "temporaryFilePath",
            "maxSize"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/yasirkula/unity/NativeCameraUtils;->LoadImageAtPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OpenSettings(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static RecordVideo(Landroid/content/Context;Lcom/yasirkula/unity/NativeCameraMediaReceiver;IIIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaReceiver",
            "defaultCamera",
            "quality",
            "maxDuration",
            "maxSize"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yasirkula/unity/NativeCamera;->CanAccessCamera(Landroid/content/Context;Lcom/yasirkula/unity/NativeCameraMediaReceiver;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UNCV_DEF_CAMERA"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/yasirkula/unity/NativeCameraUtils;->GetAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "UNCV_AUTHORITY"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UNCV_QUALITY"

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "UNCV_DURATION"

    invoke-virtual {v1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "UNCV_SIZE"

    invoke-virtual {v1, p2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p2, Lcom/yasirkula/unity/NativeCameraVideoFragment;

    invoke-direct {p2, p1}, Lcom/yasirkula/unity/NativeCameraVideoFragment;-><init>(Lcom/yasirkula/unity/NativeCameraMediaReceiver;)V

    invoke-virtual {p2, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static RequestPermission(Landroid/content/Context;Lcom/yasirkula/unity/NativeCameraPermissionReceiver;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "permissionReceiver",
            "isPicturePermission",
            "lastCheckResult"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/yasirkula/unity/NativeCamera;->CheckPermission(Landroid/content/Context;Z)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, v1}, Lcom/yasirkula/unity/NativeCameraPermissionReceiver;->OnPermissionResult(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    invoke-interface {p1, v0}, Lcom/yasirkula/unity/NativeCameraPermissionReceiver;->OnPermissionResult(I)V

    return-void

    :cond_1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NC_PictureMode"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lcom/yasirkula/unity/NativeCameraPermissionFragment;

    invoke-direct {p2, p1}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;-><init>(Lcom/yasirkula/unity/NativeCameraPermissionReceiver;)V

    invoke-virtual {p2, p3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static TakePicture(Landroid/content/Context;Lcom/yasirkula/unity/NativeCameraMediaReceiver;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaReceiver",
            "defaultCamera"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/yasirkula/unity/NativeCamera;->CanAccessCamera(Landroid/content/Context;Lcom/yasirkula/unity/NativeCameraMediaReceiver;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UNCP_DEF_CAMERA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/yasirkula/unity/NativeCameraUtils;->GetAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UNCP_AUTHORITY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/yasirkula/unity/NativeCameraPictureFragment;

    invoke-direct {p2, p1}, Lcom/yasirkula/unity/NativeCameraPictureFragment;-><init>(Lcom/yasirkula/unity/NativeCameraMediaReceiver;)V

    invoke-virtual {p2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
